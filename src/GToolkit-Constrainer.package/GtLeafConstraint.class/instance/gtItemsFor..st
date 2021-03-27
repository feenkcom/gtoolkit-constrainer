ui
gtItemsFor: aView
	<gtView>
	| list column |
	list := self issues gtItemsFor: aView.
	list 
		title: 'Issues';	
		priority: 1.
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