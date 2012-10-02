require 'spec_helper'

describe "leaves/edit" do
  before(:each) do
    @leave = assign(:leave, stub_model(Leave))
  end

  it "renders the edit leave form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leaves_path(@leave), :method => "post" do
    end
  end
end
