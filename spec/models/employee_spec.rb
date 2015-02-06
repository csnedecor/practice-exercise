require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "attributes" do
    it { should respond_to :name }
    it { should respond_to :email }
    it { should respond_to :created_at }
    it { should respond_to :updated_at }
  end

  describe "associations" do
    it { should have_many :animals }
    it { should have_many :keepers }
  end
end
