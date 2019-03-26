# 料金票オブジェクトのテストと料金表クラス

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

  def test_fare
    dept = DepartureStation.new("Shinagawa")
    dest = DestinationStation.new("Shinjuku")
    fare = Fare.new(200, dept, dest)
    assert_equal(200, fare.fare)
  end

  def test_find_fare
    dept = DepartureStation.new("Shinagawa")
    dest = DestinationStation.new("Shinjuku")
    fare = Fare.new(200, dept, dest)
    fare_table = FareTable.new
    fare_table.add(fare)

    assert_equal(200, fare_table.find_fare(dept, dest))
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

class Fare
  attr_accessor :fare, :dept, :dest

  def initialize(fare, dept, dest)
    @fare = fare
    @dept = dept
    @dest = dest
  end
end

class FareTable
  def initialize
    @fare_table = []
  end

  def add(fare)
    @fare_table << fare
  end

  def find_fare(dept, dest)
    fare_find = @fare_table.find do |fare|
      fare.dept == dept && fare.dest == dest
    end
    fare_find.fare
  end
end