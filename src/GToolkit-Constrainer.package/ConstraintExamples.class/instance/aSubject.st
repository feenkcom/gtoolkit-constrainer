public
aSubject
	<gtExample>
	^ ConstraintSubject new 
	the: { #one -> #a . #one -> #b . #one -> #c . #one -> #d}  
	collect: #value
	