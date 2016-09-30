class Prayer < ApplicationRecord

	validates :title, presence: true, length: { minimum: 5}
	validates :message, presence: true
end
