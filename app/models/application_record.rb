class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  ALPHA_REGEXP = /\A[a-z A-Z]+\z/
  NUMERIC_REGEXP = /\A[0-9]+\z/
end
