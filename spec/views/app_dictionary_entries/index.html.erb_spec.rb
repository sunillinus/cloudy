require 'rails_helper'

RSpec.describe "app_dictionary_entries/index", :type => :view do
  before(:each) do
    assign(:app_dictionary_entries, [
      AppDictionaryEntry.create!(
        :name => "Name"
      ),
      AppDictionaryEntry.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of app_dictionary_entries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
