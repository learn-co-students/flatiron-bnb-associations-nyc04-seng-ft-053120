class Listing < ApplicationRecord

    belongs_to :neighborhood
    belongs_to :host, :class_name => "User"

    #reservations(guests) and reviews
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations
    #knows about all of its guests

end
