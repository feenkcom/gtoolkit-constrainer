basic
must: aBlock
	|constraint cPredicate|
	cPredicate := ConstraintPredicate new.
	cPredicate conditionBlock: aBlock.
	constraint := Constraint new subject: self; predicate: aBlock.
	self parentConstraint isNotNil ifTrue: [ 
		constraint addChildConstraint: parentConstraint
	].
	
	^ constraint check.