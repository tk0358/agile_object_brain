require_relative './syain'

class Syunin < Syain
  def stand_up
    puts '主任は自信満々にすくっと立ち上がる'
  end

  def salary
    puts "私の給料は#{@kihonkyu*2+1}円です。" 
  end
end