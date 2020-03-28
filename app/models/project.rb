class Project < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :description, presence: true
    validates :state, presence: true

end
