# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Infusion, type: :model do
  # --------- Validations test ------------
  context 'validations' do
    # ----------- Name validations -------------
    it 'should validate name length' do
      infusion = Infusion.new(name: 'T')
      expect(infusion.valid?).to be false
      puts 'Test validation name length OK 👍'.green
    end

    it 'should validate name presence' do
      infusion = Infusion.new(name: '')
      expect(infusion).not_to be_valid
      puts 'Test validation name presence OK 👍'.green
    end

    # ------------ Infusion Time validations ---------------
    it 'should validate infusion_time to be an integer' do
      infusion = Infusion.new(infusion_time: 'test')
      expect(infusion.valid?).to be false
      puts 'Test validation infusion_time OK 👍'.green
    end

    it 'should validate presence of infusion_time' do
      infusion = Infusion.new(infusion_time: '')
      expect(infusion).not_to be_valid
      puts 'Test validation infusion_time presence OK 👍'.green
    end

    # ------------ Location validations ---------------
    it 'should validate presence of location' do
      infusion = Infusion.new(location: '')
      expect(infusion).not_to be_valid
      puts 'Test validation location OK 👍'.green
    end

    it 'should validate location length' do
      infusion = Infusion.new(location: 'T')
      expect(infusion.valid?).to be false
      puts 'Test validation location length OK 👍'.green
    end

    # ------------- Brand validations --------------
    it 'should validate presence of brand' do
      infusion = Infusion.new(brand: '')
      expect(infusion).not_to be_valid
      puts 'Test validation brand OK 👍'.green
    end

    it 'should validate brand length' do
      infusion = Infusion.new(brand: 'T')
      expect(infusion.valid?).to be false
      puts 'Test validation brand length OK 👍'.green
    end

    # ------------ Description validations --------------
    it 'should validate presence of description' do
      infusion = Infusion.new(description: '')
      expect(infusion).not_to be_valid
      puts 'Test validation description OK 👍'.green
    end

    it 'should validate description length' do
      infusion = Infusion.new(description: 'Thé noir')
      expect(infusion.valid?).to be false
      puts 'Test validation description length OK 👍'.green
    end

    # ----------- Grade validations -------------
    it 'should validate presence of grade' do
      infusion = Infusion.new(grade: '')
      expect(infusion).not_to be_valid
      puts 'Test validation grade OK 👍'.green
    end

    it 'should validate grade length' do
      infusion = Infusion.new(grade: 'String')
      expect(infusion.valid?).to be false
      puts 'Test validation grade length OK 👍'.green
    end

    # ----------- User_id validations
    it 'should validate presence of user_id' do
      infusion = Infusion.new(user_id: '')
      expect(infusion).not_to be_valid
      puts 'Test validation user_id OK 👍'.green
    end

    it 'should validate user_id length' do
      infusion = Infusion.new(user_id: 'String')
      expect(infusion.valid?).to be false
      puts 'Test validation user_id length OK 👍'.green
    end
  end
end
