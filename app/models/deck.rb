class Deck < ApplicationRecord
    belongs_to :skateboard, :optional => true
end
