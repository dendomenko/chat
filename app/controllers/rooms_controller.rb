class RoomsController < ApplicationController
  def show
	@messages = Message.all
    @phones = Worker.all
  end
end
