debug
gtInspectorConstraintResultMatchers: composite
	<gtInspectorPresentationOrder: 2>
	composite table
		title: [ 'Matchers' ];
		display: [ self constraintMatchers ];
		column: 'The' evaluated: [ :each | self subject the ];
		column: 'Of' evaluated: [ :each | each from gtDisplayString ];
		column: 'Is' evaluated: [ :each | each to gtDisplayString ];
		column: 'And matches' evaluated: [ :each | self constraint gtDisplayString ].