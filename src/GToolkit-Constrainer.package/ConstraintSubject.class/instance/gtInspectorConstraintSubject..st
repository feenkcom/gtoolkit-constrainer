basic
gtInspectorConstraintSubject: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ 'Subject The' ];
		display: [ {self the} ];
		column: 'Element' evaluated: [ :each | each gtDisplayString ].