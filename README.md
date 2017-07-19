# README

This Ticket Viewer was built using

	* ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]

	* Rails 5.1.2

	* macOS Sierra

# Gems

	* 'will_paginate' for pagination

	* 'httparty' for handling restful web services

	* 'rspec-rails' for testing

# Installation 

	1. Download file in github https://github.com/thecapo/zenTicket, extract the file
	2. Run bundle install
	3. Open browser of choice, safari was used to build this app
	4. Type localhost:3000 or localhost:3000/tickets NOTE: must first login to my account through the website (caw.zendesk.com)
	5. Click show to see details of specific Ticket
	6. Or you can type localhost:3000/tickets/{id} where inside {id} should be a ticket number
	7. Once inside a specific ticket you can click the back link to go back to the list of tickets or back button of your chosen browser
	8. For moving around pages, you can also skip pages by clicking the navigator (page number) just below the Ticket header
