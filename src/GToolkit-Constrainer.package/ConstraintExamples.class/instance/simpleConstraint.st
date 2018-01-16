public
simpleConstraint
	<gtExample>
	^ Constraint new 
	no: #value 
	of: { #a -> #b . #a -> #c . #b -> #c} 
	should: [ :assoc :value | value = #a]