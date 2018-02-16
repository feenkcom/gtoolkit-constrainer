basic
gtInspectorConstraintSubjectElements: composite
	<gtInspectorPresentationOrder: 2>
	composite table
		title: [ 'Subject Elements' ];
		display: [ self elements  ];
		column: 'Element' evaluated: [ :each | each gtDisplayString ].