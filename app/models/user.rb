class User < ActiveRecord::Base
  validates :email, :username, :hashed_password, presence: :true
  validates :email, :username, uniqueness: :true
  validate  :password_present?

  has_many :prompts
  has_many :stories

  def self.authenticate(email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
    @user = User.find_by(email: email)
    return @user if @user && @user.password == password
    nil
  end

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  # prevent user from creating account with blank password
  private
  def password_blank?
    password == ""
  end

  def password_present?
    if password_blank?
      errors.add :password, "can't be blank"
    end
  end
end
