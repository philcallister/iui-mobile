class LoginsController < ApplicationController

  before_filter :detect_browser

  def new
    respond_to do |format|
      format.iphone {render :action => :new}
    end
  end

  def create
    
  end

end
