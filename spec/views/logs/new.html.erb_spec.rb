require 'rails_helper'

RSpec.describe "logs/new", type: :view do
  before(:each) do
    assign(:log, Log.new(
      log_id: 1,
      uin: 1,
      event_id: 1
    ))
  end

  it "renders new log form" do
    render

    assert_select "form[action=?][method=?]", logs_path, "post" do

      assert_select "input[name=?]", "log[log_id]"

      assert_select "input[name=?]", "log[uin]"

      assert_select "input[name=?]", "log[event_id]"
    end
  end
end
