class Restaurant < ActiveRecord::Base

  # Cuisine type
  CUISINE = {meat: 0, asian: 1}

  # Delivery time at rush hour
  DELIVERY_TIME = {thirty_minutes: 0, thirty_to_hour: 1, hour_or_more: 2}

  validates_presence_of :name, :cuisine, :rating, :delivery_time
  validates_inclusion_of :rating, :in => 0..3

  scope :with_cuisine, -> (cuisine) { where(:cuisine => cuisine) }
  scope :with_rating, -> (rating) { where(:rating => rating) }
  scope :with_delivery_time, -> (delivery_time) { where(:delivery_time => delivery_time) }
end
