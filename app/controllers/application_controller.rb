# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  USERS_ACCOUNTS = [
    {:user => 'phil', :name => 'Phil Callister', :account => '5478120287174410', :balance => '$3526.81'},
    {:user => 'bruce', :name => 'Bruce Petersen', :account => '8611396320991037', :balance => '$877.24'}
  ]
  DEFAULT_USER_ACCOUNT = {:user => 'gaurav', :name => 'Gaurav Gaur', :account => '9107152228043551', :balance => '$1489.75'}

  def find_by_user(user)
    found_user = USERS_ACCOUNTS.select { |ua| ua[:user] == user.downcase }
    found_user.empty? ? DEFAULT_USER_ACCOUNT : found_user.first
  end

  def find_by_account(account)
    found_account = USERS_ACCOUNTS.select { |ua| ua[:account] == account }
    found_account.empty? ? DEFAULT_USER_ACCOUNT : found_account.first
  end

  def detect_browser
    # cheat - lways force iPhone
    request.format = :iphone
  end

end
