basic
gtDisplayOn: stream
	name isNotNil ifTrue:[stream nextPutAll: name. stream nextPutAll:' '.].
	stream nextPutAll:the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((the asArray) detect: [ :el | el isNotNil ]) className.
