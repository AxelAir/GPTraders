class WelcomeController < ApplicationController
  def home
  end

  # GET /welcome/trader/1
  def trader
    @trades = Trade.where("trader_id = ?", params[:id])
  end
end
