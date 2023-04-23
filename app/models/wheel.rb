class Wheel < ApplicationRecord
    belongs_to :skateboard, :optional => true
end
