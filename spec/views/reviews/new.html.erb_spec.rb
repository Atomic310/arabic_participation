require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      member_id: 1,
      event_id: 1,
      comment: "MyText",
      rating: 1
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[member_id]"

      assert_select "input[name=?]", "review[event_id]"

      assert_select "textarea[name=?]", "review[comment]"

      assert_select "input[name=?]", "review[rating]"
    end
  end
end
