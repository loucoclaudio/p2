require "application_system_test_case"

class Type2sTest < ApplicationSystemTestCase
  setup do
    @type2 = type2s(:one)
  end

  test "visiting the index" do
    visit type2s_url
    assert_selector "h1", text: "Type2s"
  end

  test "creating a Type2" do
    visit type2s_url
    click_on "New Type2"

    fill_in "Type", with: @type2.type
    click_on "Create Type2"

    assert_text "Type2 was successfully created"
    click_on "Back"
  end

  test "updating a Type2" do
    visit type2s_url
    click_on "Edit", match: :first

    fill_in "Type", with: @type2.type
    click_on "Update Type2"

    assert_text "Type2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Type2" do
    visit type2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type2 was successfully destroyed"
  end
end
