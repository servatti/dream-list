class User < ActiveRecord::Base
  has_many :wishes

  validates :email, uniqueness: true
  validates :token, uniqueness: true

  def self.login_with(email, token)
    user = User.find_or_create_by(email: email)
    user.update(token: token) if user
    user.reload
  end
end
