def swap(arr, x_index, y_index)
    temp = arr[x_index]
    arr[x_index] = arr[y_index]
    arr[y_index] = temp
end

def bubble_sort(arr)
    length = arr.length - 1
    for i in 0 ... length
        swapped = false
        difference = length - i
        for j in 0 ... difference
            if arr[j] > arr[j+1]
                swap(arr, j, j+1)
                swapped = true
            end
        end
        if swapped == false
            break
        end
    end
    arr
end


puts bubble_sort([4,3,78,2,0,2])