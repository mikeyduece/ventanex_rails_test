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
  end

  private

  def pay_account
    @pay_account ||= PayAccount.find_by(id: pay_account_params[:id])
  end

  def pay_account_params
    params.require(:pay_account).permit(:id, :nickname, :account_type, :account_number)
  end

end
