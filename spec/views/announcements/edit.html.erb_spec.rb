require 'rails_helper'

RSpec.describe "announcements/edit", type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
      uin: 1,
      event_id: 1,
      comment: "MyText",
      rating: 1
    ))
  end

  it "renders the edit announcement form" do
    render

    assert_select "form[action=?][method=?]", announcement_path(@announcement), "post" do

      assert_select "input[name=?]", "announcement[uin]"

      assert_select "input[name=?]", "announcement[event_id]"

      assert_select "textarea[name=?]", "announcement[comment]"

      assert_select "input[name=?]", "announcement[rating]"
    end
  end
end
