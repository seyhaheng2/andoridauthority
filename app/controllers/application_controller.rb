class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :checking

  def checking
    @social = Controlsite.first(1)
    @categories = Category.where(position: [1..4]).order(:position)
    @subcategories = Category.where(position: [5..20]).order(:position)
  end
end
