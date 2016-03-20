### Encrypted card api
API client the calls encrypted_card_api.<br>
		GitHub<br>
		  https://github.com/romalopes/lawn-mowing-api<br>
		Travis<br>
		  https://travis-ci.org/romalopes/lawn-mowing-api<br>
		Heroku<br>
		  http://lawn-mowing-api.herokuapp.com/ <br>
		  To reset the database
		     http://lawn-mowing-api.herokuapp.com/reset_database
		  To execute the manual mower system
		      http://lawn-mowing-api.herokuapp.com/execute/:id


		To run locally:
		  $ git clone   https://github.com/romalopes/encrypted_card_client.git
			$ cd encrypted_card_client
			$ bundle install

		 # To test
		  	$ bundle exec ruby test.rb

		 # To run the api web server
		  	$ bundle exec ruby encrypted_card_client.rb


		  	Just to test
				http://localhost:4567/create_user_master?password=PASSWORD

