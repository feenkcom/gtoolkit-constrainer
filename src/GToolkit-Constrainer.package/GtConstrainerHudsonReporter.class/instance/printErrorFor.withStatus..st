private
printErrorFor: aConcern withStatus: aConcernStatus
	resultsStream 
		tab; tab; nextPutAll: '<error type="'.
	self 
		printException: aConcernStatus issuesComputationError 
		stack: aConcernStatus issuesComputationError signalerContext stack.
	resultsStream nextPutAll: '</error>'; lf.