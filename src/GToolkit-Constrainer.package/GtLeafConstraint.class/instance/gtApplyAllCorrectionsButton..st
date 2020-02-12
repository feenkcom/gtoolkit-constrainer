corrections
gtApplyAllCorrectionsButton: anAction
	<gtAction>
	self hasCorrections
		ifFalse: [ ^ anAction noAction ].
	^ anAction explicit
		stencil: [ BrButton new
				look: BrGlamorousButtonLabelLook;
				background: Color white;
				layout: BlLinearLayout horizontal alignCenter;
				geometry: (BlRectangle cornerRadius: 3);
				margin: (BlInsets top: 3);
				constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent.
					c padding: (BlInsets all: 3) ];
				action: [ :button | button phlow spawnObject: self applyAllCorrections ];
				label: 'Fix' translated ]