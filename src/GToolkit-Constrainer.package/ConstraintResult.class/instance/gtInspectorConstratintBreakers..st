adding
gtInspectorConstratintBreakers: composite
	<gtInspectorPresentationOrder: 1>
	composite table
        title: ['Breakers'];
        display: [ self constraintBreakers ];
		  column: 'From' evaluated: #from;
		  column: 'To' evaluated: #to;
		  send: #value
