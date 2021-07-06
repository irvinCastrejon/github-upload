class SemaphoresController < ApplicationController
    before_action :datos, only: [:show, :edit, :update]
    def index
        @semaphore = Semaphore.all
        @semaphores = Semaphore.get_latest_by_states
    end
    def new
      @semaphore = Semaphore.new(state_id: (params["estado"]))
         
       
     #@semaphores = Semaphore.order(fecha_ini: :desc)
     #@semaphore = State.all
    end

    def create
        @semaphores = State.all
        @semaphore = Semaphore.create!(semaphore_params)
        redirect_to @semaphore
    end
    def show
    end
  
    def edit
    end
  
    def update
    end
    private
    def semaphore_params
        params.require(:semaphore).permit(:state_id,:color,:fecha_ini)
    end

    def datos
        @semaphore = Semaphore.find(params[:id])
    end
end
