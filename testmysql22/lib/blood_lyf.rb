module BloodLyf
	class EventsTestHelper
		def self.add_random_event
			e = Events.new
			e.title = "test title"
			e.details = "test details"
			e.save
		end
	end
	

end