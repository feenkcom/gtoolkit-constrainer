basic
the: aCollection collect: aBlock
	the := aCollection.
	block := aBlock.
	elements := aCollection collect: aBlock