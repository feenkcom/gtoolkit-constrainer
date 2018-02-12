public
apiCollectRule
	<gtExample>
	^ Rule new 
	the: { #one->#a . #one->#b . #one->#c . #one->#d . #one->#e }
	collect: [:each | each value ];
	must: [ :each | each < #e ];
	check
	