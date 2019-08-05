class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable: terugzetten wanneer inschrijven mogelijk!
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
