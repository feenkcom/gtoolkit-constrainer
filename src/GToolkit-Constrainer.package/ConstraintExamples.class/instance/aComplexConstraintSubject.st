public
aComplexConstraintSubject
	<gtExample>
	| subjectOne subjectTwo andSubject subjectThree subjectFour andSubject2 andSubject3 |
	subjectOne := self aSubject.
	subjectTwo := self secondRuleSubject.
	andSubject := AndSubject new.
	andSubject and: subjectOne  with: subjectTwo.
	self assert: andSubject children size equals: 2.
	subjectThree := SimpleSubject new 
	the: #value 
	of: { #three -> #c . #three -> #d . #three -> #e . #three -> #f }.
	
	subjectFour := SimpleSubject new 
	the: #value 
	of: { #four -> #d . #four -> #e . #four -> #f . #four -> #g }.
	
	andSubject2 := AndSubject new.
	andSubject2 and: subjectThree  with: subjectFour.
	self assert: andSubject2 children size equals: 2.
	andSubject3 := AndSubject new.
	andSubject3 and: andSubject  with: andSubject2.
	self assert: andSubject3 children size equals: 2.
	^ andSubject3.

	