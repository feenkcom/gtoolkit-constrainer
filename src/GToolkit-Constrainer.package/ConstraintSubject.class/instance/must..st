basic
must: aBlock
	|constraint cPredicate|
	cPredicate := ConstraintPredicate new.
	cPredicate conditionBlock: aBlock.
	constraint := Constraint new subject: self; predicate: aBlock.
	^ constraint check.