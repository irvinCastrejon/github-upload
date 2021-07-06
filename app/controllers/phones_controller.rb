class PhonesController < ApplicationController
    before_action :authenticate_user!
    # Ejecutar la función get_phone antes de las siguientes acciones:
     # - edit
     # - update
     # - show
     # - destroy
     before_action :get_phone, only: [:edit, :update, :show, :destroy]
    
    
    def index
        @phone = Phone.all
        @phones = Phone.get_latest_by_id
        
    end
    def new
        @phones = Phone.new(state_id: (params["estado"]))
        
    end
    def create
      @phone = Phone.create(phone_params, )
      redirect_to @phone
        Rails.logger.debug params.inspect
    end 
    def edit
    end
  
    def update
      @phones.update(phone_params)
      redirect_to root_url(estado: @phones.state_id)
    end
  
    def show
    end
    def destroy
        @phones.destroy
        redirect_to phones_path
      end

    private
  # Strong params
  def phone_params
    params.require(:phone).permit(:state_id, :numero)
  end

  def get_phone
    @phones = Phone.find(params[:id])
  end
  
end
