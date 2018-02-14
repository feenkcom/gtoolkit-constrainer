debug
gtInspectorConstraintSubject: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'RuleEvaluationResult' ];
		display: [ {self constraint} ];
		children: [ :each | each children ];
		column: 'Subject' evaluated: [ :each | each subject gtDisplayString ];
		column: 'Must' evaluated: [ :each | each predicate gtDisplayString ];
		column: 'Breakers' evaluated: [ :each | each result constraintBreakers size gtDisplayString ];
		column: 'Matchers' evaluated: [ :each | each result constraintMatchers size gtDisplayString ]