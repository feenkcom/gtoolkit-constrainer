accessors
matchersFlatCollect: aBlock
	|newConstraint|
	newConstraint := Constraint new
	subject: (ConstraintSubject new the: self constraintMatchers flatCollect: aBlock).
	newConstraint addChildConstraint: self constraint.
	^ newConstraint 