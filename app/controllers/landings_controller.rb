class LandingsController < ApplicationController

  before_filter :detect_browser

  def index
    respond_to do |format|
      format.iphone {render :action => :index}
    end
  end
  
end
