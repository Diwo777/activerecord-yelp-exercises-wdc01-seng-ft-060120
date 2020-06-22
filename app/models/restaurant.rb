class Restaurant < ActiveRecord::Base
    has_many :dishes

    def self.mcdonalds
        self.find_by(name: "McDonalds")
    end
    
    def self.tenth
        self.find(48)
    end

    def self.with_long_names
        self.where('name > 12')
    end
end