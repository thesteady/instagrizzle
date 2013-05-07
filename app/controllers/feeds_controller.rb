class FeedsController < ApplicationController

  def index
    if params[:username]
      @username = params[:username]
      @image = Photo.new(@username).get_most_recent_image
    end
  end

end
