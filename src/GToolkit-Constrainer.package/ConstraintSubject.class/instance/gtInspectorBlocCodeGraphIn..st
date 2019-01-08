transformation
gtInspectorBlocCodeGraphIn: composite
	<gtInspectorPresentationOrder: 40>
	composite blocMondrian
		title: 'DAG graph (Bloc)';
		painting: [ :view :x :presentation |
			view nodes 
				shape: [ :each | 
					| text textElement |
					text := each gtDisplayString asRopedText.
"					text attributes: { 
    					BrFontSizeAttribute size: 30
					}."
					textElement := BlTextElement new.
                textElement text: text.
					textElement constraintsDo: [ :c |
						 c horizontal matchParent.
					    c vertical matchParent ].
					textElement
						addEventHandlerOn: BlClickEvent do: [ :anEvent | presentation selection: each ].
					textElement ];
				with: (self withDeepCollect: #parents) asSet.
			view edges 
				fromCenterBottom; toCenterTop;
				connectToAll: #parents.
			view layout dominanceTree  ]