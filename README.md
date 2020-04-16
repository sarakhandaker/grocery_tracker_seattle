# README

## Welcome to OUTOFSTOCK

This app keeps track of missing items at grocery stores by allowing users to report missing items on thier visits to the grocery store. 

### User Stories 
1. Users can log in and CRUD their account with a password
2. Users can see all stores and their distances
3. Users can CRUD a visit to the grocery store (with date visited)
4. Users can look up nearest grocery store with specific item
5. Users can notify, anyone else who went to that store that day when sick
6. Users can see which stores have the most visits and least
7. See data on least avaliable products
8. Best day of the week to do groceries (least visits)


### Prerequisites

The setups steps expect following tools installed on the system.
Github
Ruby 2.6.1
Rails 6.0.2

1. Check out the repository
git clone https://github.com/sarakhandaker/grocery_tracker_seattle.git

2. Run the following commands to create and setup the database.

rails db:migrate
rails db:seed

4. Start the Rails server
You can start the rails server using the command given below.
rails s
And now you can visit the site with the URL http://localhost:3000

*Note: To create admin account, set user.admin to true in db*