# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tea, type: :model do
  # --------- Validations test ------------
  context 'validations' do
    # ----------- Name validations -------------
    it 'should validate name length' do
      tea = Tea.new(name: 'T')
      expect(tea.valid?).to be false
      puts 'Test validation name length OK 👍'.green
    end

    it 'should validate name presence' do
      tea = Tea.new(name: '')
      expect(tea).not_to be_valid
      puts 'Test validation name presence OK 👍'.green
    end

    # ------------ Infusion Time validations ---------------
    it 'should validate infusion_time to be an integer' do
      tea = Tea.new(infusion_time: 'test')
      expect(tea.valid?).to be false
      puts 'Test validation infusion_time OK 👍'.green
    end

    it 'should validate presence of infusion_time' do
      tea = Tea.new(infusion_time: '')
      expect(tea).not_to be_valid
      puts 'Test validation infusion_time presence OK 👍'.green
    end

    # ------------ Location validations ---------------
    it 'should validate presence of location' do
      tea = Tea.new(location: '')
      expect(tea).not_to be_valid
      puts 'Test validation location OK 👍'.green
    end

    it 'should validate location length' do
      tea = Tea.new(location: 'T')
      expect(tea.valid?).to be false
      puts 'Test validation location length OK 👍'.green
    end

    # ------------- Fermentation validations --------------
    it 'should validate presence of fermentation' do
      tea = Tea.new(fermentation: '')
      expect(tea).not_to be_valid
      puts 'Test validation fermentation OK 👍'.green
    end

    # ------------- Brand validations --------------
    it 'should validate presence of brand' do
      tea = Tea.new(brand: '')
      expect(tea).not_to be_valid
      puts 'Test validation brand OK 👍'.green
    end

    it 'should validate brand length' do
      tea = Tea.new(brand: 'T')
      expect(tea.valid?).to be false
      puts 'Test validation brand length OK 👍'.green
    end

    # ------------ Description validations --------------
    it 'should validate presence of description' do
      tea = Tea.new(description: '')
      expect(tea).not_to be_valid
      puts 'Test validation description OK 👍'.green
    end

    it 'should validate description length' do
      tea = Tea.new(description: 'Thé noir')
      expect(tea.valid?).to be false
      puts 'Test validation description length OK 👍'.green
    end

    # ----------- Grade validations -------------
    it 'should validate presence of grade' do
      tea = Tea.new(grade: '')
      expect(tea).not_to be_valid
      puts 'Test validation grade OK 👍'.green
    end

    it 'should validate grade length' do
      tea = Tea.new(grade: 'String')
      expect(tea.valid?).to be false
      puts 'Test validation grade length OK 👍'.green
    end

    # ----------- User_id validations
    it 'should validate presence of user_id' do
      tea = Tea.new(user_id: '')
      expect(tea).not_to be_valid
      puts 'Test validation user_id OK 👍'.green
    end

    it 'should validate user_id length' do
      tea = Tea.new(user_id: 'String')
      expect(tea.valid?).to be false
      puts 'Test validation user_id length OK 👍'.green
    end
  end
end
