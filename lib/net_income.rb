# 純利益
class NetIncome
  # @param [Integer] value (単位:百万円)
  def initialize(value)
    @value = value

    raise TypeError, '純利益は1以上で指定してください' unless @value.positive?
  end
end
