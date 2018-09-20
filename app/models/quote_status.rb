class QuoteStatus < ApplicationRecord
	validates :name, length: {maximum: 255}, presence: true, uniqueness: true
	validates :order, length: {maximum: 255}, numericality: { integer: true }, presence: true
	validates :active, inclusion: {in: [true, false]}
end
