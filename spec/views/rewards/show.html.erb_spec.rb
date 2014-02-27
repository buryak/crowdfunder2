require 'spec_helper'

describe "rewards/show" do
  before(:each) do
    @reward = assign(:reward, stub_model(Reward,
      :project_id => 1,
      :quantity => 2,
      :description => "MyText",
      :value => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
  end
end
