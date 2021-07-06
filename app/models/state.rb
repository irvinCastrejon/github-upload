class State < ApplicationRecord
    has_many :phones
    has_many :semaphores
end
