accessing
= anObject
	(self class = (anObject class)) ifFalse:[ ^ false ].
	(from = (anObject from)) ifFalse:[ ^ false ].
	(to = (anObject to)) ifFalse:[ ^ false ].
	^ true