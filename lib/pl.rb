require 'net_income'

# 損益計算書(Profit and Loss statement)クラス
class PL
  # 純利益
  # @return [NetIncome]
  attr_reader :net_income

  def initialize(params)
    @net_income = params.fetch(:net_income)
  end
end
