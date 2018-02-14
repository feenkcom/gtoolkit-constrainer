api
the: aCollection select: aBlock 
	subject := SelectSubject new the: aCollection block: aBlock.
	^ subject