class QuoteStatus < ApplicationRecord
	validate :name, length: {maximum: 255}, presence: true
	validate :order, length: {maximum: 255}, format: {with: NUMBER_REGEXP}, presence: true
	validate :active, inclusion: {in: [true, false]}
end
