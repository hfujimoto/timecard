class Work::Category::ShiftTypesController < ApplicationController
  before_action :set_work_category_shift_type, only: %i[ show edit update destroy ]

  # GET /work/category/shift_types or /work/category/shift_types.json
  def index
    @work_category_shift_types = Work::Category::ShiftType.all
  end

  # GET /work/category/shift_types/1 or /work/category/shift_types/1.json
  def show
  end

  # GET /work/category/shift_types/new
  def new
    @work_category_shift_type = Work::Category::ShiftType.new
  end

  # GET /work/category/shift_types/1/edit
  def edit
  end

  # POST /work/category/shift_types or /work/category/shift_types.json
  def create
    @work_category_shift_type = Work::Category::ShiftType.new(work_category_shift_type_params)

    respond_to do |format|
      if @work_category_shift_type.save
        format.html { redirect_to work_category_shift_type_url(@work_category_shift_type), notice: "Shift type was successfully created." }
        format.json { render :show, status: :created, location: @work_category_shift_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_category_shift_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work/category/shift_types/1 or /work/category/shift_types/1.json
  def update
    respond_to do |format|
      if @work_category_shift_type.update(work_category_shift_type_params)
        format.html { redirect_to work_category_shift_type_url(@work_category_shift_type), notice: "Shift type was successfully updated." }
        format.json { render :show, status: :ok, location: @work_category_shift_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_category_shift_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work/category/shift_types/1 or /work/category/shift_types/1.json
  def destroy
    @work_category_shift_type.destroy

    respond_to do |format|
      format.html { redirect_to work_category_shift_types_url, notice: "Shift type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_category_shift_type
      @work_category_shift_type = Work::Category::ShiftType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_category_shift_type_params
      params.require(:work_category_shift_type).permit(:name, :start_hour, :end_hour)
    end
end
