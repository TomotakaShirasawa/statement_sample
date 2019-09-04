require 'spec_helper'

RSpec.describe 'EPS' do
  it do
    # softbankの例
    pl = PL.new(net_income: NetIncome.new(1_411_199))
    os = OutstandingShares.new(1_100_660_365)
    eps = pl.net_income.to_d * 1_000_000 / os.to_d
    expect(eps.to_f).to be_within(0.01).of(1282.13) # to_fの方がチェックしやすい
  end
end
