class HomeController < ApplicationController
  def index
  end

  def about 
  end

  def not_found
    # render json: { error: "Route does not exist" }, status: :not_found

    # Can comment to render the view instead
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Route does not exist.", status: :not_found }
    end
  end
end
