class Foodlog < ApplicationRecord
  enum time: { Morning: 0, Afternoon: 1, Night: 2} 
end
