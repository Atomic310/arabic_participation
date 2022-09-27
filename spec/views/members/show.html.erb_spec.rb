require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      uin: 2,
      first_name: "First Name",
      last_name: "Last Name",
      email: "Email",
      classification: "Classification",
      arabic_lvl: "Arabic Lvl",
      payment_status: "Payment Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Classification/)
    expect(rendered).to match(/Arabic Lvl/)
    expect(rendered).to match(/Payment Status/)
  end
end
