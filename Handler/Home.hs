module Handler.Home where

import Import
import Text.Julius (RawJS (..))

getHomeR :: Handler Html
getHomeR = do
    allFiles <- runDB $ selectList [] [Desc PhotoTime]
    defaultLayout $ do
        setTitle "Welcome To Yesod!"
        $(widgetFile "homepage")
