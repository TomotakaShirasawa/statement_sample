require 'spec_helper'

RSpec.describe 'EPS' do
  before do
    # Softbankの例
    @ni = NetIncome.new(1_411_199)
    @os = OutstandingShares.new(1_100_660_365)
  end

  it('NetIncomeがEPSを返す') do
    eps = @ni.eps(@os)
    expect(eps.to_d.to_f).to be_within(0.01).of(1282.13) # to_fの方がチェックしやすい
  end

  it('OutstandingSharesがEPSを返す') do
    eps = @os.eps(@ni)
    expect(eps.to_d.to_f).to be_within(0.01).of(1282.13) # to_fの方がチェックしやすい
  end
end
