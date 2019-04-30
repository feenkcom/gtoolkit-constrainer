building
build: aComposite
	aComposite name: 'Sample report'.
	aComposite 
		addConstraint: GtSampleConstraintWithError new;
		addConstraint: GtSampleConstraintWithIssues new;
		addConstraint: GtSampleConstraintWithoutIssues new.