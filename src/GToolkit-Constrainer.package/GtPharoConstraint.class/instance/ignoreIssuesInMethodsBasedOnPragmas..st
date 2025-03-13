selecting
ignoreIssuesInMethodsBasedOnPragmas: aCollection
	^ aCollection select: [ :each | 
		(self shouldIgnoreBasedOnMethodPragma: each) not ]