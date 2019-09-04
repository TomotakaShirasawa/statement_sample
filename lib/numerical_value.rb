# 数値の基底クラス
class NumericalValue
  # @param [BigDecimal, Integer] value
  def initialize(value)
    @value = value
    raise TypeError, '値をセットしてください' if @value.nil?

    post_initialize(@value)
  end

  def to_d
    BigDecimal(@value.to_s)
  end
end
