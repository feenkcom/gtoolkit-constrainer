activation
activate
	self activateHelp
		ifTrue: [ ^ self ].
		
	(self hasOption: 'report')
		ifFalse: [ ^ self exitFailure: 'Missing report name' ].
	
	self runReport: (self optionAt: 'report').
	self exitSuccess.