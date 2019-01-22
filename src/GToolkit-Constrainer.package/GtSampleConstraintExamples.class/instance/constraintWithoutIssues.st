examples
constraintWithoutIssues
	<gtExample>
	| constraint |
	constraint := GtSampleConstraintWithoutIssues new.
	self assert: (constraint status isKindOf: GtConstraintWithoutIssuesStatus)