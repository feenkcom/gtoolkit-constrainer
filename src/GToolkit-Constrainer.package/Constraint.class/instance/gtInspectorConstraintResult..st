accessing
gtInspectorConstraintResult: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'RuleEvaluationResult' ];
		display: [ {self check constraint} ];
		children: [ :each | each children ];
		column: 'Subject' evaluated: [ :each | each subject gtDisplayString ];
		column: 'Breakers' evaluated: [ :each | each check constraintBreakers size gtDisplayString ];
		column: 'Matchers' evaluated: [ :each | each check constraintMatchers size gtDisplayString ]