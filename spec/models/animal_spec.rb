require 'rails_helper'

RSpec.describe Animal, type: :model do
  describe "attributes" do
    it { should respond_to :name }
    it { should respond_to :age }
    it { should respond_to :breed }
    it { should respond_to :color }
    it { should respond_to :created_at }
    it { should respond_to :updated_at }
  end

  describe "associations" do
    it { should have_many :employees }
    it { should have_many :keepers }
  end
end
