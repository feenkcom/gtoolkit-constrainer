basic
gtDisplayOn: stream
	stream nextPutAll:the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((the asArray) detect: [ :el | el isNotNil ]) className.
	stream nextPutAll:' select: '.
	stream nextPutAll:block gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll:elements size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((elements asArray) detect: [ :el | el isNotNil ]) className.