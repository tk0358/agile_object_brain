# 出発駅と到着駅の共通化（抽象化）

require 'test/unit'

class TestExpense < Test::Unit::TestCase

  def test_deptname
    dept = DepartureStation.new("Shinagawa")
    assert_equal("Shinagawa", dept.name)
  end

  def test_destname
    dest = DestinationStation.new("Shinjuku")
    assert_equal("Shinjuku", dest.name)
  end
end

class Station
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class DepartureStation < Station
end

class DestinationStation < Station
end