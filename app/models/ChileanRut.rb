class Person < ActiveRecord::Base
  validates_with RUTValidator
end