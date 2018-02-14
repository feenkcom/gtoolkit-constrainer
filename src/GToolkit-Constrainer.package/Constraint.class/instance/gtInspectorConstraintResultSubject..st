accessing
gtInspectorConstraintResultSubject: composite
	<gtInspectorPresentationOrder: 3>
	composite table
		title: 'Subject';
		display: [ self subject elements];
		column: 'Element' evaluated: [ :each | each ].