class User < ApplicationRecord
	before_save { self.email = email.downcase } #self refers to teh corrent user
	validates :name, 	presence: true, length: { maximum: 50 }
	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #constante por iniciar con upercase 'VALID...'
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false }
	has_secure_password #goes with 'password_digest' upon users model (on table as a row)
	validates :password, presence: true, length: { minimum: 6 }
end
