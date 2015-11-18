
In this project there are four scripts written in ruby language.
        - postgress.rb
                load data into the postgressql database.(Already 100 data loaded.)
        - mongo.rb
                load data into the mongoDb database. (Already 100 data loaded.)
        - redis.rb
                load data into the redis database. (Already 100 data loaded.)
        - Retrive_post.rb
                It will ask user input to retrive the data. Id and Year will be asked. Id will retrive onle one result while                    year will return multiple result. 
        - Retrive_mongo.rb
                It will ask user input to retrive the data. Id and Year will be asked. Id will retrive onle one result while                    year will return multiple result.
        - Retrive_redis.rb
                It will ask user input to retrive the data. Id and Year will be asked. Id will retrive onle one result while                    year will return multiple result.



1. What is your external data source used to populate your Heroku data sources?
        


      I have used data of New York City Leading Causes of Death from http://catalog.data.gov/dataset/new-york-city-leading-causes-of-death-ce97f. From this I have used following columns.
            - Ethnicity
            - Sex
            - Cause Of Death
            - Year
            - id (This one is not used from data, I manually created the unique id for each recoed.)
           
    
2. What are the Heroku toolbelt commands to execute the scripts?


        Heroku Commands:
                First for local after creating scripts
                        - git add .
                        - git commit -m "Demo"
                        - ruby scriptname.rb
                After everything is ok push it on heroku
                        - git add .
                        - git commit -m "Demo"
                        - git push heroku master
                        - heroku run ruby scriptname.rb
                
        
3. What aspect of the implementation did you find easy, if any, and why?


        All the databases were almost new so it was quite bit challenging.
        
        
4. What aspect of the implementation did you find hard, if any, and why?


        During this project there was some error regarding gem 'pg' on windows machine. I spent aplmost two weeks to figure what         is the problem. However, at the end I could not figure it out and I have to borrow my friend's laptop(OS X) to complate         the project.

      
