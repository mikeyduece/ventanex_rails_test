class PayAccountsController < ApplicationController
  helper_method :pay_account

  # TODO: Add lookup to Account class

  def index
    @pay_accounts = PayAccount.all
  end

  def new
    @pay_account = PayAccount.new
  end

  def create
    pay_account = PayAccount.new(pay_account_params)

    if pay_account.save
      redirect_to pay_accounts_path, success: "#{pay_account.nickname} successfully create!"
    else

      redirect_to new_pay_accounts_path, error: pay_account.errors.full_messages.to_sentence
    end

  end

  private

  def pay_account
    @pay_account ||= PayAccount.find_by(id: pay_account_params[:id])
  end

  def pay_account_params
    params.require(:pay_account).permit(:id, :nickname, :account_type, :account_number)
  end

end
