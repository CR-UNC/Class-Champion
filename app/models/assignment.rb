class Assignment < ApplicationRecord
  
    validates :title, presence: true
    validates :text, presence: true
    validates :difficulty, presence: true, numericality: {only_integer: true,
    greater_than_or_equal_to: 0, less_than_or_equal_to: 10
    }
    validates :Goalgrade, presence: true, numericality:{greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
    validates :Due, presence: true
end
