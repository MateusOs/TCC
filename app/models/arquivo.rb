class Arquivo < ApplicationRecord
	belongs_to :projeto
	has_one_attached :figura
	has_one_attached :documento
end
