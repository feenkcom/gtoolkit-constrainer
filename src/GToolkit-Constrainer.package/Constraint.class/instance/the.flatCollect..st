api
the: aCollection flatCollect: aBlock 
	subject := FlatCollectSubject new the: aCollection block: aBlock.
	^ subject