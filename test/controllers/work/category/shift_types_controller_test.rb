require "test_helper"

class Work::Category::ShiftTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_category_shift_type = work_category_shift_types(:one)
  end

  test "should get index" do
    get work_category_shift_types_url
    assert_response :success
  end

  test "should get new" do
    get new_work_category_shift_type_url
    assert_response :success
  end

  test "should create work_category_shift_type" do
    assert_difference("Work::Category::ShiftType.count") do
      post work_category_shift_types_url, params: { work_category_shift_type: { end_hour: @work_category_shift_type.end_hour, name: @work_category_shift_type.name, start_hour: @work_category_shift_type.start_hour } }
    end

    assert_redirected_to work_category_shift_type_url(Work::Category::ShiftType.last)
  end

  test "should show work_category_shift_type" do
    get work_category_shift_type_url(@work_category_shift_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_category_shift_type_url(@work_category_shift_type)
    assert_response :success
  end

  test "should update work_category_shift_type" do
    patch work_category_shift_type_url(@work_category_shift_type), params: { work_category_shift_type: { end_hour: @work_category_shift_type.end_hour, name: @work_category_shift_type.name, start_hour: @work_category_shift_type.start_hour } }
    assert_redirected_to work_category_shift_type_url(@work_category_shift_type)
  end

  test "should destroy work_category_shift_type" do
    assert_difference("Work::Category::ShiftType.count", -1) do
      delete work_category_shift_type_url(@work_category_shift_type)
    end

    assert_redirected_to work_category_shift_types_url
  end
end
