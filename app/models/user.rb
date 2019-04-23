class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :confirmable, :trackable

  belongs_to :home_address, class_name: "Address", required: false

  validates_presence_of :name
end
