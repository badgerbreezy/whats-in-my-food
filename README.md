# What's in my Food

### Versions

Ruby 2.5.3

Rails 5.1.7

### Setup

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}``
- `rails s`


### Story

As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes"
(Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
Then I should see a total of the number of items returned by the search.
Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
And for each of the foods I should see:
- The food's GTIN/UPC code
- The food's description
- The food's Brand Owner
- The food's ingredients
