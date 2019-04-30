examples
compositeConstraintWithDifferentConstraints
	<gtExample>
	| composite |
	composite := GtCompositeConstraint new.
	composite 
		addConstraint: GtSampleConstraintWithoutIssues new;
		addConstraint: GtSampleConstraintWithError new;
		addConstraint: GtSampleConstraintWithoutIssues new.
	self assert: composite status isNeutral.
	^ composite