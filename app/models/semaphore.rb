class Semaphore < ApplicationRecord
    # Relaciones
    belongs_to :state
  
    # Enums
    enum color: [:verde, :amarillo, :naranja, :rojo]
  
    # Callbacks
    before_validation :set_end_date
  
    # validaciones 
    validates :color, inclusion: { in: %w(verde amarillo naranja rojo), message: "%{value} no está permitido" }
  
    

    def self.get_latest_by_states
      all_semaphores = self.all.order(fecha_ini: :desc)
      latest_semaphores = {}
  
      all_semaphores.each do |asem|
        # if(true)
        #   #do something
        # end
        # unless(false)
        #   # do something
        # end
        unless(latest_semaphores[asem.state_id])
          latest_semaphores[asem.state_id] = asem
        end
      end
  
      latest_semaphores
    end
  
    private
    def set_end_date
      (self.fecha_fin = self.fecha_ini + 2.weeks) if self.fecha_ini && !self.fecha_fin
    end
  end
