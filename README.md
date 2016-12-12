# specflow-mstest
This is an example project to reproduce an issue of Pickles report with vstest runner, here is the link of the issue:
https://github.com/picklesdoc/pickles/issues/400#issuecomment-265119169

Please run RunThis.ps1 under the root folder of the solution

Will see the below error and the Pickles report is not generated: `Pickles did not complete successfully Object reference not set to an instance of an object.`

However, the report is generated if change the Scenario Outline to Scenario:
```gherkin
Scenario: Add two numbers
	Given I have entered '<aa>' into the calculator
	And I have entered '<bb>' into the calculator
	When I press add
	Then the result should be '<cc>' on the screen
	#Examples: 
	#| aa | bb | cc |
	#| 1  | 2  | 3  |
```
