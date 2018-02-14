debug
gtInspectorConstraintResultSubject: composite
	<gtInspectorPresentationOrder: 3>
	composite table
		title: 'SubjectElements';
		display: [ self subject elements];
		column: ('SubjectInput ', self subject block gtDisplayString) evaluated: [ :each | each ].