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

module Main where

import CSS
import HTML

import Clay hiding (html)

import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import qualified Text.Blaze.Html.Renderer.String as H
main = putStrLn $ H.renderHtml $ H.docTypeHtml $ do
  H.head $ do
    H.style  H.! A.type_ "text/css" $ H.toHtml $ renderWith compact [] defaultStyle
    H.link   H.! A.href  "https://fonts.googleapis.com/css?family=Pacifico" H.! A.rel "stylesheet"
    H.link   H.! A.href  "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.4.1/css/bulma.min.css" H.! A.rel "stylesheet"
    H.script H.! A.src   "https://use.fontawesome.com/bc68209d19.js" $ return ()
  H.body html
