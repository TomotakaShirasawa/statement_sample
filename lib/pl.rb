require 'sales'

# 損益計算書(Profit and Loss statement)クラス
class PL
  # 売上高
  # @return [Sales]
  attr_reader :sales

  def initialize(params)
    @sales = params.fetch(:sales)
  end
end
