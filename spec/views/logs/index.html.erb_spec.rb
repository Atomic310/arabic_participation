require 'rails_helper'

RSpec.describe "logs/index", type: :view do
  before(:each) do
    assign(:logs, [
      Log.create!(
        log_id: 2,
        uin: 3,
        event_id: 4
      ),
      Log.create!(
        log_id: 2,
        uin: 3,
        event_id: 4
      )
    ])
  end

  it "renders a list of logs" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
