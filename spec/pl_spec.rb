require 'spec_helper'

RSpec.describe PL do
  subject { described_class.new(net_income: NetIncome.new(10_000)) }
  it { expect(subject.net_income.kind_of?(NetIncome)).to be(true) }
end
