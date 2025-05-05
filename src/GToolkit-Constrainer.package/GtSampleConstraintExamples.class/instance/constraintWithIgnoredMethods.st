examples
constraintWithIgnoredMethods
	<gtExample>
	<return: #GtSampleConstraintWithIgnoredMethods>
	| constraint |
	constraint := GtSampleConstraintWithIgnoredMethods new.
	self assert: (constraint status isKindOf: GtConstraintWithIssuesStatus).
	self assert: constraint issues size = 1.
	self
		assert: (constraint issues
				includes: GtSampleConstraintWithIgnoredMethods >> #notIgnoredMethodB).
	^ constraint