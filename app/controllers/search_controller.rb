class SearchController < ApplicationController
  def search
    @employees = params[:q].nil? ? [] : Employee.search(params[:q])
  end
end
