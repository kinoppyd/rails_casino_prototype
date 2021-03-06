class Organization < ActiveRecord::Base
  has_many :games
  has_many :members
  has_many :users, through: :members
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  validates :name, length: { maximum: 50 }, presence: true
  validates :default_cashier_size, numericality: true, presence: true
  validates :owner_id, presence: true
end
