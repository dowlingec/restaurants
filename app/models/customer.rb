class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def favorite_restaurant
        puts "iterates over review.star_ratings, returns name of highest star rating"
        self.reviews.map do |review|
            review.star_rating
        end
        # getting value of each rating
        # need to find max from that array
        #then return the name of the restaurant which has max stars
    end

    def add_review(restaurant_id, rating)
        # puts 'creates new Review - takes a restaurant instance and star_rating'
        Review.create(restaurant_id: restaurant_id, star_rating: rating, customer_id: self.id)
        #takes in params of restaurant and rating
        #Review.create
    end


    def delete_reviews(restaurant_id)
        puts 'These are not the methods you are looking for'
        Restaurant.reviews.
        
        #takes restaurant id
        #removes all reviews linked to the id
        #deleteing rows from table ?
    end
end