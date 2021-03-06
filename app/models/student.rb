class Student < ApplicationRecord
    belongs_to :university
    validates :name, presence:true
    validates_date :started_at, :before => lambda { Date.current }
end

