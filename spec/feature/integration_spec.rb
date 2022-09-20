# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a member', type: :feature do
    scenario 'valid inputs' do
        visit new_member_path
        fill_in 'uin', with: 928006659
        fill_in 'first_name', with: 'Harry'
        fill_in 'last_name', with: 'Potter'
        fill_in 'classification', with: 'Senior'
        fill_in 'major', with: 'Gender Studies'
        fill_in 'email', with: 'harrypotter@hotmail.com'
        click_on 'Create Members'
        visit member_path
        expect(page).to have_content('harry potter')
    end
end