ui
gtItemsFor: aView
	<gtView>
	| list column |
	list := aView columnedList.
	list
		title: 'Issues';
		priority: 1;
		items: [ self issues ];
		column: 'Index'
			text: [ :eachItem :eachIndex | eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Item' text: [ :eachItem | eachItem gtDisplayText ];
		actionUpdateButton.

	self hasCorrections
		ifTrue: [ column := list column.
			column width: 80.
			column title: 'Correction' translated.
			column
				stencil: [ :each | 
					(self correctionActionFor: each)
						ifNil: [ BlElement new size: 0 @ 0 ]
						ifNotNil: [ :action | 
							BrButton new
								aptitude: BrGlamorousButtonWithLabelAptitude;
								label: 'Fix' translated;
								action: [ :button | button phlow spawnObject: (action cull: each cull: nil) ] ] ] ].
	^ list