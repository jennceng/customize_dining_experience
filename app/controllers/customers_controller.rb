class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(last_name: :asc, first_name: :asc)
  end

  def ingredient_options(customer)
    existing_preferences = []
    customer.preferences.each do |preference|
      existing_preferences << preference.ingredient
    end
    return (Ingredient.all - existing_preferences)
  end

  def show
    @customer = Customer.find(params[:id])
    @ingredient_options = ingredient_options(@customer)
    @preference = Preference.new
    @vip = nil
    if @customer.vip
      @vip = "This customer is a VIP! Take good care of them"
    end
    @likes = @customer.preferences.where(likes: true)
    @dislikes = @customer.preferences.where(likes: false)
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = 'Customer successfully saved'
      redirect_to customer_path(@customer)
    else
      @errors = @customer.errors.full_messages.join", "
      flash[:error] = "#{@errors}"
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name)
  end

end
