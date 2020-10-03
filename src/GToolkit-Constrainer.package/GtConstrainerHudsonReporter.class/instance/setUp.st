running
setUp
	self ensureResultsFile.
	self ensureProgressFile.
	
	self startFor: self leafConstraints.