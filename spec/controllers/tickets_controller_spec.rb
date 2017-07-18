require 'rails_helper'

RSpec.describe TicketsController, type: :controller do
	describe "Tickets" do
		before do
			@urlTicket = "https://caw.zendesk.com/api/v2/tickets/"
    	@auth = {username: "the7thcapo@gmail.com", password: "1boangkaayoka1"}	
		end

		it "lists the tickets" do
			get :index
			expect(response).to be_success
		end

		it "should respond to parsed_response" do
			response = HTTParty.get(@urlTicket, basic_auth: @auth, :headers => {'Content-Type' => 'application/json'} )
			expect(response.respond_to?(:parsed_response)).to be_truthy
		end
	end
end