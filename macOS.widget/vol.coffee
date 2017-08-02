command: "osascript -e 'set ovol to output volume of (get volume settings)'"

refreshFrequency: 1000 # ms

render: (output) ->
  "vol #{output}"

style: """
  -webkit-font-smoothing: antialiased
  font: 13px Inconsolata
  color: #e8dfd6
  left: 80.5%
  top: 20px
  padding: 7px
  background: #031b21
  span
    color: #29beea
"""
