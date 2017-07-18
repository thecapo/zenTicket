class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	rescue_from ActionController::RoutingError do |exception|
		logger.error 'Routing error occured' 
		render file: "#{Rails.root}/public/404.html" , status: :not_found  
	end

end
