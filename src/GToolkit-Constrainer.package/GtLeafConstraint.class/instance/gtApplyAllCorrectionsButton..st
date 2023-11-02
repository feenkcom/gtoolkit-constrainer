corrections
gtApplyAllCorrectionsButton: anAction
	<gtAction>
	self hasCorrections ifFalse: [ ^ anAction noAction ].
	^ anAction button
		label: 'Fix' translated;
		priority: 10;
		stencil: [ :button | button phlow spawnObject: self applyAllCorrections ]