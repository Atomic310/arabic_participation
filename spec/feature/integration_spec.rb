# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a member', type: :feature do
    let!(:officer) {Officer.create(uin: 928006659, email: 'harrypotter@hotmail.com', position: 'CEO', password: '123456')}
    
    scenario 'valid inputs' do
        # Log into officer session
        visit new_officer_session_path
        fill_in 'officer_email', with: 'harrypotter@hotmail.com'
        fill_in 'officer_password', with: '123456'
        click_on 'Log in'

        # create new member
        visit new_member_path
        fill_in 'member_uin', with: 928006659
        fill_in 'member_first_name', with: 'Harry'
        fill_in 'member_last_name', with: 'Potter'
        select('Senior', :from => 'member_classification')
        fill_in 'member_email', with: 'harrypotter@hotmail.com'
        select('Beginner', :from => 'member_arabic_lvl')
        select('Unpaid', :from => 'member_payment_status')
        click_on 'Create Member'
        
        # test to see if member was created successfully
        visit members_path
        expect(page).to have_content(928006659)
        expect(page).to have_content('Harry')
        expect(page).to have_content('Potter')
        expect(page).to have_content('Senior')
        expect(page).to have_content('harrypotter@hotmail.com')
        expect(page).to have_content('Beginner')
        expect(page).to have_content('Unpaid')
    end

    scenario 'invalid inputs: uin is not 9 digits' do
        # Log into officer session
        visit new_officer_session_path
        fill_in 'officer_email', with: 'harrypotter@hotmail.com'
        fill_in 'officer_password', with: '123456'
        click_on 'Log in'
        
        # try to create new member with invalid values
        visit new_member_path
        fill_in 'member_uin', with: 92800665
        fill_in 'member_first_name', with: 'Harry'
        fill_in 'member_last_name', with: 'Potter'
        select('Senior', :from => 'member_classification')
        fill_in 'member_email', with: 'harrypotter@hotmail.com'
        select('Beginner', :from => 'member_arabic_lvl')
        select('Unpaid', :from => 'member_payment_status')
        click_on 'Create Member'
        expect(page).to have_content("Uin is the wrong length")
    end
end

RSpec.describe 'Updating a Member', type: :feature do
    # this will create a member before each scenario is run
    let!(:member) {Member.create(uin: 928006659, first_name: 'Harry', last_name: 'Potter', email: 'harrypotter@hotmail.com', classification: 'Freshman', arabic_lvl: 'Beginner', payment_status: 'Unpaid')}
    let!(:officer) {Officer.create(uin: 928006659, email: 'harrypotter@hotmail.com', position: 'CEO', password: '123456')}

    scenario 'empty first_name' do
        # Log into officer session
        visit new_officer_session_path
        fill_in 'officer_email', with: 'harrypotter@hotmail.com'
        fill_in 'officer_password', with: '123456'
        click_on 'Log in'

        visit members_path
        click_on 'Edit'
        fill_in 'member_first_name', with: ''
        click_on 'Update Member'

        expect(page).to have_content("First name can't be blank")
    end

    scenario 'edit payment_status' do
        # Log into officer session
        visit new_officer_session_path
        fill_in 'officer_email', with: 'harrypotter@hotmail.com'
        fill_in 'officer_password', with: '123456'
        click_on 'Log in'
        
        visit members_path
        click_on 'Edit'
        select('Paid', :from => 'member_payment_status')
        click_on 'Update Member'

        expect(page).to have_content("Paid")
    end
end

RSpec.describe 'Deleting a Member', type: :feature do
    # this will create a member before each scenario is run
    let!(:member) {Member.create(uin: 928006659, first_name: 'Harry', last_name: 'Potter', email: 'harrypotter@hotmail.com', classification: 'Freshman', arabic_lvl: 'Beginner', payment_status: 'Unpaid')}
    let!(:officer) {Officer.create(uin: 928006659, email: 'harrypotter@hotmail.com', position: 'CEO', password: '123456')}

    scenario 'delete member' do
        # Log into officer session
        visit new_officer_session_path
        fill_in 'officer_email', with: 'harrypotter@hotmail.com'
        fill_in 'officer_password', with: '123456'
        click_on 'Log in'

        visit members_path
        click_on 'Destroy'

        expect(page).to have_content("")
    end
end

# RSpec.describe 'Reset all members\' Payment Status', type: :feature do
#     # this will create a member before each scenario is run
#     let!(:member) {Member.create(uin: 928006659, first_name: 'Harry', last_name: 'Potter', email: 'harrypotter@hotmail.com', classification: 'Freshman', arabic_lvl: 'Beginner', payment_status: 'Paid')}
#     let!(:officer) {Officer.create(uin: 928006659, email: 'harrypotter@hotmail.com', position: 'CEO', password: '123456')}

#     scenario 'Test Reset Function' do
#         # Log into officer session
#         visit new_officer_session_path
#         fill_in 'officer_email', with: 'harrypotter@hotmail.com'
#         fill_in 'officer_password', with: '123456'
#         click_on 'Log in'

#         # Click on the reset button
#         visit members_path
#         click_on reset_path
#         click_on 'Ok'
        
#         # Check to see if it updated the member
#         visit members_path
#         expect(page).to have_content("Unpaid")
#     end
# end