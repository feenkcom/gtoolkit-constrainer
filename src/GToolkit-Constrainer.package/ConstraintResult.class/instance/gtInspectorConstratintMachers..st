adding
gtInspectorConstratintMachers: composite
	<gtInspectorPresentationOrder: 0>
	composite table
        title: ['Matchers'];
        display: [ self constraintMatchers ];
		  column: 'From' evaluated: #from;
		  column: 'To' evaluated: #to;
		  send: #value