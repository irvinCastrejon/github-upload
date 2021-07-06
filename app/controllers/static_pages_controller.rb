class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:home]
    def home
        @states = State.all
        @semaphores = Semaphore.get_latest_by_states
        @phones = Phone.all
        #raise @semaphores.inspect
      end
end
