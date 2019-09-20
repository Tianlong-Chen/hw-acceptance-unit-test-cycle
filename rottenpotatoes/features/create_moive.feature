Feature: create movie 

  As a rottenpotatoes user
  So that I can properly manage the list of movies
  I want to be able to create a movie
  
Background: movies in database

   Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
  
Scenario: creating a new movie
  When I am on the RottenPotatoes home page
  And I follow "Add new movie"
  And I fill in "Title" with "Test Movie"
  And I select "R" from "Rating"
  And I select "2018" from "movie_release_date_1i"
  And I select "Jan" from "movie_release_date_2i"
  And I select "1" from "movie_release_date_3i"
  And I press "Save Changes"
  Then I should see "Test Movie was successfully created."
  And I should see "R"
  And I should see "2018-01-01"