public
andConstraint
	<gtExample>
	^ AndConstraint new 
	addConstraint: self aConstraint;
	addConstraint: self andSecondConstraint 
	