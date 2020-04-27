selecting
ignoreIssuesInMethodsBasedOnPragmas: aCollection
	^ aCollection select: [ :each | 
		each pragmas noneSatisfy: [ :aPragma | 
			(aPragma selector = #gtIgnoreConstraint:) and: [ 
				aPragma arguments anyOne = self class name ] ] ]