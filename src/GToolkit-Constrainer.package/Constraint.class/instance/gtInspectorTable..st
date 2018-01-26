debug
gtInspectorTable: composite
	<gtInspectorPresentationOrder: 1>
	composite table
		title: 'Evaluator';
		display: [ self check ];
		column: 'Subject' evaluated: [:each | each gtDisplayString ];
		column: 'Breakers' evaluated: [:each | 
			each constraintBreakers size];
		column: 'Matchers' evaluated: [:each | each constraintMatchers size];
		send: #value

