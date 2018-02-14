accessors
matchers
	|newConstraint|
	newConstraint := Constraint new
	subject: (ConstraintSubject new the: self constraintMatchers collect: #yourself).
	newConstraint addChildConstraint: self constraint.
	^ newConstraint 