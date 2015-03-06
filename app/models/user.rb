class User < ActiveRecord::Base
  validates :first_name, presence: true

  validates :last_name, presence: true

  valid_email_regex = /\A[\w+\-.]+@\.?[a-z\d\-]+\.?[a-z\d\-]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: valid_email_regex },
  uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

  has_many :user_recipes
  has_many :reviews
  has_many :recipes, through: :user_recipes

  def full_name
    "#{first_name} #{last_name}"
  end

end
