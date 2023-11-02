corrections
gtApplyAllCorrectionsButton: anAction
	<gtAction>
	self hasCorrections ifFalse: [ ^ anAction noAction ].
	^ anAction explicit
		stencil: [ BrButton new
				aptitude: BrGlamorousButtonWithLabelAptitude;
				action: [ :button | button phlow spawnObject: self applyAllCorrections ];
				label: 'Fix' translated ]