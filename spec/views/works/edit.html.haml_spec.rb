require 'rails_helper'

RSpec.describe "works/edit", type: :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      :name => "MyString",
      :company => "MyString",
      :progress => "9.99",
      :service => nil
    ))
  end

  it "renders the edit work form" do
    render

    assert_select "form[action=?][method=?]", work_path(@work), "post" do

      assert_select "input#work_name[name=?]", "work[name]"

      assert_select "input#work_company[name=?]", "work[company]"

      assert_select "input#work_progress[name=?]", "work[progress]"

      assert_select "input#work_service_id[name=?]", "work[service_id]"
    end
  end
end
