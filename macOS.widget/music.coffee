command: "osascript 'macOS.widget/lib/Get Current Track.applescript'"

refreshFrequency: 1000 # ms

render: () -> """
  <div class="container">
  	Now playing: <span class="song details"></span> by <span class="artist details"></span> | <span class="progress details"></span>
  </div>
 """

update: (output, domEl) ->

	div = $(domEl)

	if output
		div.show()
		values = output.slice(0,-1).split(" @ ")
		div.find('.artist').html(values[0])
		div.find('.song').html(values[1])
		tDuration = values[3]
		tPosition = values[4]
		tCurrent = Math.round((tPosition / tDuration) * 100)
		div.find('.progress').html(tCurrent + '%')
	else
		div.hide()

style: """
  -webkit-font-smoothing: antialiased
  font: 13px Inconsolata
  color: #e8dfd6
  right: 21.5%
  top: 20px
  padding: 7px
  background: #212121
  .details
    color: #c28898
"""
