class Kindle < ActiveRecord::Base
  belongs_to :user

  validates :username, :user, presence: true

  delegate :email, to: :user, prefix: true
end
