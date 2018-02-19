transformation
tIntersect: aCollection
	|intersectSubject |
	intersectSubject := IntersectSubject new.
	intersectSubject addChild: self.
	intersectSubject the: elements intersectedWith: aCollection.
	^ intersectSubject.