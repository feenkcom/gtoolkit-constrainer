accessors
breakers
	|asSubject|
	asSubject := (ConstraintSubject new the: self constraintBreakers block: #yourself).
	asSubject parentConstraint: (self constraint).
	^ asSubject 