module ApplicationHelper

  def account_types
    PayAccount.account_types.map { |a| [a[0].titleize, a[-1]] }
  end
end
