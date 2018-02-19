transformation
tCollect: aBlock
	|collectSubject|
	collectSubject := CollectSubject new.
	collectSubject addChild: self.
	collectSubject the: elements block: aBlock.
	self addParent: collectSubject.
	^ collectSubject.