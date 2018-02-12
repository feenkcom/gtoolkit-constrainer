debug
gtInspectorConstraintResultMatchers: composite
	<gtInspectorPresentationOrder: 2>
	composite table
		title: 'Matchers';
		display: [ self constraintMatchers ];
		column: 'The element' evaluated: [ :each | each ];
		column: 'Matches' evaluated: [ :each | self constraint gtDisplayString ].