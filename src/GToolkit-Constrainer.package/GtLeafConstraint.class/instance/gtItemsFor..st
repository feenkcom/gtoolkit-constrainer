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
			column width: 60.
			column title: 'Correction' translated.
			column
				stencil: [ :each | 
					(self correctionActionFor: each)
						ifNil: [ BlElement new size: 0 @ 0 ]
						ifNotNil: [ :action | 
							BrButton new
								background: Color white;
								aptitude: BrTextLabelAptitude + BrShadowAptitude new;
								constraintsDo: [ :c | 
									c horizontal fitContent.
									c vertical fitContent.
									c padding: (BlInsets all: 5) ];
								geometry: (BlRoundedRectangleGeometry cornerRadius: 10);
								layout: BlLinearLayout horizontal alignCenter;
								label: 'Fix' translated;
								action: [ :button | button phlow spawnObject: (action cull: each cull: nil) ] ] ] ].
	^ list