class PayAccountsController < ApplicationController
  helper_method :account

  def index
    @pay_accounts = PayAccount.all
    @xml_account = Account.new
  end

  def new
    @pay_account = PayAccount.new
  end

  def create
    pay_account = PayAccount.new(pay_account_params)

    if pay_account.save
      flash[:success] = "#{pay_account.nickname} successfully created!"
      redirect_to pay_accounts_path
    else
      flash[:error] = pay_account.errors.full_messages.to_sentence
      redirect_to new_pay_accounts_path
    end

  end

  private

  def account
    @account ||= Account.new
  end

  def pay_account_params
    params.require(:pay_account).permit(:id, :nickname, :account_type, :account_number)
  end

end
