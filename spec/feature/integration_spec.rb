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
        fill_in 'member_payment_status', with: 'Yes'
        click_on 'Create Member'
        
        visit members_path
        expect(page).to have_content(928006659)
        expect(page).to have_content('Harry')
        expect(page).to have_content('Potter')
        expect(page).to have_content('Senior')
        expect(page).to have_content('harrypotter@hotmail.com')
        expect(page).to have_content('Beginner')
        expect(page).to have_content('Yes')
    end
end

RSpec.describe 'Creating an Officer', type: :feature do
    scenario 'valid inputs' do
        visit new_officer_path
        fill_in 'officer_uin', with: 928006659
        fill_in 'officer_position', with: 'CEO'
        fill_in 'officer_password', with: 'p@ssword'

        visit officers_path
        expect(page).to have_content(928006659)
        expect(page).to have_content('CEO')
        expect(page).to have_content('p@ssword')
    end
end