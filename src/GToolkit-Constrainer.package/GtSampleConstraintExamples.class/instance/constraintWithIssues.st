examples
constraintWithIssues
	<gtExample>
	<return: #GtSampleConstraintWithIssues>
	| constraint |
	constraint := GtSampleConstraintWithIssues new.
	self assert: (constraint status isKindOf: GtConstraintWithIssuesStatus).
	^ constraint