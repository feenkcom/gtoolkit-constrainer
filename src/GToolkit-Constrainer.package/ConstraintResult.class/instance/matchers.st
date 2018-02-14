accessors
matchers
	|asSubject|
	asSubject := (ConstraintSubject new the: self constraintMatchers block: #yourself).
	asSubject parentConstraint: (self constraint).
	^ asSubject 