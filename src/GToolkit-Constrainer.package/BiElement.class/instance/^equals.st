accessing
= anObject
	^ (self class = (anObject class)) & (from = (anObject from)) & (to = (anObject to)).