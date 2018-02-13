command: "osascript -e 'set ovol to output volume of (get volume settings)'"

refreshFrequency: 1000 # ms

render: () -> """
	<div class="container">
	  vol: <span class="value"></span>
	</div>
"""

update: (output, domEl) ->

	div = $(domEl)
	div.find('.value').html(output)

style: """
  -webkit-font-smoothing: antialiased
  font: 13px Inconsolata
  color: #e8dfd6
  left: 80%
  top: 20px
  padding: 7px
  background: #0F1419
  span
    color:  #77bfdc
"""
