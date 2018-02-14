basic
the: aCollection flatCollect: aBlock
	the := aCollection.
	block := aBlock.
	elements := aCollection flatCollect: aBlock