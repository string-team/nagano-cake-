class Address < ApplicationRecord

  belongs_to :customer

  def address_info
    postal_code + " " + address + " " + name
  end

end
