require "dotenv"
require "discordcr"

environment = Dotenv.load(".env")


puts "#{environment.keys.size} environment variables loaded"
# puts "#{hash["TOKEN"]}"

client = Discord::Client.new(token: "Bot #{environment["TOKEN"]}")
cache = Discord::Cache.new(client)
client.cache = cache

client.run

