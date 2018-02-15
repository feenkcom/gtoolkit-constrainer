public
andRule
	<gtExample>
	^ Constraint new 
	subject: self aSubject;
	predicate: self andConstraint;
	check
	