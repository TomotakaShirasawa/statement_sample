require 'spec_helper'
require 'net_income'

RSpec.describe NetIncome do
  it { expect { described_class.new(0) }.to raise_error(TypeError) }
end
