require 'rails_helper'

RSpec.describe "app_dictionary_entries/new", :type => :view do
  before(:each) do
    assign(:app_dictionary_entry, AppDictionaryEntry.new(
      :name => "MyString"
    ))
  end

  it "renders new app_dictionary_entry form" do
    render

    assert_select "form[action=?][method=?]", app_dictionary_entries_path, "post" do

      assert_select "input#app_dictionary_entry_name[name=?]", "app_dictionary_entry[name]"
    end
  end
end
