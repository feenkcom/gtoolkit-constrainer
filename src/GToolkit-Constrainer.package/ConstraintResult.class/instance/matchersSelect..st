accessors
matchersSelect: aBlock
	|newConstraint|
	newConstraint := Constraint new
	subject: (ConstraintSubject new the: self constraintMatchers select: aBlock).
	newConstraint addChildConstraint: self constraint.
	^ newConstraint 