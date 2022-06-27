class Evento < ApplicationRecord
	has_one_attached :image
	belongs_to :projeto
	validate :acceptable_image

	def acceptable_image
  		return unless image.attached?

  		unless image.byte_size <= 1.megabyte
    		errors.add(:image, "is too big")
  		end

  		acceptable_types = ["image/jpeg", "image/png"]
  		unless acceptable_types.include?(image.content_type)
    	errors.add("Apenas imagens JPEG ou PNG são aceitas")
  end
	end
end
