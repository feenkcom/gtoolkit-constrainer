basic
the: aCollection select: aBlock
	the := aCollection.
	block := aBlock.
	elements := aCollection select: aBlock