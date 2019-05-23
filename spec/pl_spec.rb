require 'spec_helper'
require 'pl'

RSpec.describe PL do
  subject { described_class.new(sales: 10_000) }
  it { expect(subject.sales).to eq(10_000) }
end
