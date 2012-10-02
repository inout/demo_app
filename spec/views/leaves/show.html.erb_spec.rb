require 'spec_helper'

describe "leaves/show" do
  before(:each) do
    @leave = assign(:leave, stub_model(Leave))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
