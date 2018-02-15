basic
gtDisplayOn: stream
	stream nextPutAll:the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((the asArray) detect: [ :el | el isNotNil ]) className.
