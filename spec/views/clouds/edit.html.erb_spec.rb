require 'rails_helper'

RSpec.describe "clouds/edit", :type => :view do
  before(:each) do
    @cloud = assign(:cloud, Cloud.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit cloud form" do
    render

    assert_select "form[action=?][method=?]", cloud_path(@cloud), "post" do

      assert_select "input#cloud_name[name=?]", "cloud[name]"
    end
  end
end
