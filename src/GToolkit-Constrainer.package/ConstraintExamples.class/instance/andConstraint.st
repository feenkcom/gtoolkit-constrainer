public
andConstraint
	<gtExample>
	^ AndPredicate new 
	addConstraint: self aPredicate;
	addConstraint: self andSecondConstraint 
	