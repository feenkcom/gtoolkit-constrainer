public
simpleConstraint
	<gtExample>
	|theConstraint|
	theConstraint := Constraint new 
	theSubject: self aConstraintSubject;
	must: [ :assoc :value | value = #cc].
	self assert: theConstraint check constraintMatchers first equals: ((#a -> #cc) -> #cc).
	^ theConstraint 
	