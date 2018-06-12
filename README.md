### Code Test ###

# Setup
- You will probably need to change the application.yml file to your local database credentials
```
bundle install
rake db:create
rake db:migrate
rake db:seed_fu
rails s
```

# Test
1. Commit code to your repository at start
2. Make at least one of the buttons on the index page work(show, delete, create)
3. Use javascript/jQuery to connect the hide button. The button should replace the all the characters except the last 4, with *.
Example: 4111111111111111 -> ************1111

# Extra Credit(but not required)
1. Create a new migration for a user
2. Write some tests for pay_accounts
3. Build a navigation bar
4. Feel free to add anything you might feel adds to the project