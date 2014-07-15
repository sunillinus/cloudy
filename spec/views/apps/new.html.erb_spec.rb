require 'rails_helper'

RSpec.describe "apps/new", :type => :view do
  before(:each) do
    assign(:app, App.new(
      :name => "MyString",
      :app_dictionary_entry => nil,
      :cloud => nil
    ))
  end

  it "renders new app form" do
    render

    assert_select "form[action=?][method=?]", apps_path, "post" do

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_app_dictionary_entry_id[name=?]", "app[app_dictionary_entry_id]"

      assert_select "input#app_cloud_id[name=?]", "app[cloud_id]"
    end
  end
end
