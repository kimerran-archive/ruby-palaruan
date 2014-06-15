
class EventsController < ApplicationController
	def index
		e = Event.new
		e.title = "test title"
		e.details = "test details"
		e.save
	end
end
