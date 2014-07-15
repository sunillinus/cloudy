require 'rails_helper'

RSpec.describe "apps/edit", :type => :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :name => "MyString",
      :app_dictionary_entry => nil,
      :cloud => nil
    ))
  end

  it "renders the edit app form" do
    render

    assert_select "form[action=?][method=?]", app_path(@app), "post" do

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_app_dictionary_entry_id[name=?]", "app[app_dictionary_entry_id]"

      assert_select "input#app_cloud_id[name=?]", "app[cloud_id]"
    end
  end
end
