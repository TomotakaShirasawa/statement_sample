require 'spec_helper'
require 'pl'

RSpec.describe PL do
  subject { described_class.new(sales: Sales.new(10_000)) }
  it { expect(subject.sales.kind_of?(Sales)).to be(true) }
end
