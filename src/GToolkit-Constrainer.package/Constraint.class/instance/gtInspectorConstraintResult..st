accessing
gtInspectorConstraintResult: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'RuleEvaluationResult' ];
		display: [ {self check constraint} ];
		children: [ :each | each children ];
		column: 'Subject' evaluated: [ :each | each subject gtDisplayString ];
		column: 'Breakers' evaluated: [ :each | each result constraintBreakers size gtDisplayString ];
		column: 'Matchers' evaluated: [ :each | each result constraintMatchers size gtDisplayString ]