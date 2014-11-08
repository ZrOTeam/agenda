class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # for protected_attributes
  attr_accessible  :fullname, :celphone, :phone, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
end