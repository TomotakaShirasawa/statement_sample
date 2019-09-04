require 'spec_helper'
require 'net_income'

RSpec.describe PL do
  subject { described_class.new(net_income: NetIncome.new(10_000)) }
  it { expect(subject.sales.kind_of?(Sales)).to be(true) }
end
