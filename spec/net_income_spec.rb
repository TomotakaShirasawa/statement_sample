require 'spec_helper'

RSpec.describe NetIncome do
  it { expect { described_class.new(0) }.to raise_error(TypeError) }
end
