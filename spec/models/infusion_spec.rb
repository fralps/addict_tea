# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Infusion, type: :model do

  # --------- Validations test ------------
  context 'validations' do

    describe 'validations' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name) }
      it { should validate_presence_of(:infusion_time) }
      it { should validate_presence_of(:location) }
      it { should validate_presence_of(:brand) }
      it { should validate_length_of(:brand) }
      it { should validate_presence_of(:description) }
      it { should validate_length_of(:description) }
      it { should validate_presence_of(:grade) }
      it { should validate_presence_of(:user_id) }
      puts "All validations tests for Infusion model OK 👍".green
    end
  end

   # ------------ Association tests -------------
  context 'associations' do
    describe 'associations' do
      it { should belong_to(:user) }
      puts "All associations tests for Infusion model OK 👍".green
    end
  end
end


