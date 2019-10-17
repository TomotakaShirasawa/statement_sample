require 'numerical_value'

# 株価
class StockPrice < NumericalValue
  # @param [BigDecimal] value (単位:円)
  def post_initialize(value)
    raise TypeError, '株価は1以上で指定してください' unless value.positive?
  end
end
