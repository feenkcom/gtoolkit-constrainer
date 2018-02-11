debug
gtInspectorConstraintResultBreakers: composite
	<gtInspectorPresentationOrder: 1>
	composite table
		title: [ 'Breakers' ];
		display: [ self constraintBreakers ];
		column: 'The' evaluated: [ :each | self subject the ];
		column: 'Of' evaluated: [ :each | each from gtDisplayString ];
		column: 'Is' evaluated: [ :each | each to gtDisplayString ];
		column: 'And breaks' evaluated: [ :each | self constraint gtDisplayString ].