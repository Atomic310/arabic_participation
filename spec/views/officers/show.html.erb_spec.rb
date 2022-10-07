require 'rails_helper'

RSpec.describe "officers/show", type: :view do
  before(:each) do
    @officer = assign(:officer, Officer.create!(
      uin: 2,
      position: "Position",
      password: "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Password/)
  end
end
