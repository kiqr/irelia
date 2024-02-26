# frozen_string_literal: true

class User < ApplicationRecord
  include Teamable::Models::User

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
end
