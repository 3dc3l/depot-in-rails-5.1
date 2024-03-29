class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, presence: true, uniqueness: true
  # has_secure_password

  # after_destroy :ensure_an_admin_remains

  # class Error < StandardError
  # end

  # private
  #   def ensure_an_admin_remains
  #     if User.count.zero?
  #       raise Error.new "Can't delete last user"
  #     end
  #   end     
end
