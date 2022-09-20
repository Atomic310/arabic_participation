# location: sepc/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Member, type: :model do
    subject do
        described_class.new(uin: 928006659, first_name: 'Harry', last_name: 'Potter', email: 'harrypotterishot@hotmail.com',
                            classification: 'senior', arabic_lvl: 'Beginner')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a uin' do
        subject.uin = nil
        expect(subject).not_to be_valid
    end
end