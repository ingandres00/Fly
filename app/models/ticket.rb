class Ticket < ApplicationRecord
  belongs_to :itinerary, class_name:"FlightItinerary",foreign_key:"itinerary_id"
    belongs_to:sale_orders,class_name:"SaleOrder", foreign_key:"sale_order_id"
    belongs_to:passenger, class_name:"passenger" foreign_key:"passenger_id"

end
