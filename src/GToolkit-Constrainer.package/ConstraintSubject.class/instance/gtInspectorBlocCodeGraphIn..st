transformation
gtInspectorBlocCodeGraphIn: composite
	<gtInspectorPresentationOrder: 40>
	composite blocMondrian
		title: 'DAG graph (Bloc)';
		painting: [ :view :x :presentation |
			view nodes 
				shape: [ :each | 
					| text editor editorElement |
					text := BrRopedText string: each gtDisplayString.
					editor := BrTextEditor new.
					editor text: text.
					editorElement := BrEditorElement new.
					editorElement constraintsDo: [ :c |
					    c horizontal matchParent.
					    c vertical matchParent ].
					editorElement editor: editor.
					editorElement
						addEventHandlerOn: BlClickEvent do: [ :anEvent | presentation selection: each ].
					editorElement ];
				with: (self withDeepCollect: #parents) asSet.
			view edges 
				fromCenterBottom; toCenterTop;
				connectToAll: #parents.
			view layout dominanceTree  ]