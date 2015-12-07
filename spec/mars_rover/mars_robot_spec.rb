require 'spec_helper'
RSpec.describe MarsRobot, type: 'PORO' do
  describe "#attr_accessors" do
    subject(:object){expect_any_instance_of(MarsRover)}
    it {is_expected.to respond_to :x_cordinal}
    it {is_expected.to respond_to :y_cordinal}
    it {is_expected.to respond_to :direction}
  end
end