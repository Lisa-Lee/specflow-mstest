Feature: MyFeature
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario Outline: Add two numbers
	Given I have entered <a> into the calculator
	And I have entered <b> into the calculator
	When I press add
	Then the result should be <c> on the screen

	Examples: 
	| a | b | c |
	| 1 | 2 | 3 |

