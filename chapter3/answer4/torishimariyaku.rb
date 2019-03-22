require_relative 'shain'

# Torishimariyaku class for lesson 3.7
class Torishimariyaku < Shain
  def standup
    'ふんぞり返って立ち上がりました。'
  end

  def calculate_salary(kihonkyu)
    kihonkyu * 4 + 2
  end
end