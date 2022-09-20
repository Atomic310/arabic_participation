# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a member', type: :feature do
    scenario 'valid inputs' do
        visit new_member_path
        fill_in 'member_uin', with: 928006659
        fill_in 'member_first_name', with: 'Harry'
        fill_in 'member_last_name', with: 'Potter'
        fill_in 'member_classification', with: 'Senior'
        fill_in 'member_email', with: 'harrypotter@hotmail.com'
        fill_in 'member_arabic_lvl', with: 'Beginner'
        click_on 'Create Member'
        
        visit members_path
        expect(page).to have_content(928006659)
        expect(page).to have_content('Harry')
        expect(page).to have_content('Potter')
        expect(page).to have_content('Senior')
        expect(page).to have_content('harrypotter@hotmail.com')
        expect(page).to have_content('Beginner')
    end
end