require 'rails_helper'

RSpec.describe "clouds/show", :type => :view do
  before(:each) do
    @cloud = assign(:cloud, Cloud.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
