require 'spec_helper'

describe "leaves/index" do
  before(:each) do
    assign(:leaves, [
      stub_model(Leave),
      stub_model(Leave)
    ])
  end

  it "renders a list of leaves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
