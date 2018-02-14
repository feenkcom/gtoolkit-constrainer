visiting
checkElements: aConstraint
	| aResult |
	aResult := ConstraintResult new.
	elements
		do: [ :each | 
			(aConstraint evaluateConstraintOn: each)
							ifTrue: [ aResult addConstraintMatcher: each ];
				ifFalse: [ aResult addConstraintBreaker: each ]
				].
	aResult subject: self.
	^ aResult