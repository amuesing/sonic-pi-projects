def generate_fibonacci_matrix(fund, range, arr)
    matrix = []
    if fund == 0
        i = 1
        range.times do
            arr << fund
            i, fund = fund, i + fund
        end
    else
        i = fund
        range.times do
        arr << i
        i, fund = fund, i + fund
        end
    end
    arr.each do |y|
    x = []
    if y == 0
        i = 1
        arr.length.times do
            x << y 
            y, i = i, y + i
        end
    else
        i = 0
        arr.length.times do 
            x << y
            i, y = y, i + y
        end 
    end
        matrix << x
    end
    arr.replace(matrix)
end

arr = []
generate_fibonacci_matrix(1, 5, arr)
print arr