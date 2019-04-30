private
printConstraint: aConstraint
	| status |
	self logConstraintStart: aConstraint.
	self printConstraintStart: aConstraint.
	status := aConstraint status.
	status isWithIssues ifTrue: [
		failureCount := failureCount + 1.
		self printFailureFor: aConstraint withStatus: status ].
	status isWithError ifTrue: [
		errorCount := errorCount + 1.
		self printErrorFor: aConstraint withStatus: status ].
	status isNeutral ifTrue: [
		resultsStream
			tab; tab;
			nextPutAll: '<system-out>';
				nextPutAll: (self encode: aConstraint name);
			nextPutAll: '</system-out>';
			lf ].
	self printConstraintEnd: aConstraint.
	self logConstraintEnd: aConstraint