class AccountsController < ApplicationController

  before_filter :detect_browser
  before_filter :find_user_account

  def show
    respond_to do |format|
      format.iphone {render :action => :show, :layout => false}
    end
  end

  def edit
    @payment = params[:account][:amount]
    final_balance = "%.2f" % (BigDecimal.new(@ua[:balance].gsub(/\$/,'')) - BigDecimal.new(@payment.gsub(/\$/,'')))
    @final_balance = "$#{final_balance}"
    respond_to do |format|
      format.iphone {render :action => :edit, :layout => false}
    end
  end

  def update
    respond_to do |format|
      format.iphone {render :action => :update, :layout => false}
    end
  end


  private

  def find_user_account
    if params[:id]
      @ua = find_by_account params[:id]
    end
  end
  
end
