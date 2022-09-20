require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      uin: 1,
      first_name: "MyString",
      last_name: "MyString",
      classification: "MyString",
      email: "MyString",
      arabic_lvl: "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input[name=?]", "member[uin]"

      assert_select "input[name=?]", "member[first_name]"

      assert_select "input[name=?]", "member[last_name]"

      assert_select "input[name=?]", "member[classification]"

      assert_select "input[name=?]", "member[email]"

      assert_select "input[name=?]", "member[arabic_lvl]"
    end
  end
end
