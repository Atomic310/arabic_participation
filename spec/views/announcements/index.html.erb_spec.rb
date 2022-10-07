require 'rails_helper'

RSpec.describe "announcements/index", type: :view do
  before(:each) do
    assign(:announcements, [
      Announcement.create!(
        uin: 2,
        event_id: 3,
        comment: "MyText",
        rating: 4
      ),
      Announcement.create!(
        uin: 2,
        event_id: 3,
        comment: "MyText",
        rating: 4
      )
    ])
  end

  it "renders a list of announcements" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
