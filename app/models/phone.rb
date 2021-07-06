class Phone < ApplicationRecord
    belongs_to :state
    def self.get_latest_by_id
        all_phones = self.all.order(state: :asc)
         latest_phones = {}
    
        all_phones.each do |phone|
          # if(true)
          #   #do something
          # end
          # unless(false)
          #   # do something
          # end
          unless(latest_phones[phone.state_id])
            latest_phones[phone.state_id] = phone
          end
        end
    
        latest_phones
      end


end
