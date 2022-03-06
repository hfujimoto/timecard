class Work::RecordsController < ApplicationController
  before_action :set_work_record, only: %i[ show edit update destroy ]

  # GET /work/records or /work/records.json
  def index
    @work_records = Work::Record.all
  end

  # GET /work/records/1 or /work/records/1.json
  def show
  end

  # GET /work/records/new
  def new
    @work_record = Work::Record.new
  end

  # GET /work/records/1/edit
  def edit
  end

  # POST /work/records or /work/records.json
  def create
    @work_record = Work::Record.new(work_record_params)

    respond_to do |format|
      if @work_record.save
        format.html { redirect_to work_record_url(@work_record), notice: "Record was successfully created." }
        format.json { render :show, status: :created, location: @work_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work/records/1 or /work/records/1.json
  def update
    respond_to do |format|
      if @work_record.update(work_record_params)
        format.html { redirect_to work_record_url(@work_record), notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @work_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work/records/1 or /work/records/1.json
  def destroy
    @work_record.destroy

    respond_to do |format|
      format.html { redirect_to work_records_url, notice: "Record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_record
      @work_record = Work::Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_record_params
      params.require(:work_record).permit(:person_id, :work_category_shift_type_id, :record_date, :ot, :nt, :start1_time, :end1_time, :start2_time, :end2_time)
    end
end
