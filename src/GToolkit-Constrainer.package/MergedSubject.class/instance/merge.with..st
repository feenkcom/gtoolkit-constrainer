private
merge: aSubject with: anotherSubject
	self addChild: aSubject.
	self addChild: anotherSubject.
	aSubject addParent: self.
	anotherSubject addParent: self.
	^ self