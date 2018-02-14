basic
gtInspectorConstraintSubjectElements: composite
	<gtInspectorPresentationOrder: 1>
	composite table
		title: [ 'Subject Elements' ];
		display: [ {self elements } ];
		column: 'Element' evaluated: [ :each | each gtDisplayString ].