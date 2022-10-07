require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        event_id: 2,
        title: "Title",
        description: "MyText",
        location: "Location",
        price: "9.99",
        type: 3
      ),
      Event.create!(
        event_id: 2,
        title: "Title",
        description: "MyText",
        location: "Location",
        price: "9.99",
        type: 3
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
