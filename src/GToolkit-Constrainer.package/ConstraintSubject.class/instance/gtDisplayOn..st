basic
gtDisplayOn: stream
	name isNotNil ifTrue:[stream nextPutAll: name. stream nextPutAll:' '.].
	stream nextPutAll:the size gtDisplayString.
	the size > 0 ifTrue: [ 
		stream nextPutAll:' '.
		(the asArray) detect: [ :el | el isNotNil ] 
							ifFound:[:each | stream nextPutAll: each className] 
							ifNone: [stream nextPutAll:'']]

