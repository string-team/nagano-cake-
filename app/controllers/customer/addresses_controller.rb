class Customer::AddressesController < ApplicationController
  def index
    @addresses = current_customer.addresses
    @addresses_new = Address.new
  end
  
  def create
    @addresses= Address.new(address_params)
    @addresses.customer = current_customer
    if @addresses.save
      redirect_to addresses_path
    else
      render :index
    end
  end
  def edit
    @addresses = current_customer.addresses.find(params[:id])
  end
  
  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to addresses_path
    else
      render :edit
    end
  end



  def destroy
   @addresses= Address.find(params[:id])
   @addresses.destroy
   redirect_to addresses_path
  end
 
 private
 def address_params
  params.require(:address).permit(:postal_code, :address, :name)
 end
end
