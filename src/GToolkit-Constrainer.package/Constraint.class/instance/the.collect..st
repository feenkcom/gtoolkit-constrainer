api
the: aCollection collect: aBlock 
	subject := ConstraintSubject new the: aCollection collect: aBlock.
	^ subject
