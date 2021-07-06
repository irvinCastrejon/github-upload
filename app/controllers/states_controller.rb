class StatesController < ApplicationController


    def index
      @state = State.all
    end
    def semaphores
        @state = State.find(params[:id])
      end

      def phones
        @state = State.find(params[:id])
      end
end
