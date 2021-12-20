import System.IO
import Data.List

deleteThree:: [Int] -> [Int]
deleteThree myArray = map fst ( filter (\(_, i) -> mod (i+1) 3/=0) (zip myArray [0..]))
deleteEven :: [Int] -> [Int]
deleteEven myArray = map fst ( filter (even.snd) (zip myArray [0..]))
deleteOdd:: [Int] -> [Int]
deleteOdd myArray = map fst ( filter (odd.snd) (zip myArray [0..]))   
myfunc :: Int -> [Int] -> [Int]
myfunc n myArray
                | (length myArray== 1) = myArray
                | ( mod n 3 == 0) = myfunc (n+1) (deleteThree(myArray))
                | ( mod n 3 == 1) = myfunc (n+1) (deleteEven(myArray))
                | ( mod n 3 == 2) = myfunc (n+1) (deleteOdd(myArray))

main=do
    input <- getLine
    let n = (read input :: Int)
    let myArray = [1..n]
    let res = myfunc 1 myArray
    print(res!!0)