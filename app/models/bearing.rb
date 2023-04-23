class Bearing < ApplicationRecord
    belongs_to :skateboard, :optional => true
end
