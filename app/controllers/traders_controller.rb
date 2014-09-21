class TradersController < ApplicationController
  # GET /traders
  # GET /traders.json
  def index
    @traders = Trader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @traders }
    end
  end

  # GET /traders/1
  # GET /traders/1.json
  def show
    @trader = Trader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trader }
    end
  end

  # GET /traders/new
  # GET /traders/new.json
  def new
    @trader = Trader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trader }
    end
  end

  # GET /traders/1/edit
  def edit
    @trader = Trader.find(params[:id])
  end

  # POST /traders
  # POST /traders.json
  def create
    @trader = Trader.new(params[:trader])

    respond_to do |format|
      if @trader.save
        format.html { redirect_to @trader, notice: 'Trader was successfully created.' }
        format.json { render json: @trader, status: :created, location: @trader }
      else
        format.html { render action: "new" }
        format.json { render json: @trader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /traders/1
  # PUT /traders/1.json
  def update
    @trader = Trader.find(params[:id])

    respond_to do |format|
      if @trader.update_attributes(params[:trader])
        format.html { redirect_to @trader, notice: 'Trader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traders/1
  # DELETE /traders/1.json
  def destroy
    @trader = Trader.find(params[:id])
    @trader.destroy

    respond_to do |format|
      format.html { redirect_to traders_url }
      format.json { head :no_content }
    end
  end
end
