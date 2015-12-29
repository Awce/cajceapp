require 'rails_helper'

RSpec.describe "works/show", type: :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      :name => "Name",
      :company => "Company",
      :progress => "9.99",
      :service => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
