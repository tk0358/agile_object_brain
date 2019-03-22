require_relative './shain.rb'

# Tanto class inherited from Shain class for lesson 3.5
class Tanto < Shain
  def standup
    puts '担当は慌てて起立しました。'
  end

  def calculate_salary(kihonkyu)
    kihonkyu
  end
end