App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
# Called when the subscription is ready for use on the server

  disconnected: ->
# Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']
    $('#messages').scrollTop $('#messages')[0].scrollHeight

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
#    $('#messages').scrollTop $('#messages')[0].scrollHeight
    event.preventDefault()

$(document).ready  ->
  $('#messages').scrollTop $('#messages')[0].scrollHeight
  $('#send').on 'click', (e) ->
    e.preventDefault()
    App.room.speak $('#msg').val()
    $('#msg').val ''
#    $('#messages').scrollTop $('#messages')[0].scrollHeight