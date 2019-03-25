require_relative 'shain'

# ShainFactory class for lesson 3.8
class ShainFactory
  def create(type, kihonkyu)
    eval "#{type}.new(kihonkyu)"
  end
end

# リファクタリング前のcreateメソッド
# class ShainFactory
#   def create(type, kihonkyu)
#     shain = nil
#     if type == 'Tanto'
#       shain = Tanto.new(kihonkyu)
#     elsif type == 'Shunin'
#       shain = Shunin.new(kihonkyu)
#     elsif type == 'Bucho'
#       shain = Bucho.new(kihonkyu)
#     elsif type == 'Torishimariyaku'
#       shain = Torishimariyaku.new(kihonkyu)
#     end
#     shain
#   end
# end