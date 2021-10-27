class Address < ApplicationRecord

  belongs_to :customer
<<<<<<< HEAD
=======

  def address_info
    postal_code + " " + address + " " + name
  end

>>>>>>> develop
end
