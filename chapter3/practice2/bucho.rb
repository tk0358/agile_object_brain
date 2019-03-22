require_relative './syain'

class Bucho < Syain
  def stand_up
    puts '部長はゆっくり立ち上がる'
  end

  def salary
    puts "私の給料は#{@kihonkyu*3}円です。" 
  end
end