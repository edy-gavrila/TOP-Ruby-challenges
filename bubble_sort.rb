num_arr = [4,3,78,2,0,2]

def bubble_sort(arr)
    for i in 0..arr.length-2
        if arr[i] > arr[i+1]
            aux = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = aux
            bubble_sort(arr)
        end
    end

end

bubble_sort(num_arr)

p "Sorted array: #{num_arr}"