public
andRule
	<gtExample>
	^ Constraint new 
	subject: self aSubject;
	constraint: self andConstraint;
	check
	