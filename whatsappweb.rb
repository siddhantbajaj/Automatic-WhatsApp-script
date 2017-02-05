require 'watir-webdriver'
require 'rubygems'
require 'httparty'
require 'pry'
# require 'pry-rails'
# require 'regex'


b = Watir::Browser.new :chrome
b.goto("https://web.whatsapp.com/")
sleep 10
b.text_field(title: "Search or start new chat").set 'whom you want to send the message'
 
b.send_keys :enter 
element=b.div(:class => "input") #THIS IS THE WAY OF WRITTING CLASS IN TEXT_FIELD

script = "return arguments[0].innerHTML = 'type your message here'" #returns us the HTML code of the webelement
19.times do
b.execute_script(script, element)
sleep 3
b.send_keys :enter
b.send_keys [:command, "a"]
b.send_keys :delete
sleep 1
b.send_keys [:command, "z"]
sleep 1
b.send_keys :enter
end
#search = gets.chomp