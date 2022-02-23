require "test_helper"

class Work::RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_record = work_records(:one)
  end

  test "should get index" do
    get work_records_url
    assert_response :success
  end

  test "should get new" do
    get new_work_record_url
    assert_response :success
  end

  test "should create work_record" do
    assert_difference("Work::Record.count") do
      post work_records_url, params: { work_record: { nt: @work_record.nt, ot: @work_record.ot, person_id: @work_record.person_id, record_date: @work_record.record_date } }
    end

    assert_redirected_to work_record_url(Work::Record.last)
  end

  test "should show work_record" do
    get work_record_url(@work_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_record_url(@work_record)
    assert_response :success
  end

  test "should update work_record" do
    patch work_record_url(@work_record), params: { work_record: { nt: @work_record.nt, ot: @work_record.ot, person_id: @work_record.person_id, record_date: @work_record.record_date } }
    assert_redirected_to work_record_url(@work_record)
  end

  test "should destroy work_record" do
    assert_difference("Work::Record.count", -1) do
      delete work_record_url(@work_record)
    end

    assert_redirected_to work_records_url
  end
end
