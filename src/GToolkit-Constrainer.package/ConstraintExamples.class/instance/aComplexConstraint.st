public
aComplexConstraint
	<gtExample>
	| constraint |
	constraint := Constraint new
	theSubject: self aComplexConstraintSubject ;
	must: [ :assoc :value | value = #d].
	^ constraint check

	