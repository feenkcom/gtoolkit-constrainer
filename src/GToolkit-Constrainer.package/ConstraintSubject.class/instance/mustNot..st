basic
mustNot: aBlock
	|constraint cPredicate|
	cPredicate := NegatedPredicate new.
	cPredicate conditionBlock: aBlock.
	constraint := Constraint new subject: self; predicate: cPredicate.
	self parentConstraint isNotNil ifTrue: [ 
		constraint addChildConstraint: parentConstraint
	].
	
	^ constraint check.