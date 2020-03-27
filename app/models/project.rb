class Project < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :description, presence: true
    validates :state, presence: true

    scope :propuesta, -> {
        where(:state => "propuesta")
    } 
    scope :en_progreso, -> {
        where(:state => "en progreso")
    } 
    scope :terminado, -> {
        where(:state => "terminado")
    } 


end
