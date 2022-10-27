puts "Cleaning database..."
Flat.destroy_all

puts "Creating Flats..."

5.times do
  Flat.create(
    name: Faker::Cosmere.knight_radiant,
    address: Faker::Address.street_address,
    description: Faker::Movies::Lebowski.quote,
    price_per_night: rand(30..200),
    number_of_guests: rand(1..5)
  )
end

puts "#{Flat.count} Flats created"
puts 'Finished!'


<%# <div class="card w-25">
  <img src="https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg" />
  <div class="card">
    <div>
      <h2><%= link_to flat.name, flat_path(flat) %></h2>
      <p><%= flat.description %></p>
    </div>
    <h2 class="card fs-2"><%= flat.price_per_night %></h2>
  </div>
</div>
<% end %>

<button><%= link_to "NEW FLAT", new_flat_path %></button> %>
