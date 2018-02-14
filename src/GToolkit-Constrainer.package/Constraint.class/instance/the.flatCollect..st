api
the: aCollection flatCollect: aBlock 
	subject := ConstraintSubject new the: aCollection flatCollect: aBlock.
	^ subject