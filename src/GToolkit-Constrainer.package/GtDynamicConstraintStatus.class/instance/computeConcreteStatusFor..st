accessing
computeConcreteStatusFor: aConstraint
	[
		| issues |
		issues := aConstraint issues.
		^ issues isEmpty 
			ifTrue: [ GtConstraintWithoutIssuesStatus new ]
			ifFalse: [ GtConstraintWithIssuesStatus new issues: issues ]
	] on: Error do: [ :error | 
		^ GtConstraintWithErrorStatus new issuesComputationError: error freeze ]