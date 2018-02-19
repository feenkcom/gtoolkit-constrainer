transformation
gtInspectorConstraintLeftInput: composite
	<gtInspectorPresentationOrder: 2>
	composite table
		title: [ 'Left Input' ];
		display: [ self the  ];
		column: 'Element' evaluated: [ :each | each gtDisplayString ].