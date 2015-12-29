require 'rails_helper'

RSpec.describe "works/new", type: :view do
  before(:each) do
    assign(:work, Work.new(
      :name => "MyString",
      :company => "MyString",
      :progress => "9.99",
      :service => nil
    ))
  end

  it "renders new work form" do
    render

    assert_select "form[action=?][method=?]", works_path, "post" do

      assert_select "input#work_name[name=?]", "work[name]"

      assert_select "input#work_company[name=?]", "work[company]"

      assert_select "input#work_progress[name=?]", "work[progress]"

      assert_select "input#work_service_id[name=?]", "work[service_id]"
    end
  end
end
