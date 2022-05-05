class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def fanciest
        # puts 'These are not the methods you are looking for'
        #maps over prices of each restaurant
        #reuturns one whole instance (highest price)
        self.price.map
    end

    def all_reviews
        self.reviews.map do |rev|
            rev.full_review
        end
    end
end