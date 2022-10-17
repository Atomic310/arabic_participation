require 'rails_helper'

RSpec.describe "officers/new", type: :view do
  before(:each) do
    assign(:officer, Officer.new(
      uin: 1,
      position: "MyString",
      password: "MyString"
    ))
  end

  it "renders new officer form" do
    render

    assert_select "form[action=?][method=?]", officers_path, "post" do

      assert_select "input[name=?]", "officer[uin]"

      assert_select "input[name=?]", "officer[position]"

      assert_select "input[name=?]", "officer[password]"
    end
  end
end
