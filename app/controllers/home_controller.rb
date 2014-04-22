class HomeController < ApplicationController

	def index
		@home = true
		@pack = current_user.packs.build if signed_in?
	end
end
