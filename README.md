# Automatic-WhatsApp-script
Ruby script to send automatic messages to your friends or groups

step 1:Create a rails project.

step 2:Add these two gems in the Gemfile of your project=>gem 'pry-rails', gem 'watir'.

step 3:open rails console and type following commands:

>browser = Watir::Browser.new(:chrome)

>browser.goto("https://web.whatsapp.com/")  //scan the QR code

>browser.text_field(title: 'Search or start new chat').set 'NAME OF GROUP/FRIEND'

>browser.send_keys :enter

>element=browser.div(:class => "input")

>script = "return arguments[0].innerHTML = 'YOUR MESSAGE'"

>10.times do    // Number of times you want to send message 

>browser.execute_script(script, element)

>browser.send_keys :space

>browser.send_keys :enter

>end 

