require 'open-uri'

BicycleModel.destroy_all
OptionType.destroy_all
Option.destroy_all


bike1 = BicycleModel.create(
  name: 'Nero',
  description: 'The fastest shape of all frames. Thanks to its pursuit geometry, it will take you to the next level. Competitive, reactive and very unique.'
  )
file1 = URI.open('https://images.unsplash.com/photo-1593091816440-27564545a7aa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
bike1.photo.attach(io: file1, filename: 'nero.png', content_type: 'image/png')


bike2 = BicycleModel.create(
  name: 'Fuji',
  description: "Designed to be a multipurpose bike, with a shape suitable for all kinds of uses, from your daily commute to the city to meeting all the most demanding rider’s needs regarding competitions and training. lightweight, stiff, high class and comfort."
  )
file2 = URI.open('https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fGZpeGllfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
bike2.photo.attach(io: file2, filename: 'fuji.png', content_type: 'image/png')


bike3 = BicycleModel.create(
  name: 'Cayenne',
  description: "Made of steel, with a one-inch headset and a perfect geometry to take you anywhere, the Cayenne is ready to make you enjoy every kilometre you spend on top of it. a bike that due to its geometry, lines, shapes, durability and stiffness, will undoubtedly become a basic part of your everyday life."
  )
file3 = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80')
bike3.photo.attach(io: file3, filename: 'fuji.png', content_type: 'image/png')


custom_options = [
  {type_name: "Wheel size", options: ["17", "19", "21"]},
  {type_name: "Color pattern", options: ["blue", "green", "yellow", "red", "purple", "pink", "black", "white"]},
  {type_name: "Saddle color", options: ["brown", "black", "white", "grey", "blue", "green"]}
]

BicycleModel.all.each do |bm|
  custom_options.each do |type|
    op_t = OptionType.create(
      name: type[:type_name],
      bicycle_model: bm)
    type[:options].each do |opt|
      Option.create(
        content: opt,
        option_type: op_t
        )
    end
  end
end






















