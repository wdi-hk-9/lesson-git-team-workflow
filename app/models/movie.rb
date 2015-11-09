class Movie < ActiveRecord::Base
  has_and_belong_to :actors
  has_many :reviews
end
