class AppointsController < ApplicationController
  before_action :set_appoint, only: %i[ show edit update destroy ]

  # GET /appoints or /appoints.json
  def index
    @appoints = Appoint.all
  end

  # GET /appoints/1 or /appoints/1.json
  def show
  end

  # GET /appoints/new
  def new
    @appoint = Appoint.new
    @materials = Material.all
    @people = Person.all
  end

  # GET /appoints/1/edit
  def edit
  end

  # POST /appoints or /appoints.json
  def create
    @appoint = Appoint.new(appoint_params)

    respond_to do |format|
      if @appoint.save
        format.html { redirect_to appoint_url(@appoint), notice: "Appoint was successfully created." }
        format.json { render :show, status: :created, location: @appoint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appoints/1 or /appoints/1.json
  def update

    respond_to do |format|
      if @appoint.update(appoint_params)
        format.html { redirect_to appoint_url(@appoint), notice: "Appoint was successfully updated." }
        format.json { render :show, status: :ok, location: @appoint }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appoints/1 or /appoints/1.json
  def destroy
    @appoint = Appoint.find(params[:id])
    @appoint.destroy

    respond_to do |format|
      format.html { redirect_to appoints_url, notice: "Appoint was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoint
      @appoint = Appoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appoint_params
      params.require(:appoint).permit(:quantity, :person_id, :material_id)
    end
end
