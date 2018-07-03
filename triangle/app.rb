require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rectangle')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  rectangle = Rectangle.new(@l1, @l2, @l3)
  if rectangle.triangle?
    @string_to_display = "This is a square."
  else
    @string_to_display = "This is not a square."
  end
  erb(:output)
end
