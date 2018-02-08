public
simpleConstraint
	<gtExample>
	|theConstraint|
	theConstraint := Constraint new 
	theSubject: self aConstraintSubject;
	must: [ :assoc :value | value = #b].
	self assert: theConstraint check constraintMatchers first from equals: ((#one -> #b)).
	^ theConstraint 
	