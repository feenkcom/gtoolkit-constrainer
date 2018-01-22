public
andSubjectDirectConstraint
	<gtExample>
	^ Constraint new 
	the: #value 
	of: { #a -> #b . #a -> #cc . #b -> #cc};
	andThe: #value
	of: { #a -> #x . #a -> #cc . #b -> #z};
	must: [ :assoc :value | value = #cc]