class User < ApplicationRecord
  include Clearance::User

  validates_presence_of :username
  validates_uniqueness_of :username
end
