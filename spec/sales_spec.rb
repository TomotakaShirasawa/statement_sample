require 'spec_helper'
require 'sales'

RSpec.describe Sales do
  it { expect { described_class.new(0) }.to raise_error(TypeError) }
end
