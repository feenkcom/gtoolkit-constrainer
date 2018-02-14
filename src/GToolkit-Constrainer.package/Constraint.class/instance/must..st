api
must: aBlock
	predicate := ConstraintPredicate new.
	predicate conditionBlock: aBlock.
	^ self check
