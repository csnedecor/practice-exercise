class Employee < ActiveRecord::Base
  has_many :keepers
  has_many :animals, through: :keepers
end
