require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < Minitest::Test

  def setup

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Tuna")
    @fish4 = Fish.new("Cod")

    @river = River.new("Amazon", [@fish1,@fish2,@fish3,@fish4])

  end

  def test_name_of_river
    assert_equal("Amazon",@river.name)
  end 

  def test_fish_in_river
    assert_equal(4,@river.fish_in_river)
  end




end
