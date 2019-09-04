require 'spec_helper'

RSpec.describe OutstandingShares do
  it { expect { described_class.new(0) }.to raise_error(TypeError) }
end
