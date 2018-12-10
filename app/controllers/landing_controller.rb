class LandingController < ApplicationController
  skip_before_action :authenticate, only: :index

  def index
    if logged_in?
      redirect_to search_index_path
    else
      render :index
    end
  end
end
