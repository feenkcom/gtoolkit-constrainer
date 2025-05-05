examples
constraintWithoutIssues
	<gtExample>
	<return: #GtSampleConstraintExamples>
	| constraint |
	constraint := GtSampleConstraintWithoutIssues new.
	self assert: (constraint status isKindOf: GtConstraintWithoutIssuesStatus)