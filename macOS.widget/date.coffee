command: "date +\"%a %d %b %H:%M\""

refreshFrequency: 60000

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #FCE78E
  font: 13px Inconsolata
  left: 90.5%
  margin-left: 0px
  top: 20px
  background: #212121
  padding: 7px
"""
