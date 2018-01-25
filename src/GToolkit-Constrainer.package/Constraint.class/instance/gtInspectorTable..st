debug
gtInspectorTable: composite
	<gtInspectorPresentationOrder: 1>
	composite table
        title: ['EvaluationResult'];
        display: [ self check ];
		  column: 'Subject' evaluated: [:each | each class ];
		  column: 'Breakers' evaluated: [:each | each constraintBreakers size];
		  column: 'Matchers' evaluated: [:each | each constraintMatchers size];
		  send: #value
