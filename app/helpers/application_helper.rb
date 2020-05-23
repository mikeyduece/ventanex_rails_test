module ApplicationHelper

  def account_types
    PayAccount.account_types.keys.map { |a| [a.titleize, a] }
  end
end
