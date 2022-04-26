class Usuario < ApplicationRecord
	#validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "E-mail tem que ser válido" }
end
