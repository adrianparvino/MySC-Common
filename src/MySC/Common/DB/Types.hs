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

{-# LANGUAGE EmptyDataDecls             #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE QuasiQuotes                #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module MySC.Common.DB.Types where

import Database.Persist
import Data.Text
import Database.Persist.TH
import Data.ByteString
import Data.Time
import Data.Aeson
import Data.Aeson.TH

share [mkPersist sqlSettings, mkMigrate "migrateAll"] [persistLowerCase|
Comment
    name Text
    content Text
    steamId Int
    date UTCTime
    replyName Text Maybe
    reply Text Maybe
Mod
    name Text
    Name name
    password ByteString
Session
    nonce ByteString
|]

$(deriveJSON defaultOptions{omitNothingFields = True} ''Comment)
