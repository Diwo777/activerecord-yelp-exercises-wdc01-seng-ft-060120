class Tag < ActiveRecord::Base
    has_many :dishes, through: :dishtags
    has_many :dishtags
end