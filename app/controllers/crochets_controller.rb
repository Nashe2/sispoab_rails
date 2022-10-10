class CrochetsController < ApplicationController
  before_action :set_crochet, only: %i[ show edit update destroy ]

  # GET /crochets or /crochets.json
  def index
    @crochets = Crochet.all
  end

  # GET /crochets/1 or /crochets/1.json
  def show
  end

  # GET /crochets/new
  def new
    @crochet = Crochet.new
    @products = Product.all
    @people = Person.all
  end

  # GET /crochets/1/edit
  def edit
    @people = Person.all
    @products = Product.all
  end

  # POST /crochets or /crochets.json
  def create
    @crochet = Crochet.new(crochet_params)

    respond_to do |format|
      if @crochet.save
        format.html { redirect_to crochet_url(@crochet), notice: "Crochet was successfully created." }
        format.json { render :show, status: :created, location: @crochet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crochet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crochets/1 or /crochets/1.json
  def update
    respond_to do |format|
      if @crochet.update(crochet_params)
        format.html { redirect_to crochet_url(@crochet), notice: "Crochet was successfully updated." }
        format.json { render :show, status: :ok, location: @crochet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crochet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crochets/1 or /crochets/1.json
  def destroy
    @crochet = Crochet.find(params[:id])
    @crochet.destroy

    respond_to do |format|
      format.html { redirect_to crochets_url, notice: "Crochet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crochet
      @crochet = Crochet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crochet_params
      params.require(:crochet).permit(:ending_price, :sale, :person_id, :product_id)
    end
end
