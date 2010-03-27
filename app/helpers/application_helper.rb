# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def format_account(account)
    %(#{account.slice(0..3)}-#{account.slice(4..7)}-#{account.slice(8..11)}-#{account.slice(12..15)})
  end

end
