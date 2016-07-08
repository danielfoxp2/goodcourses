feature: Steps definitions automatically created

  As a developer using white_bread to specify behaviors of my app
  want that the step definitions template to be created automatically
  So that I optimize use of time and minimize work done in unimportant tasks focusing 
  in write the specifications and the code needed to comply the acceptance criteria

  Scenario: Execution of a new feature that hasn't any step definition
    Given I create a feature file with two scenarios
    And each scenario has three steps
    When I execute White-Bread for this feature
    Then I should see it fails because no step definitions exist for this feature
    And I should see a possible initial implementation of these steps definitions
    And I should be asked if I want that White-Bread creates these steps definitions

  Scenario: Creation of steps definitions initial implementation 
    Given I executed a feature that has zero step definition implemented
    And I am asked if I want that White-Bread creates these steps definitions
    When I answer yes
    Then a step definition file is created
    And the initial implementation is inserted in the new step definition file
    And I should be informed that the steps definitions were successfully created
    And I should be informed where the file was created

  Scenario: Adding new step in a feature that already has steps definitions implemented
    Given I am editing a feature to add a new step
    When I execute the White-Bread for this feature
    Then I should see the status of the previous steps till the new step
    And I should see the feature fails because the new step is non-implemented
    And I should see the suggested implementation of the new step
    And I should not be asked if I want to automatically create the new step
