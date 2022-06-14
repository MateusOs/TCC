class Evento < ApplicationRecord
  has_one_attached :image
  belongs_to :projeto
end
