require 'spec_helper'

describe "rewards/new" do
  before(:each) do
    assign(:reward, stub_model(Reward,
      :project_id => 1,
      :quantity => 1,
      :description => "MyText",
      :value => 1
    ).as_new_record)
  end

  it "renders new reward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rewards_path, "post" do
      assert_select "input#reward_project_id[name=?]", "reward[project_id]"
      assert_select "input#reward_quantity[name=?]", "reward[quantity]"
      assert_select "textarea#reward_description[name=?]", "reward[description]"
      assert_select "input#reward_value[name=?]", "reward[value]"
    end
  end
end
