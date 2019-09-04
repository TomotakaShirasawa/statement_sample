require 'numerical_value'

# 発行済み株数
class OutstandingShares < NumericalValue
  # @param [Integer] value (単位:株)
  def post_initialize(value)
    raise TypeError, '発行済み株数は1以上で指定してください' unless value.positive?
  end

  # EPSを計算して返す
  # @param [NetIncome] net_income
  def eps(net_income)
    net_income.eps(self)
  end
end
