require 'pry'
def pass_through(array, iterations)

    array.each_with_index do |num, index|
        if array[index + 1] != nil
            if num > array[index + 1]
                array[index], array[index + 1] = array[index + 1], array[index]
            end
        end
    end
    array
end

def bubble_sort(array)
    
    sort_operations = 0

    while sort_operations < array.length - 1 do
        array = pass_through(array, 5)
        sort_operations += 1
    end

    array
end

p bubble_sort([4,3,78,2,0,2])