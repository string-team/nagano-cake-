class Customer::CustomersController < ApplicationController
  def new
    @customer = current_customer
  end
  def show
    @customer = current_customer
  end
  def edit
    @customer = current_customer
  end
  def update
    @cusomer = current_customer
    if @cusomer.update(customer_params)
      redirect_to customers_my_page_path
      flash[:notice_customer] = "会員情報が更新されました。"
    else
      @customer = current_customer
      render :edit
    end
  end
  def unsubscribe
    @customer = current_customer
  end
  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to new_customer_session_path
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number) 
  end

end
