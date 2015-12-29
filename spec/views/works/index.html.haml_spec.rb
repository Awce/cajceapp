require 'rails_helper'

RSpec.describe "works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        :name => "Name",
        :company => "Company",
        :progress => "9.99",
        :service => nil
      ),
      Work.create!(
        :name => "Name",
        :company => "Company",
        :progress => "9.99",
        :service => nil
      )
    ])
  end

  it "renders a list of works" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
