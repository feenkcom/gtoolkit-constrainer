api
the: aCollection collect: aBlock 
	subject := CollectSubject new the: aCollection block: aBlock.
	^ subject
