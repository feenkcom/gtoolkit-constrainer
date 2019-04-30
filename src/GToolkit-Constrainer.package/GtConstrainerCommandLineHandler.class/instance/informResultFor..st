private
informResultFor: reportRunner
	self stdout 
		<< ('{1} run, {2} passes, {3} failures, {4} errors.'
			format: {
				reportRunner constraintsCount.
				reportRunner passedCount.
				reportRunner failureCount.
				reportRunner errorCount })
		<< OSPlatform current lineEnding