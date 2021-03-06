class User < ActiveRecord::Base
  has_secure_password
  has_many :user_groups, dependent: :destroy
  has_many :groups, through: :user_groups
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :electric_bills
  has_many :gas_bills
  has_many :water_bills

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}
end
