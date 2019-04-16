class User < ApplicationRecord
  has_many :assignments
  has_many :incentives
  include Clearance::User

  validates_presence_of :username
  validates_uniqueness_of :username
end
