class Animal < ActiveRecord::Base
  has_many :keepers, dependent: :destroy
  has_many :employees, through: :keepers
end
