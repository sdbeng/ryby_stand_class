def alphabetize(arr, rev=false)
    arr.sort!
    if rev
        arr.reverse!
    else
        arr.sort!
    end
end

numbers=[2,45,8]
words = ["alan","rosarito","sil","dada"]
puts alphabetize(numbers,true)
puts alphabetize(words,true)
