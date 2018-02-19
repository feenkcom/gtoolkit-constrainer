basic
the: aCollection block: aBlock
	super the: aCollection block: aBlock.
	elements := aCollection select: aBlock.
	self breakers.
	self matchers.