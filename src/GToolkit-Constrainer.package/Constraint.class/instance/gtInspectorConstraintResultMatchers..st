accessing
gtInspectorConstraintResultMatchers: composite
	<gtInspectorPresentationOrder: 2>
	composite table
		title: 'Matchers';
		display: [ self check constraintMatchers ];
		column: 'The element' evaluated: [ :each | each ];
		column: 'Matches' evaluated: [ :each | self predicate gtDisplayString ].