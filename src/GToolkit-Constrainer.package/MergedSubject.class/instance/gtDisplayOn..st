basic
gtDisplayOn: stream
	stream nextPutAll:the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((the asArray) detect: [ :el | el isNotNil ]) className.
	stream nextPutAll:' intersect: '.
	stream nextPutAll:otherCollection size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((otherCollection asArray) detect: [ :el | el isNotNil ]) className.
	