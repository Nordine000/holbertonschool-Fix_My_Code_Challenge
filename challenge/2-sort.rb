###
#
#  Sort integer arguments (ascending) 
#
###

result = []
strings = []

ARGV.each do |arg|
    # Check if integer
    if arg !~ /^-?[0-9]+$/
        # If not an integer, add to strings array
        strings << arg
        next # Skip to the next argument
    end

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i - 1, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

result.concat(strings)

puts result