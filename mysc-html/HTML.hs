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

module HTML where

import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A

html :: H.Html
html = do
  H.nav H.! A.class_ "navbar" $
    H.div H.! A.class_ "navbar-brand" $
      H.toHtml ("My System for Comments" :: String)
  H.div H.! A.id "comments" $ return ()
