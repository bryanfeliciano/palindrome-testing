import Lib

import Data.Char (isPunctuation)
import Test.QuickCheck
import Test.QuickCheck.Instances
import Data.Text as T

assert :: Bool -> String -> String -> IO ()
assert test passStatement failStatement = if test
                                          then putStrLn passStatement
                                          else putStrLn failStatement

prop_punctuationInvariant text = preprocess text == preprocess noPuncText
    where noPuncText = filter (not . isPunctuation) text

                                          
main :: IO ()
main = do
    quickCheck prop_punctuationInvariant
    putStrLn "done!"



--   putStrLn "Running tests..."
--   assert (isPalindrome "racecar") "passed 'racecar'" "FAIL: 'racecar'"
--   assert (isPalindrome "racecar!") "passed 'racecar!'" "FAIL: 'racecar!'"
--   assert ((not . isPalindrome) "cat") "passed 'cat'" "FAIL: 'cat'"
--   assert (isPalindrome "racecar.") "passed 'racecar.'" "FAIL: 'racecar.'"
--   putStrLn "done!"


