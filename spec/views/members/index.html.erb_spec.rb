require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        uin: 2,
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        classification: "Classification",
        arabic_lvl: "Arabic Lvl",
        payment_status: "Payment Status"
      ),
      Member.create!(
        uin: 2,
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        classification: "Classification",
        arabic_lvl: "Arabic Lvl",
        payment_status: "Payment Status"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Classification".to_s, count: 2
    assert_select "tr>td", text: "Arabic Lvl".to_s, count: 2
    assert_select "tr>td", text: "Payment Status".to_s, count: 2
  end
end
