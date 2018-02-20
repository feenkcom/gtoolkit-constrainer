basic
gtDisplayOn: stream
	stream nextPutAll: the size gtDisplayString.
	stream nextPutAll:' '.
	stream nextPutAll: ((the asArray) detect: [ :el | el isNotNil ]) className.
	stream nextPutAll:' '.
	stream nextPutAll: self mergeName.
	stream nextPutAll: otherCollection size gtDisplayString.
	otherCollection size > 0 ifTrue: [ 
		stream nextPutAll:' '.
		stream nextPutAll: ((otherCollection asArray) detect: [ :el | el isNotNil ]) className]
	