class Admin < ActiveRecord::Base
  validates :name, presence: true

  devise :database_authenticatable, :recoverable, :registerable,
         :rememberable, :trackable, :validatable
end
