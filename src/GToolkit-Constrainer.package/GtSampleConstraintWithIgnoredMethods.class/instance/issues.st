accessing
issues
	^ self ignoreIssuesInMethodsBasedOnPragmas: { GtSampleConstraintWithIgnoredMethods >> #ignoredMethodA . GtSampleConstraintWithIgnoredMethods >> #notIgnoredMethodB }