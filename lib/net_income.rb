require 'numerical_value'

# 純利益
class NetIncome < NumericalValue
  # @param [Integer] value (単位:百万円)
  def post_initialize(value)
    raise TypeError, '純利益は1以上で指定してください' unless value.positive?
  end
end
