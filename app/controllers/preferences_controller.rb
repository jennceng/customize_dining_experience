class PreferencesController < ApplicationController
  # should add a unique index for customer id and ingredient id combined
  # or i could have the dropdown menu exclude pre-existing preferences...
  def create
    @preference = Preference.create(preferences_params)
    redirect_to customer_path(@preference.customer)
  end

  private

  def preferences_params
    params.require(:preference).permit(:likes).merge(customer: Customer.find(params[:customer_id])).merge(ingredient: Ingredient.find(params[:preference][:ingredient_id]))
  end
end
