accessing
gtInspectorConstraintResultSubject: composite
	<gtInspectorPresentationOrder: 3>
	composite table
		title: 'Subject';
		display: [ self subject elements];
		column: ('SubjectInput ', self subject block gtDisplayString) evaluated: [ :each | each ].