require 'rails_helper'

RSpec.describe "logs/show", type: :view do
  before(:each) do
    @log = assign(:log, Log.create!(
      log_id: 2,
      uin: 3,
      event_id: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
