require 'rails_helper'

RSpec.describe "announcements/new", type: :view do
  before(:each) do
    assign(:announcement, Announcement.new(
      uin: 1,
      event_id: 1,
      comment: "MyText",
      rating: 1
    ))
  end

  it "renders new announcement form" do
    render

    assert_select "form[action=?][method=?]", announcements_path, "post" do

      assert_select "input[name=?]", "announcement[uin]"

      assert_select "input[name=?]", "announcement[event_id]"

      assert_select "textarea[name=?]", "announcement[comment]"

      assert_select "input[name=?]", "announcement[rating]"
    end
  end
end
