# README

This Ticket Viewer was built using

	* ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]

	* Rails 5.1.2

	* macOS Sierra

## Gems

	* 'will_paginate' for pagination

	* 'httparty' for handling restful web services

	* 'rspec-rails' for testing

## Installation 

	1. Download file in github https://github.com/thecapo/zenTicket, extract the file
	2. Run bundle install on your terminal

## How to use

	1. Open browser of choice, safari was used to build this app
	2. Type localhost:3000 or localhost:3000/tickets NOTE: must first login to my account through the website (caw.zendesk.com)
	3. Click show to see details of specific Ticket
	4. Or you can type localhost:3000/tickets/{id} where inside {id} should be a ticket number
	5. Once inside a specific ticket you can click the back link to go back to the list of tickets or back button of your chosen browser
	6. For moving around or skipping pages click the navigator (page number) just below the Ticket header
