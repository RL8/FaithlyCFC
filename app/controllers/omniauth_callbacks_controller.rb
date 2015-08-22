class OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def all
		user = User.from_omniauth(request.env["omniauth.auth"])
		if user.persisted?
			flash.notice = "You're in, woo hoo!"
			#sign_in_and_redirect user
			sign_in user
			redirect_to newsfeed_url
		else
			session["devise.user_attributes"] = user.attributes
			redirect_to new_user_registration_url
		end
	end
	alias_method :facebook, :all
end