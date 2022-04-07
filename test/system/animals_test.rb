require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Birthdate", with: @animal.birthdate
    fill_in "Name", with: @animal.name
    fill_in "Ong", with: @animal.ong_id
    fill_in "Race", with: @animal.race
    fill_in "Sex", with: @animal.sex
    fill_in "Situation", with: @animal.situation
    fill_in "Species", with: @animal.species
    fill_in "Weight", with: @animal.weight
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @animal.birthdate
    fill_in "Name", with: @animal.name
    fill_in "Ong", with: @animal.ong_id
    fill_in "Race", with: @animal.race
    fill_in "Sex", with: @animal.sex
    fill_in "Situation", with: @animal.situation
    fill_in "Species", with: @animal.species
    fill_in "Weight", with: @animal.weight
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
