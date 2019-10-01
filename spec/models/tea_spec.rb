require 'rails_helper'

RSpec.describe Tea, type: :model  do 
	context 'validations' do

		# ----------- Name validations -------------
		it 'should validate name length' do
			tea = Tea.new(name: 'T')
			expect(tea.valid?).to be false
			puts "Test validation name length OK 👍".green
		end

		it 'should validate name presence' do
			tea = Tea.new(name: '')
			expect(tea).not_to be_valid
			puts "Test validation name presence OK 👍".green
		end

		# ------------ Infusion Time validations ---------------
		it 'should validate infusion_time to be an integer' do
			tea = Tea.new(infusion_time: "test")
			expect(tea.valid?).to be false
			puts "Test validation infusion_time OK 👍".green
		end

		it 'should validate presence of infusion_time' do
			tea = Tea.new(infusion_time: "")
			expect(tea).not_to be_valid
			puts "Test validation infusion_time presence OK 👍".green
		end

		# ------------ Location validations ---------------
		it 'should validate presence of location' do
			tea = Tea.new(location: "")
			expect(tea).not_to be_valid
			puts "Test validation location OK 👍".green
		end

		it 'should validate location length' do
			tea = Tea.new(location: 'T')
			expect(tea.valid?).to be false
			puts "Test validation location length OK 👍".green
		end

		# ------------- Fermentation validations --------------
		it 'should validate presence of fermentation' do
			tea = Tea.new(fermentation: "")
			expect(tea).not_to be_valid
			puts "Test validation fermentation OK 👍".green
		end

		# ------------- Brand validations --------------
		it 'should validate presence of brand' do
			tea = Tea.new(brand: "")
			expect(tea).not_to be_valid
			puts "Test validation brand OK 👍".green
		end

		it 'should validate brand length' do
			tea = Tea.new(brand: 'T')
			expect(tea.valid?).to be false
			puts "Test validation brand length OK 👍".green
		end

	end 
end	