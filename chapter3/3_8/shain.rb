require_relative 'salary'

# Shain class for lesson 3.8
class Shain
  include Salary

  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end

  def standup
    '社員はとりあえず起立する'
  end
end

# Tanto class inherited from Shain class for lesson 3.8
class Tanto < Shain
  def standup
    '担当は慌てて起立しました'
  end
end

# Shunin class inherited from Shain for lesson 3.8
class Shunin < Shain
  def standup
    '主任が素早く立ちました'
  end

  def kihon
    @kihonkyu * 2
  end

  def teate
    1
  end
end

# Bucho class inherited from Shain class for lesson 3.8
class Bucho < Shain
  def standup
    '部長がだるそうに立ちました'
  end

  def kihon
    @kihonkyu * 3
  end
end

# Torishimariyaku class for lesson 3.8
class Torishimariyaku < Shain
  def standup
    'ふんぞり返って立ち上がりました。'
  end

  def kihon
    @kihonkyu * 4
  end

  def teate
    2
  end
end