require 'rails_helper'

RSpec.describe "apps/show", :type => :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :name => "Name",
      :app_dictionary_entry => nil,
      :cloud => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
