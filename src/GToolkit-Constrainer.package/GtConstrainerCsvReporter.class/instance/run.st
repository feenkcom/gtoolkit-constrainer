running
run
	| stream |
	stream := self createReportStream.
	[ self csvReportOn: stream ]
		ensure: [ stream close ]