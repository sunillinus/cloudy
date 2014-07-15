require 'rails_helper'

RSpec.describe "clouds/index", :type => :view do
  before(:each) do
    assign(:clouds, [
      Cloud.create!(
        :name => "Name"
      ),
      Cloud.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of clouds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
