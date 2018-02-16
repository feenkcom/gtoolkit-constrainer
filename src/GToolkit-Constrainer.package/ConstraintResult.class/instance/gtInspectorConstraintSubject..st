debug
gtInspectorConstraintSubject: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'RuleEvaluationResult' ];
		display: [ {self} ];
		children: [ :each | (each constraint) children collect: [:kid | kid check]];
		column: 'Subject' evaluated: [ :each | each subject gtDisplayString ];
		column: 'Must' evaluated: [ :each | each constraint predicate gtDisplayString ];
		column: 'Breakers' evaluated: [ :each | each constraintBreakers size gtDisplayString ];
		column: 'Matchers' evaluated: [ :each | each constraintMatchers size gtDisplayString ]