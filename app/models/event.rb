class Event < ActiveRecord::Base
  has_many :attendees

  def all_attendees
    Attendee.all.select do |attendee|
      attendee.event_name == self.name
    end
  end
end
