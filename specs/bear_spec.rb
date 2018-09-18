require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class TestBear < Minitest::Test

  def setup
    @yogi = Bear.new("Yogi","Black Bear",[])

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Tuna")
    @fish4 = Fish.new("Cod")

    @river = River.new("Amazon", [@fish1,@fish2,@fish3,@fish4])

  end

  def test_name_of_bear
    assert_equal("Yogi", @yogi.name)
  end

  def test_amount_of_fish_eaten
    assert_equal(0,@yogi.total_fish_eaten)
  end

  def test_bear_eats_fish
    @yogi.bear_eats_fish(@yogi,@river,@fish1)
    result = @river.fish_in_river
    result2 = @yogi.total_fish_eaten
    assert_equal(3,result)
    assert_equal(1,result2)
  end

  def test_bear_loses_fish
    @yogi.bear_eats_fish(@yogi,@river,@fish2)
    @yogi.bear_eats_fish(@yogi,@river,@fish3)
    @yogi.bear_eats_fish(@yogi,@river,@fish1)
    result = @yogi.total_fish_eaten
    @yogi.bear_loses_fish(@yogi,@river,@fish1)
    result2 = @yogi.total_fish_eaten
    assert_equal(3,result)
    assert_equal(2,result2)
  end

  def test_bear_roar
    result = @yogi.roar
    assert_equal("Rawwwwwwr!",result)
  end




end
