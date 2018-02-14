basic
the: aCollection block: aBlock
	super the: aCollection block: aBlock.
	elements := aCollection flatCollect: aBlock