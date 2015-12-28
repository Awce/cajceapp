require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      :name => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input#service_name[name=?]", "service[name]"

      assert_select "textarea#service_description[name=?]", "service[description]"

      assert_select "input#service_user_id[name=?]", "service[user_id]"
    end
  end
end
