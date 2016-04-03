class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(last_name: :asc, first_name: :asc)
  end

  def show
    @customer = Customer.find(params[:id])
    @vip = nil
    if @customer.vip
      @vip = "This customer is a VIP! Take good care of them"
    end
    @likes = @customer.preferences.where(likes: true)
    @dislikes = @customer.preferences.where(likes: false)
  end

  def new

  end

  def create

  end

end
