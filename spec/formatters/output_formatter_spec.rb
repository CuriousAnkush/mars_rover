require 'spec_helper'
RSpec.describe OutputFormatter, type: "lib" do
  subject(:format){ <<-FORMAT
<rover_name>
<x_cordinate> <y_cordinate> <direction>
FORMAT
}
  it {is_expected.to eql(OutputFormatter::OUTPUT_FORMAT)}
  it "formats the output" do
    expect(OutputFormatter.format("Columbus", "1", "2", "E")).to eql "Columbus\n1 2 E\n"
  end
end