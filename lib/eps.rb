require 'numerical_value'

# 一株当たり純利益
class EPS < NumericalValue
  # @param [BigDecimal] value (単位:円)
  def post_initialize(value)
    # 特に無し
  end
end
