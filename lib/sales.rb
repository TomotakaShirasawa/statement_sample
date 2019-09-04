# 売上高
class Sales
  # @param [Integer] value (単位:百万円)
  def initialize(value)
    @value = value

    raise TypeError, '売上高は1以上で指定してください' unless @value.positive?
  end
end
