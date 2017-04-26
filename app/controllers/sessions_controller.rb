class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = '入力した内容が正しくありません。ご確認のうえ再度お試しください。'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
