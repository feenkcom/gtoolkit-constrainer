public
andSubjectConstraint
	<gtExample>
	| andSubject theConstraint|
	andSubject := self andSubject.
	theConstraint := Constraint new
		theSubject: andSubject;
		must: [ :assoc :value | value = #cc ].
	self assert: theConstraint check constraintMatchers size equals: 2.
	self assert: theConstraint check constraintBreakers first from equals: #a->#x.
	^ theConstraint	 check