@brands
Feature: Brands
  In order to have brands on my website
  As an administrator
  I want to manage brands

  Background:
    Given I am a logged in refinery user
    And I have no brands

  @brands-list @list
  Scenario: Brands List
   Given I have brands titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of brands
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @brands-valid @valid
  Scenario: Create Valid Brand
    When I go to the list of brands
    And I follow "Add New Brand"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 brand

  @brands-invalid @invalid
  Scenario: Create Invalid Brand (without name)
    When I go to the list of brands
    And I follow "Add New Brand"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 brands

  @brands-edit @edit
  Scenario: Edit Existing Brand
    Given I have brands titled "A name"
    When I go to the list of brands
    And I follow "Edit this brand" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of brands
    And I should not see "A name"

  @brands-duplicate @duplicate
  Scenario: Create Duplicate Brand
    Given I only have brands titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of brands
    And I follow "Add New Brand"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 brands

  @brands-delete @delete
  Scenario: Delete Brand
    Given I only have brands titled UniqueTitleOne
    When I go to the list of brands
    And I follow "Remove this brand forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 brands
 