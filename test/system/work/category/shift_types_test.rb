require "application_system_test_case"

class Work::Category::ShiftTypesTest < ApplicationSystemTestCase
  setup do
    @work_category_shift_type = work_category_shift_types(:one)
  end

  test "visiting the index" do
    visit work_category_shift_types_url
    assert_selector "h1", text: "Shift types"
  end

  test "should create shift type" do
    visit work_category_shift_types_url
    click_on "New shift type"

    fill_in "End hour", with: @work_category_shift_type.end_hour
    fill_in "Name", with: @work_category_shift_type.name
    fill_in "Start hour", with: @work_category_shift_type.start_hour
    click_on "Create Shift type"

    assert_text "Shift type was successfully created"
    click_on "Back"
  end

  test "should update Shift type" do
    visit work_category_shift_type_url(@work_category_shift_type)
    click_on "Edit this shift type", match: :first

    fill_in "End hour", with: @work_category_shift_type.end_hour
    fill_in "Name", with: @work_category_shift_type.name
    fill_in "Start hour", with: @work_category_shift_type.start_hour
    click_on "Update Shift type"

    assert_text "Shift type was successfully updated"
    click_on "Back"
  end

  test "should destroy Shift type" do
    visit work_category_shift_type_url(@work_category_shift_type)
    click_on "Destroy this shift type", match: :first

    assert_text "Shift type was successfully destroyed"
  end
end
