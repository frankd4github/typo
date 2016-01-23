Feature: Administer Categories
  As a blog administrator
  In order to provide a better experience for blog users
  I want to be able to administer categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: See all categories
    Given I am on the categories page
    Then I should see "General"
    # When I fill in "article_title" with "Foobar"
    # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    # And I press "Publish"
    # Then I should be on the admin content page
    # When I go to the home page
    # Then I should see "Foobar"
    # When I follow "Foobar"
    # Then I should see "Lorem Ipsum"

