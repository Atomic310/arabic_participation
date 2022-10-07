require 'rails_helper'

RSpec.describe "announcements/show", type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
      uin: 2,
      event_id: 3,
      comment: "MyText",
      rating: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
  end
end
