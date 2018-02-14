public
apiSelectRule
	<gtExample>
	^ Constraint new 
	the: { #one->#a . #one->#b . #one->#c . #one->#d . #one->#e }
	select: [:each | each value > #a];
	predicate: [:each | each value < #e ];
	check
	