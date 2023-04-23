class Skateboard < ApplicationRecord
    belongs_to :user, :optional => true
end
