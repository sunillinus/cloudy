require 'rails_helper'

RSpec.describe "app_dictionary_entries/edit", :type => :view do
  before(:each) do
    @app_dictionary_entry = assign(:app_dictionary_entry, AppDictionaryEntry.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit app_dictionary_entry form" do
    render

    assert_select "form[action=?][method=?]", app_dictionary_entry_path(@app_dictionary_entry), "post" do

      assert_select "input#app_dictionary_entry_name[name=?]", "app_dictionary_entry[name]"
    end
  end
end
