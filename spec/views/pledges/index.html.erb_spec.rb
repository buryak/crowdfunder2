require 'spec_helper'

describe "pledges/index" do
  before(:each) do
    assign(:pledges, [
      stub_model(Pledge,
        :user_id => 1,
        :project_id => 2,
        :amount => 3
      ),
      stub_model(Pledge,
        :user_id => 1,
        :project_id => 2,
        :amount => 3
      )
    ])
  end

  it "renders a list of pledges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
