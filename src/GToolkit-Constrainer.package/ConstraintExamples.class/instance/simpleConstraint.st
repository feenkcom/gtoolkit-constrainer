public
simpleConstraint
	<gtExample>
	|theConstraint|
	theConstraint := Constraint new 
	theSubject: self aSubject;
	must: [ :assoc :value | value = #b].
	self assert: theConstraint check constraintMatchers first from equals: ((#one -> #b)).
	^ theConstraint 
	