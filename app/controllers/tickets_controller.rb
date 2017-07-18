class TicketsController < ApplicationController
  
  require 'will_paginate/array'
  
  def index

    response = HTTParty.get('https://caw.zendesk.com/api/v2/tickets', basic_auth: set_ticket, :headers => {'Content-Type' => 'application/json'} )
    @tickets = response.parsed_response["tickets"]
    @tickets = @tickets.paginate(:page => params[:page], :per_page => 25)

  end

  def show
  
    @urlTicket = "https://caw.zendesk.com/api/v2/tickets/#{(params[:id])}" 
    @response = HTTParty.get(@urlTicket, basic_auth: set_ticket, :headers => {'Content-Type' => 'application/json'} )
    @showTicket = @response.parsed_response["ticket"]

  if @showTicket.nil?
    render file: "#{Rails.root}/public/404.html" , status: :not_found  
  else
    @showTicket
  end 

  end 

def catch_404
  raise ActionController::RoutingError.new(params[:path])
end

private

  def set_ticket
    auth = {username: "the7thcapo@gmail.com", password: "123password123"}
  end

end
