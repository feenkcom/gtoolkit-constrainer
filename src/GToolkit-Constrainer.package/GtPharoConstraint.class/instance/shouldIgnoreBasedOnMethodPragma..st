selecting
shouldIgnoreBasedOnMethodPragma: aMethod
	^ aMethod pragmas anySatisfy: [ :aPragma | 
		(aPragma selector = #gtIgnoreConstraint:) and: [ 
			aPragma arguments anyOne = self class name ] ] 