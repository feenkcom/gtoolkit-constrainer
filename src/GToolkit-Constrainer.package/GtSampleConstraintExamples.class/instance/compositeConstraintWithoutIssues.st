examples
compositeConstraintWithoutIssues
	<gtExample>
	<return: #GtCompositeConstraint>
	| composite constraint |
	composite := GtCompositeConstraint new.
	constraint := GtSampleConstraintWithoutIssues new.
	composite addConstraint: constraint.
	self assert: composite status isNeutral.
	^ composite