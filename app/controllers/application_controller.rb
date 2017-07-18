class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#
rescue_from ActionController::RoutingError do |exception|
	logger.error 'Routing error occured' 
	render plain: '404 Not Found', status: 404
end
#
end
