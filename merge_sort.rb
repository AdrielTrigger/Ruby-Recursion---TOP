def merge(left, right, result = [])
    if left.empty? == true
        result << right.shift
    elsif right.empty? == true
        result << left.shift
    elsif left[0] <= right[0]
        result << left.shift
    elsif right[0] <= left[0]
        result << right.shift
    end
    if left.length > 0 or right.length > 0
        merge(left, right, result)
    else
        result
    end
end

def split(array)
    if array.length > 1
        half = (array.length/2)
        left = array.take(half)
        right = array.drop(half)

        split_left = split(left)
        split_right = split(right)
        merge(split_left, split_right)
    elsif array.length == 1
        return array
    end
end