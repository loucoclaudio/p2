class Pokemon < ApplicationRecord
    belongs_to :dex 
    belongs_to :tipo1
    belongs_to :tipo2
end
