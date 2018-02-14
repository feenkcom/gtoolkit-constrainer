public
apiCollectRule
	<gtExample>
	^ Constraint new 
	the: { #one->#a . #one->#b . #one->#c . #one->#d . #one->#e }
	collect: [:each | each value ];
	predicate: [ :each | each < #e ];
	check
	