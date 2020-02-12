examples
constraintWithIssues
	<gtExample>
	| constraint |
	constraint := GtSampleConstraintWithIssues new.
	self assert: (constraint status isKindOf: GtConstraintWithIssuesStatus).
	^ constraint