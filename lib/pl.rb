# 損益計算書(Profit and Loss statement)クラス
class PL
  # 売上高
  # @return [Integer]
  attr_reader :sales

  def initialize(params)
    @sales = params[:sales]
  end
end
