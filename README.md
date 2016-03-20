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


  	First action to do
		http://localhost:4567/create_user_master?password=PASSWORD
      Create a users called user_master.
      Some actions should be done only by this user

    Other actions:
      http://localhost:4567/authenticate_user?login=user_master&password=romalopes
        Authenticate user and return a 50 character TOKEN.

      http://localhost:4567/users?token=TOKEN
        Return all users.   Only user_master

      http://localhost:4567/create_user?token=TOKEN&login=romalopes&password=romalopes
        Create a new user.  Only user_master


      http://localhost:4567/create_card?token=<TOKEN>&key=<KEY>&credit_card_number=<CREDI_CARD_NUMBER>&password=<PASSWORD>
        Create a new card, encrypting the credit_card_number.  Password is a value passed by client to encrypt credit card number.

      http://localhost:4567/retrieve_credit_card_number?token=<TOKEN>&key=<KEY>&password=<PASSWORD>
        Retrieve the credit card number.  Password is an information passed by client to encrypt credit card number.