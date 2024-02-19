require "application_system_test_case"

class EquipsTest < ApplicationSystemTestCase
  setup do
    @equip = equips(:one)
  end

  test "visiting the index" do
    visit equips_url
    assert_selector "h1", text: "Equips"
  end

  test "should create equip" do
    visit equips_url
    click_on "New equip"

    click_on "Create Equip"

    assert_text "Equip was successfully created"
    click_on "Back"
  end

  test "should update Equip" do
    visit equip_url(@equip)
    click_on "Edit this equip", match: :first

    click_on "Update Equip"

    assert_text "Equip was successfully updated"
    click_on "Back"
  end

  test "should destroy Equip" do
    visit equip_url(@equip)
    click_on "Destroy this equip", match: :first

    assert_text "Equip was successfully destroyed"
  end
end
