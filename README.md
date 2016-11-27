# Automatic-WhatsApp-script
Ruby script to automatically send messages to your friends or groups

step 1:Create a rails project.

step 2:Add these two gems in the Gemfile of your project=>gem 'pry-rails', gem 'watir'.

step 3:open rails console and type following commands:

>browser = Watir::Browser.new(:chrome)

>browser.goto("https://web.whatsapp.com/")  //scan the QR code

>browser.text_field(title: 'Search or start new chat').set 'NAME OF GROUP/FRIEND'

>browser.send_keys :enter

>element=browser.div(:class => "input")

>script = "return arguments[0].innerHTML = 'YOUR MESSAGE'"

>10.times do    // Number of times you want to send message.Don't do it for a large number as WhatsApp may block you.

>browser.execute_script(script, element)

>browser.send_keys :space

>browser.send_keys :enter

>end 

WARNING:Please use this script only for educational purposes, i am not responsible if your friends ( or even Whatsapp ) block you.

From whatsapp FAQ:

Be aware that the following actions are in violation of our Terms of Service:

>Using an automated system or an unauthorized / unofficial client application to send messages through WhatsApp.

