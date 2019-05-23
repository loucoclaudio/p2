require "application_system_test_case"

class Type1sTest < ApplicationSystemTestCase
  setup do
    @type1 = type1s(:one)
  end

  test "visiting the index" do
    visit type1s_url
    assert_selector "h1", text: "Type1s"
  end

  test "creating a Type1" do
    visit type1s_url
    click_on "New Type1"

    fill_in "Type", with: @type1.type
    click_on "Create Type1"

    assert_text "Type1 was successfully created"
    click_on "Back"
  end

  test "updating a Type1" do
    visit type1s_url
    click_on "Edit", match: :first

    fill_in "Type", with: @type1.type
    click_on "Update Type1"

    assert_text "Type1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Type1" do
    visit type1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type1 was successfully destroyed"
  end
end
