class StoreController < ApplicationController
  skip_before_action :authenticate_user!
  include CurrentCart
  before_action :set_cart
  
  def index
    session[:counter].nil? ? session[:counter] = 1 : session[:counter] += 1

    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      # @products = Product.order(:title)
      @products = Product.page(params[:page]).per(10)
    end
  end
end
