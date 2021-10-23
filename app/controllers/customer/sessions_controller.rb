# frozen_string_literal: true

class Customer::SessionsController < Devise::SessionsController
  before_action :customer_state, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
   def create
     
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  protected
  
  def customer_state
<<<<<<< HEAD
    ## 【処理内容1】 入力されたemailからアカウントを1件取得
    @customer = Customer.find_by(email: params[:customer][:email])
    
    ## アカウントを取得できなかった場合、このメソッドを終了する
=======
    @customer = Customer.find_by(email: params[:customer][:email])
>>>>>>> 2b35b4e780fba1eb4f833b1b11d14faba25ddbe3
    return if !@customer
    if @customer.valid_password?(params[:customer][:password]) && !@customer.is_deleted
    else
      redirect_to new_customer_registration_path
    end
  end

end
