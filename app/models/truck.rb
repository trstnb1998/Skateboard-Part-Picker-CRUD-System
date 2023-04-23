class Truck < ApplicationRecord
    belongs_to :skateboard, :optional => true
end
