### Lawn Mowing API
1 - API REST that manage lawns and mower and call manual mowing system returning Json values.<br>
		GitHub<br>
		  https://github.com/romalopes/lawn-mowing-api<br>
		Travis<br>
		  https://travis-ci.org/romalopes/lawn-mowing-api<br>
		Heroku<br>
		  http://lawn-mowing-api.herokuapp.com/ <br>
		  http://lawn-mowing-api.herokuapp.com/renew_data_base
			http://lawn-mowing-api.herokuapp.com/execute/:id


		To run locally:
		  $ git clone   https://github.com/romalopes/lawn-mowing-api.git
			$ cd lawn-mowing-api
			$ bundle install

		 # To test
		  	$ bundle exec ruby test.rb

		 # To run the api web server
		  	$ bundle exec ruby api_lawn.rb


		  	Just to test
				http://localhost:4567/renew_data_base  (set the database with the values from example)

				http://localhost:4567/execute/:id



### Lawn Mowing GEM
2 - GEM reponsible for run the manual and automatic systems.  To run both systems the user has to cal a file which is located in bin directory.
    <p>GitHub<br>
      https://github.com/romalopes/lawn_mowing<br>
    Travis<br>
      https://travis-ci.org/romalopes/lawn_mowing<br>
    </P>

    To run locally:
      $ git clone https://github.com/romalopes/lawn_mowing.git
      $ cd lawn_mowing
      $ bundle install

    Testing:
      $ rspec spec
    
    Running the GEM
    Manual Mowing system:
      Run:
        $ ruby -Ilib ./bin/lawn_mowing.rb "manual_mowing.txt"
      File format:
        Fist line has informatino of width and height.
        Following lines have position of each mower, heading and sequence of moves.
        Ex:
        5 5 
        1 2 N
        LMLMLMLMM
        3 3 E
        MRMRMRMRMM
    Automatic Mowing system:
      Run:
        $ ruby -Ilib ./bin/lawn_mowing.rb "automatic_mowing.txt"
      File format:
        1 Line with 3 information, width and height of lawn and number of mowers.
      Ex: 5 5 3
