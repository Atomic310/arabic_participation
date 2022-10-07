require 'rails_helper'

RSpec.describe "officers/index", type: :view do
  before(:each) do
    assign(:officers, [
      Officer.create!(
        uin: 2,
        position: "Position",
        password: "Password"
      ),
      Officer.create!(
        uin: 2,
        position: "Position",
        password: "Password"
      )
    ])
  end

  it "renders a list of officers" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Position".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
  end
end
