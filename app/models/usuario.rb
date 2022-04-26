class Usuario < ApplicationRecord
	has_secure_password
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "E-mail tem que ser válido" }
end
