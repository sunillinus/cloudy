require 'rails_helper'

RSpec.describe "app_dictionary_entries/show", :type => :view do
  before(:each) do
    @app_dictionary_entry = assign(:app_dictionary_entry, AppDictionaryEntry.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
