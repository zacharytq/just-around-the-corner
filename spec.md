Specs:
- [x] Use Sinatra to build the app
    My app controllers all required Sinatra::Base.
- [x] Use ActiveRecord for storing information in a database
    My models all used ActiveRecord to associate the models with one another
- [x] Include more than one model class (e.g. User, Post, Category)
    Under the models folder, I have three models: User, Friend, Gift
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    The user has_many friends, and friend has_many gifts.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    The friend belongs to a user, and a gift belongs to a friend.
- [x] Include user accounts with unique login attribute (username or email)
    I used has_secure_password and validate_presence_of make sure the user has a name, email, and secure password.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    The gift does have all crud routes.
- [x] Ensure that users can't modify content created by other users
    I have two helper functions that make sure a user is logged in and the current user is the owner of an object before editing.
- [x] Include user input validations
    Creating a gift requires all form fields to be filled out.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
    If you don't fill out all the fields, Rack::Flash shows a message to the user on the create gift page that tells them they need to fill out the entire form.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
