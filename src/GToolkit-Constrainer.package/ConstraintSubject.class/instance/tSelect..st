transformation
tSelect: aBlock
	|selectSubject|
	selectSubject := SelectSubject new.
	selectSubject addChild: self.
	self addParent: selectSubject.
	selectSubject the: elements block: aBlock.
	^ selectSubject.