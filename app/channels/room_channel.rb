# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    date = DateTime.now.in_time_zone.to_s
    date = date[0..-6]
    Message.create! content: "#{date}: #{data['message']}" unless data['message'].blank?
  end
end
