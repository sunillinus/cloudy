require 'rails_helper'

RSpec.describe "clouds/new", :type => :view do
  before(:each) do
    assign(:cloud, Cloud.new(
      :name => "MyString"
    ))
  end

  it "renders new cloud form" do
    render

    assert_select "form[action=?][method=?]", clouds_path, "post" do

      assert_select "input#cloud_name[name=?]", "cloud[name]"
    end
  end
end
