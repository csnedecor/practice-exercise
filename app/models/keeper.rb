class Keeper < ActiveRecord::Base
  belongs_to :animal
  belongs_to :employee

  validates :employee_id, 
    uniqueness: {
      scope: :animal_id,
      message: "has already been assigned to this animal"
    }
end
