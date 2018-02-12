public
aSubject
	<gtExample>
	^ Subject new 
	the: { #one -> #a . #one -> #b . #one -> #c . #one -> #d}  
	collect: #value
	