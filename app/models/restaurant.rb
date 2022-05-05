class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def self.fanciest
        Restaurant.all.order(:price).last
    end

    def all_reviews
        self.reviews.map do |rev|
            rev.full_review
        end
    end
end