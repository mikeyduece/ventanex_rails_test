module ApplicationHelper

  def account_types
    PayAccount.account_types.keys.map { |a| [a.titleize, a] }
  end

  def flash_class(level)
    case level.to_sym
    when :notice
      'alert alert-info'
    when :success
      'alert alert-success'
    when :error
      'alert alert-error'
    when :alert
      'alert alert-error'
    end
  end

end
