public
apiSelectRule
	<gtExample>
	^ Rule new 
	the: { #one->#a . #one->#b . #one->#c . #one->#d . #one->#e }
	select: [:each | each value > #a];
	must: [:each | each value < #e ];
	check
	