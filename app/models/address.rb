class Address < ApplicationeRecord
  geocoded_by :address

  has_one :user

  validates_presence_of :street, :city, :state, :zipcode
  validates_length_of :state, is: 2, message: "not a valid state"

  after_validation :geocode

  def address
    "#{street} #{city}, #{state} #{zipcode}"
  end
end
