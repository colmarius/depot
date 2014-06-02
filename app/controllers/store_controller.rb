class StoreController < ApplicationController
  before_action :set_visit_count, only: [:index]

  def index
    @products = Product.order(:title)
  end

  private

  def set_visit_count
    @visit_count = session[:visit_count] || 0
    @visit_count += 1

    session[:visit_count] = @visit_count
  end
end
