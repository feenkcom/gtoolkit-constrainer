examples
constraintWithError
	<gtExample>
	<return: #GtSampleConstraintExamples>
	| constraint |
	constraint := GtSampleConstraintWithError new.
	self assert: (constraint status isKindOf: GtConstraintWithErrorStatus)