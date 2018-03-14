-- | This file is part of MySC.
-- |
-- | MySC is free software: you can redistribute it and/or modify
-- | it under the terms of the GNU General Public License as published by
-- | the Free Software Foundation, either version 3 of the License, or
-- | (at your option) any later version.
-- |
-- | MySC is distributed in the hope that it will be useful,
-- | but WITHOUT ANY WARRANTY; without even the implied warranty of
-- | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- | GNU General Public License for more details.
-- |
-- | You should have received a copy of the GNU General Public License
-- | along with MySC.  If not, see <http://www.gnu.org/licenses/>.

{-# LANGUAGE OverloadedStrings #-}

module CSS (defaultStyle) where

import HTML
import Clay

defaultStyle :: Css
defaultStyle = do
  ".center-text" ? do
    textAlign . alignSide $ sideCenter
  ".full-height" ? do
    height $ vh 100
  ".card" ? do
    display $ flex
    flexDirection $ column
  ".card" |> ".card-header" ? do
    flexGrow $ 0
  ".card" |> ".card-content" ? do
    flexGrow $ 1
  ".card" |> ".card-footer" ? do
    flexGrow $ 0
    
