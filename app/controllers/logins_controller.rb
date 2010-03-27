class LoginsController < ApplicationController

  before_filter :detect_browser

  def create
    @ua = find_by_user(params[:user][:username])
    respond_to do |format|
      format.iphone {render :action => :create, :layout => false}
    end
  end

  def destroy
    # kill a session here
  end

end
