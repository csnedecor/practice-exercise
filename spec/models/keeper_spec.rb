require 'rails_helper'

RSpec.describe Keeper, type: :model do
  describe "attributes" do
    it { should respond_to :animal_id }
    it { should respond_to :employee_id }
  end

  describe "associations" do
    it { should belong_to :employee }
    it { should belong_to :animal }
  end
end
