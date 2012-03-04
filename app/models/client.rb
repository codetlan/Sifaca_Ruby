class Client < ActiveRecord::Base
  belongs_to :client
  has_many :invoices
  has_many :folios
  mount_uploader :logo_emp, LogoEmpUploader

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :name,  :rfc,      :street,                :num_ext,
                  :num_int, :colony, :delegation,            :state,
                  :cp,    :logo_emp, :qr,                    :username
end
