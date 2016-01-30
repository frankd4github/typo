Feature: Merge Articles
  As a blog administrator
  In order to minimize duplication
  I want to be able to merge articles on my blog

  Background:
    Given the blog is set up
    # And I am logged into the admin panel

  Scenario: Non admins cannot merge articles
    Given I am logged in as a publisher
    And I am on the edit page for article "Article 1"
    Then I should not see "Merge Articles"
    
  Scenario: Merged articles should contain the text of both articles
    Given I am logged into the admin panel
    And I am on the edit page for article "Article 1"
    When I fill in "merge_with" with the id for article "Article 2"
    And I press "Merge"
    And I am on the edit page for article "Article 1"
    Then I should see "First blog article"
    And I should see "Second blog article"

    