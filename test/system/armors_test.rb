require "application_system_test_case"

class ArmorsTest < ApplicationSystemTestCase
  setup do
    @armor = armors(:one)
  end

  test "visiting the index" do
    visit armors_url
    assert_selector "h1", text: "Armors"
  end

  test "should create armor" do
    visit armors_url
    click_on "New armor"

    fill_in "Armor class", with: @armor.armor_class
    fill_in "Armor type", with: @armor.armor_type
    fill_in "Description", with: @armor.description
    fill_in "Name", with: @armor.name
    fill_in "Weight", with: @armor.weight
    click_on "Create Armor"

    assert_text "Armor was successfully created"
    click_on "Back"
  end

  test "should update Armor" do
    visit armor_url(@armor)
    click_on "Edit this armor", match: :first

    fill_in "Armor class", with: @armor.armor_class
    fill_in "Armor type", with: @armor.armor_type
    fill_in "Description", with: @armor.description
    fill_in "Name", with: @armor.name
    fill_in "Weight", with: @armor.weight
    click_on "Update Armor"

    assert_text "Armor was successfully updated"
    click_on "Back"
  end

  test "should destroy Armor" do
    visit armor_url(@armor)
    click_on "Destroy this armor", match: :first

    assert_text "Armor was successfully destroyed"
  end
end
