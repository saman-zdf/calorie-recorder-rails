class Foodlog < ApplicationRecord
  belongs_to :user
  enum time: { Morning: 0, Afternoon: 1, Night: 2} 
end
