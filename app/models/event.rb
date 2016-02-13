class Event < ActiveRecord::Base
  validates  :name, :address, :workers, :time_start, :time_end, presence: {message: "Must be filled"} 
  has_and_belongs_to_many :users

  
end


