public
simpleConstraint
	<gtExample>
	^ Constraint new 
	the: #value 
	of: { #a -> #b . #a -> #cc . #b -> #cc};
	must: [ :assoc :value | value = #cc]