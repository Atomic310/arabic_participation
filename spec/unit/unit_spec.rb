# location: sepc/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Member, type: :model do
    subject do
        described_class.new(uin: 928006659, first_name: 'Harry', last_name: 'Potter', email: 'harrypotterishot@hotmail.com',
                            classification: 'senior', arabic_lvl: 'Beginner', payment_status: 'Yes')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a uin' do
        subject.uin = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without first_name' do
        subject.first_name = nil
        expect(subject).not_to be_valid
    end
    
    it 'is not valid without last_name' do
        subject.last_name = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without email' do
        subject.email = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without classification' do
        subject.classification = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without arabic_lvl' do
        subject.arabic_lvl = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without payment_status' do
        subject.payment_status = nil
        expect(subject).not_to be_valid
    end
end