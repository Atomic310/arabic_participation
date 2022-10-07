require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      event_id: 2,
      title: "Title",
      description: "MyText",
      location: "Location",
      price: "9.99",
      type: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
  end
end
