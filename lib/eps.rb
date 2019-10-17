require 'numerical_value'

# 一株当たり純利益
class EPS < NumericalValue
  # @param [BigDecimal] value (単位:円)
  def post_initialize(value)
    # 特に無し
  end

  # @param [StockPrice] stock_price 株価
  # @return [PER]
  def per(stock_price)
    raise TypeError, 'StockPriceを指定してください' unless stock_price.kind_of?(StockPrice)

    PER.new(stock_price.to_d.div(to_d))
  end
end
