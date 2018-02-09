public
andSubject
	<gtExample>
	| subjectOne subjectTwo andSubject |
	subjectOne := self aSubject.
	subjectTwo := self secondRuleSubject.
	andSubject := AndSubject new.
	andSubject and: subjectOne  with: subjectTwo.
	self assert: andSubject children size equals: 2.
   ^ andSubject 