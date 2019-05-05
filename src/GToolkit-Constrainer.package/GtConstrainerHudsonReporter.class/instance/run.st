running
run
	| leaftConstraints |
	leaftConstraints := self leafConstraints.
	
	[
		self ensureResultsFile.
		self ensureProgressFile.
		
	 	self startFor: leaftConstraints.
		leaftConstraints do: [ :aConstraint |
			self printConstraint: aConstraint ].
		self end. 
	] ensure: [  
		self ensureStreamsClosed ]
	