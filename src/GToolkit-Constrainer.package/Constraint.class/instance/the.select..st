api
the: aCollection select: aBlock 
	subject := ConstraintSubject new the: aCollection select: aBlock.
	^ subject