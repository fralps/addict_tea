require 'rails_helper'

RSpec.describe Tea, type: :model  do 
	context 'validations' do

		it 'should validate name length' do
			tea = Tea.new(name: 'T')
			expect(tea.valid?).to be false
			puts "Test validation name length OK 👍".green
		end

		it 'should validate infusion_time to be an integer' do
			tea = Tea.new(infusion_time: "test")
			expect(tea.valid?).to be false
			puts "Test validation infusion_time OK 👍".green
		end

		it 'should validate presence of location' do
			tea = Tea.new(location: "")
			expect(tea).not_to be_valid
			puts "Test validation location OK 👍".green
		end

		it 'should validate presencec of fermentation' do
			tea = Tea.new(fermentation: "")
			expect(tea).not_to be_valid
			puts "Test validation fermentation OK 👍".green
		end
	end 
end	