require 'rails_helper'

RSpec.describe "officers/edit", type: :view do
  before(:each) do
    @officer = assign(:officer, Officer.create!(
      uin: 1,
      position: "MyString",
      password: "MyString"
    ))
  end

  it "renders the edit officer form" do
    render

    assert_select "form[action=?][method=?]", officer_path(@officer), "post" do

      assert_select "input[name=?]", "officer[uin]"

      assert_select "input[name=?]", "officer[position]"

      assert_select "input[name=?]", "officer[password]"
    end
  end
end
