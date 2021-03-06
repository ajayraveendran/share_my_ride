class Bike < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :bookings
  has_many :users, :through => :bookings
end