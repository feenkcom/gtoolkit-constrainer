debug
gtInspectorConstraintResult: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'ConstraintResult' ];
		display: [ {self} ];
		children: [ :each | each children ];
		column: 'Subject' evaluated: [ :each | each gtDisplayString ];
		column: 'Constraint' evaluated: [ :each | each constraint conditionBlock asText];
		column: 'Breakers' evaluated: [ :each | each constraintBreakers size ];
		column: 'Matchers' evaluated: [ :each | each constraintMatchers size ]