katz_deli = []

def line(waiting)
    announce = "The line is currently"
    if waiting == []
        announce << " empty."
    else
        announce << ":"
        waiting.each_with_index do |name, i|
            announce << " #{i + 1}. #{name}"
        end
    end
    puts announce
end

def take_a_number(waiting, name)
    waiting.push(name)
    puts "Welcome, #{name}. You are number #{waiting.length} in line."
end

def now_serving(waiting)
    if waiting == []
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{waiting.shift}."
    end
end

