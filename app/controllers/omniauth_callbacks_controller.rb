class OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def all
		request.env["omnauth.auth"]
	end
	alias_method :twitter, :all
end
