class Attendee < ActiveRecord::Base
  belongs_to :event

  def event_name 
    Event.find(self.event_id).name
  end
end
