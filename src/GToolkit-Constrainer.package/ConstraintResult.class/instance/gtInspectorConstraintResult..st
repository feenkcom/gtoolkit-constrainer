debug
gtInspectorConstraintResult: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'RuleEvaluationResult' ];
		display: [ {self} ];
		children: [ :each | each children ];
		column: 'Subject' evaluated: [ :each | (each subject) gtDisplayString ];
		column: 'Constraint' evaluated: [ :each | each gtDisplayString ];
"		column: 'Constraint' evaluated: [ :each | each constraint conditionBlock sourceNode formattedCode ];"
		column: 'Breakers' evaluated: [ :each | each constraintBreakers size ];
		column: 'Matchers' evaluated: [ :each | each constraintMatchers size ]