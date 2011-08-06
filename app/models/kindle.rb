class Kindle < ActiveRecord::Base
  belongs_to :user

  validates :username, :user, presence: true
end
