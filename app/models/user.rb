class User < ApplicationRecord
  
  after_create :assign_default_role
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  ROLES = ['Admin', 'Registrato', 'Aziendale']

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.first_name = auth.info.first_name
    user.last_name = auth.info.last_name
    user.birth = auth.info.date_of_birth
    end
  end

  def assign_default_role
    self.add_role(:company_user) if self.roles.blank? && self.roletype
    self.add_role(:user) if self.roles.blank? && !self.roletype
  end

end
