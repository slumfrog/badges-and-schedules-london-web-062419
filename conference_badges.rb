def badge_maker(name)
    return "Hello, my name is #{name}."
end


def batch_badge_creator(attendees)
	attendees.map {|name| badge_maker(name)}
end

def assign_rooms(attendees)
	attendees.each_with_index.map{|attendee, index| "Hello, #{attendee}! You'll be assigned to room #{index+1}!"}
end

def printer(attendees)
	batch_badge_creator(attendees).each do |badge|
	  puts badge
	end
  
	assign_rooms(attendees).each do |assignment|
	  puts assignment
	end
end