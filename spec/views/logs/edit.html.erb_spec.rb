require 'rails_helper'

RSpec.describe "logs/edit", type: :view do
  before(:each) do
    @log = assign(:log, Log.create!(
      log_id: 1,
      uin: 1,
      event_id: 1
    ))
  end

  it "renders the edit log form" do
    render

    assert_select "form[action=?][method=?]", log_path(@log), "post" do

      assert_select "input[name=?]", "log[log_id]"

      assert_select "input[name=?]", "log[uin]"

      assert_select "input[name=?]", "log[event_id]"
    end
  end
end
