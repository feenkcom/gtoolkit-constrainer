public
aFlatCollectSubject
	<gtExample>
	^ self aSelectSubject tFlatCollect: [ :e | {e . e capitalized } ]