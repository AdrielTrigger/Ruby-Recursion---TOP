def fib(n)
    result = [0, 1]
    count = 0
    if n > 2
        while count < n-2
            result << result[count] + result[count+1]
            count += 1
        end
        print result
        puts ''
    else
        result.each_with_index do |index|
            print result[index] if n > index
        end
    end
end