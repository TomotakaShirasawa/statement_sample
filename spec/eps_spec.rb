require 'spec_helper'

RSpec.describe 'EPS' do
  before do
    # Softbankの例
    @pl = PL.new(net_income: NetIncome.new(1_411_199))
    @os = OutstandingShares.new(1_100_660_365)
  end

  it('NetIncomeがEPSを返す') do
    eps = @pl.net_income.eps(@os)
    expect(eps.to_d.to_f).to be_within(0.01).of(1282.13) # to_fの方がチェックしやすい
  end

  it('OutstandingSharesがEPSを返す') do
    eps = @os.eps(@pl.net_income)
    expect(eps.to_d.to_f).to be_within(0.01).of(1282.13) # to_fの方がチェックしやすい
  end
end
