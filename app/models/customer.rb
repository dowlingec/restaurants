class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def favorite_restaurant
        puts "iterates over review star ratings, returns name of highest"
        self.reviews.map do |review|
            "Rating of this rastaurant is:  #{review.star_rating}"
        end
    end

    def add_review
        puts 'These are not the methods you are looking for'
    end

    def delete_reviews
        puts 'These are not the methods you are looking for'
    end
end