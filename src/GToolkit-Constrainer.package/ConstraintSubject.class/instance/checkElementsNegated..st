visiting
checkElementsNegated: aConstraint
	| aResult |
	aResult := ConstraintResult new.
	elements
		do: [ :each | 
			(aConstraint evaluateConstraintOn: each)
							ifTrue: [ aResult addConstraintBreaker: each ];
				ifFalse: [ aResult addConstraintMatcher: each ]
				].
	aResult subject: self.
	^ aResult