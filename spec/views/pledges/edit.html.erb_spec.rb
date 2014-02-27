require 'spec_helper'

describe "pledges/edit" do
  before(:each) do
    @pledge = assign(:pledge, stub_model(Pledge,
      :user_id => 1,
      :project_id => 1,
      :amount => 1
    ))
  end

  it "renders the edit pledge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pledge_path(@pledge), "post" do
      assert_select "input#pledge_user_id[name=?]", "pledge[user_id]"
      assert_select "input#pledge_project_id[name=?]", "pledge[project_id]"
      assert_select "input#pledge_amount[name=?]", "pledge[amount]"
    end
  end
end
