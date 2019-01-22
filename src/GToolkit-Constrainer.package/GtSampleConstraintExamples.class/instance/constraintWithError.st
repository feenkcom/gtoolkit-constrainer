examples
constraintWithError
	<gtExample>
	| constraint |
	constraint := GtSampleConstraintWithError new.
	self assert: (constraint status isKindOf: GtConstraintWithErrorStatus)