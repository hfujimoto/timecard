require "application_system_test_case"

class Work::RecordsTest < ApplicationSystemTestCase
  setup do
    @work_record = work_records(:one)
  end

  test "visiting the index" do
    visit work_records_url
    assert_selector "h1", text: "Records"
  end

  test "should create record" do
    visit work_records_url
    click_on "New record"

    fill_in "Nt", with: @work_record.nt
    fill_in "Ot", with: @work_record.ot
    fill_in "Person", with: @work_record.person_id
    fill_in "Record date", with: @work_record.record_date
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "should update Record" do
    visit work_record_url(@work_record)
    click_on "Edit this record", match: :first

    fill_in "Nt", with: @work_record.nt
    fill_in "Ot", with: @work_record.ot
    fill_in "Person", with: @work_record.person_id
    fill_in "Record date", with: @work_record.record_date
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "should destroy Record" do
    visit work_record_url(@work_record)
    click_on "Destroy this record", match: :first

    assert_text "Record was successfully destroyed"
  end
end
