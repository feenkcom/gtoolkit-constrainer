transformation
tAsSet
	|collectSubject|
	collectSubject := AsSetSubject new.
	collectSubject addChild: self.
	self addParent: collectSubject.
	collectSubject the: elements block: #yourself.
	^ collectSubject.