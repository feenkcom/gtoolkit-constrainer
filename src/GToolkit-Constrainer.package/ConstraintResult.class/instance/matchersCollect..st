accessors
matchersCollect: aBlock
	|newConstraint|
	newConstraint := Constraint new
	subject: (ConstraintSubject new the: self constraintMatchers collect: aBlock).
	newConstraint addChildConstraint: self constraint.
	^ newConstraint 