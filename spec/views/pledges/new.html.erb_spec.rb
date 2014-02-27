require 'spec_helper'

describe "pledges/new" do
  before(:each) do
    assign(:pledge, stub_model(Pledge,
      :user_id => 1,
      :project_id => 1,
      :amount => 1
    ).as_new_record)
  end

  it "renders new pledge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pledges_path, "post" do
      assert_select "input#pledge_user_id[name=?]", "pledge[user_id]"
      assert_select "input#pledge_project_id[name=?]", "pledge[project_id]"
      assert_select "input#pledge_amount[name=?]", "pledge[amount]"
    end
  end
end
