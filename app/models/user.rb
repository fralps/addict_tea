# frozen_string_literal: true

class User < ApplicationRecord
  after_create :welcome_send

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: ' : Veuillez utiliser un email valide' }

  # Relations
  has_many :teas
  has_many :infusions

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
