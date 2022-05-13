module Lib
 ( isPalindrome
 , preprocess
 ) where

import Data.Text as T
import Data.Char (isPunctuation)

preprocess :: String -> String
preprocess text = filter (not . (`elem` ['!','.'])) text

isPalindrome :: String -> Bool
isPalindrome text = cleanText == reverse cleanText
   where cleanText = preprocess text
