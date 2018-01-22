public
andSubjectConstraint
	<gtExample>
	| andSubject |
	andSubject := self andSubject.
	^ Constraint new 
	theSubject: andSubject;
	must: [ :assoc :value | value = #cc]