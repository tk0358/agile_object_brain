require_relative './syain'

class Tanto < Syain
  def stand_up
    puts '担当は大慌てで立ち上がる'
  end

  def salary
    puts "私の給料は#{@kihonkyu}円です。" 
  end
end