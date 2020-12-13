class SportPricesController < ApplicationController
  before_action :set_sport_price, only: [:show, :edit, :update, :destroy]

  # GET /sport_prices
  # GET /sport_prices.json
  def index
    @sport_prices = SportPrice.all
  end

  # GET /sport_prices/1
  # GET /sport_prices/1.json
  def show
  end

  # GET /sport_prices/new
  def new
    @sport_price = SportPrice.new
  end

  # GET /sport_prices/1/edit
  def edit
  end

  # POST /sport_prices
  # POST /sport_prices.json
  def create
    @sport_price = SportPrice.new(sport_price_params)

    respond_to do |format|
      if @sport_price.save
        format.html { redirect_to @sport_price, notice: 'Sport price was successfully created.' }
        format.json { render :show, status: :created, location: @sport_price }
      else
        format.html { render :new }
        format.json { render json: @sport_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sport_prices/1
  # PATCH/PUT /sport_prices/1.json
  def update
    respond_to do |format|
      if @sport_price.update(sport_price_params)
        format.html { redirect_to @sport_price, notice: 'Sport price was successfully updated.' }
        format.json { render :show, status: :ok, location: @sport_price }
      else
        format.html { render :edit }
        format.json { render json: @sport_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_prices/1
  # DELETE /sport_prices/1.json
  def destroy
    @sport_price.destroy
    respond_to do |format|
      format.html { redirect_to sport_prices_url, notice: 'Sport price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_price
      @sport_price = SportPrice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sport_price_params
      params.require(:sport_price).permit(:sport_id, :price)
    end
end
