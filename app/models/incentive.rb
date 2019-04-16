class Incentive < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    
    
    
    validates :title, presence: true
    validates :text, presence: true
    validates :cost, presence: true
    validates :image, presence: true



    
end
