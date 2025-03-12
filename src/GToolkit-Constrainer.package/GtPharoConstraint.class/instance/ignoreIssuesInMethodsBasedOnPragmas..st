selecting
ignoreIssuesInMethodsBasedOnPragmas: aCollection
	^ aCollection reject: [ :each | 
		self shouldIgnoreBasedOnMethodPragma: each ]