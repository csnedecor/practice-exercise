class Keeper < ActiveRecord::Base
  belongs_to :animal, touch: true
  belongs_to :employee, touch: true

  validates :employee_id,
    uniqueness: {
      scope: :animal_id,
      message: "has already been assigned to this animal"
    }
end
