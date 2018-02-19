transformation
gtInspectorConstraintRightInput: composite
	<gtInspectorPresentationOrder: 3>
	composite table
		title: [ 'Right Input' ];
		display: [ self otherCollection ];
		column: 'Element' evaluated: [ :each | each gtDisplayString ].