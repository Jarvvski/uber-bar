command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  "bat #{output}"

style: """
  -webkit-font-smoothing: antialiased
  font: 13px Inconsolata
  top: 20px
  left: 85%
  color: #e8dfd6
  padding: 7px
  background: #031b21
  padding-right: 7px
  span
    color: #29beea
"""