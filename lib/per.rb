require 'numerical_value'

# PER(株価収益率)
class PER < NumericalValue
  # @param [BigDecimal] value (単位:倍)
  def post_initialize(value)
    # 特に無し
  end
end
