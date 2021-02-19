require 'open-uri'

BicycleModel.destroy_all
OptionType.destroy_all
Option.destroy_all
DisabledOption.destroy_all


bike1 = BicycleModel.create(
  name: 'Nero',
  description: 'The fastest shape of all frames. Thanks to its pursuit geometry, it will take you to the next level. Competitive, reactive and very unique. Since 2012, the Nero bike has been the choice of many pro riders around the world. Specs: Continental ultra sport iii. 700x25 c. Foldable. Black'
  )
file1 = URI.open('https://images.unsplash.com/photo-1593091816440-27564545a7aa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
bike1.photo.attach(io: file1, filename: 'nero.png', content_type: 'image/png')


bike2 = BicycleModel.create(
  name: 'Fuji',
  description: "Designed to be a multipurpose bike, with a shape suitable for all kinds of uses, from your daily commute to the city to meeting all the most demanding rider’s needs regarding competitions and training. lightweight, stiff, high class and comfort. Specs: Forkfull carbon fork . Tapered 1-1/8”. Rake 45mm . 700x28c max"
  )
file2 = URI.open('https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fGZpeGllfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
bike2.photo.attach(io: file2, filename: 'fuji.png', content_type: 'image/png')


bike3 = BicycleModel.create(
  name: 'Cayenne',
  description: "Made of steel, with a one-inch headset and a perfect geometry to take you anywhere, the Cayenne is ready to make you enjoy every kilometre you spend on top of it. a bike that due to its geometry, lines, shapes, durability and stiffness, will undoubtedly become a basic part of your everyday life. Specs: Columbus spirit. triple butted niobium steel"
  )
file3 = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80')
bike3.photo.attach(io: file3, filename: 'fuji.png', content_type: 'image/png')


bike4 = BicycleModel.create(
  name: 'Dallas',
  description: "The Dallas model is the bike chosen by the most demanding riders from around the world. A perfect balance between elegance and technology, lightness and reactivity and manoeuvrability and robustness. these are some of the attributes that make the tokyo dosnoventa’s flagship frame. Specs: continental ultra sport iii. 700x25 c. Foldable. Black"
  )
file4 = URI.open('https://images.unsplash.com/photo-1559225549-532a2e59a52c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGZpeGVkJTIwZ2VhcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
bike4.photo.attach(io: file4, filename: 'dallas.png', content_type: 'image/png')


bike5 = BicycleModel.create(
  name: 'Quella',
  description: "The quella, the classic steel frame set. high-quality, smooth, long-lasting and very iconic. Ready to make you enjoy every kilometre you spend on top of it. Competitive, fast, light, stiff, reactive and very unique. Specs: Continental ultra sport iii. Triple butted niobium steel"
  )
file5 = URI.open('https://images.unsplash.com/photo-1612629371208-0ae8f1b62824?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTZ8fGZpeGVkJTIwZ2VhcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
bike5.photo.attach(io: file5, filename: 'quella.png', content_type: 'image/png')


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






















