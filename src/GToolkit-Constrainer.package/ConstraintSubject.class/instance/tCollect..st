transformation
tCollect: aBlock
	|collectSubject|
	collectSubject := CollectSubject new.
	collectSubject addChild: self.
	collectSubject the: elements block: aBlock.
	^ collectSubject.