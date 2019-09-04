require 'numerical_value'

# 純利益
class NetIncome < NumericalValue
  # @param [Integer] value (単位:百万円)
  def post_initialize(value)
    raise TypeError, '純利益は1以上で指定してください' unless value.positive?
  end

  # EPSを計算して返す
  # @param [OutstandingShares] outstanding_shares
  def eps(outstanding_shares)
    eps = to_d * 1_000_000 / outstanding_shares.to_d
    EPS.new(eps)
  end
end
