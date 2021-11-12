Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator]($projectname$/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

@mytag
Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120
	
Scenario Outline: Add two numbers permutations
	Given the first number is <FirstNumber>
	And the second number is <SecondNumber>
	When the two numbers are added
	Then the result should be <Result>
	
Examples: 
	| FirstNumber | SecondNumber | Result |
	| 5           | 10           | 15     |
	| 20          | 90           | 110    | 
	