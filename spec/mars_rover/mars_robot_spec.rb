require 'spec_helper'
RSpec.describe MarsRobot, type: 'PORO' do
  describe "#attr_accessors" do
    it {is_expected.to respond_to :x_cordinal}
    it {is_expected.to respond_to :y_cordinal}
    it {is_expected.to respond_to :direction}
  end
end