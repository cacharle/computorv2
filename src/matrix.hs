module Matrix where

import Data.List

newtype Matrix a = Matrix { getMatrix :: [MatrixRow a] }
type MatrixRow a = [a]

instance Show a => Show (Matrix a) where
    show (Matrix m) = intercalate "\n" (map showLine m)
        where showLine l = "[ " ++ intercalate " , " (map show l) ++ " ]"
