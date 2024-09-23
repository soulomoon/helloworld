-- Example.hsc
{-# LANGUAGE ForeignFunctionInterface #-}

module Example where

#include <math.h>

-- Define a Haskell constant using a C constant
piValue :: Double
piValue = #{const M_PI}

-- Define a Haskell function that calls a C function
foreign import ccall "math.h sin"
  c_sin :: Double -> Double

haskellSin :: Double -> Double
haskellSin x = c_sin x
