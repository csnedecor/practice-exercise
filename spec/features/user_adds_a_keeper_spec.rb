require "rails_helper"

feature "user creates a keeper" do
  scenario "user successfully adds a new keeper to an animal" do
    animal = FactoryGirl.create(:animal)
    employee1 = FactoryGirl.create(:employee)
    employee2 = FactoryGirl.create(:employee)

    visit animal_path(animal)
    click_on "Add a keeper"
    
    select employee2.name, from: "keeper[employee_id]"

    click_on "Submit"

    expect(page).to have_content "Successfully added a keeper"
    expect(page).to have_content animal.name
    expect(page).to have_content employee2.name
  end
end
