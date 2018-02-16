transformation
gtInspectorConstraintSubject: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'ConstraintSubject' ];
		display: [ {self} ];
		children: [ :each | each children ];
		column: 'Subject' evaluated: [ :each | each gtDisplayString ];
		column: 'Block' evaluated: [ :each | each block gtDisplayString ];		
		column: 'Matchers' evaluated: [ :each | each elements size gtDisplayString ];
		column: 'Breakers' evaluated: [ :each | each breakerElements size gtDisplayString ]