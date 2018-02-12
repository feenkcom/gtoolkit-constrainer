debug
gtInspectorConstraintResultBreakers: composite
	<gtInspectorPresentationOrder: 1>
	composite table
		title: 'Breakers';
		display: [ self constraintBreakers ];
		column: 'The element' evaluated: [ :each | each ];
		column: 'Breaks' evaluated: [ :each | self constraint gtDisplayString ].