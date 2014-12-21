module MeleeWarrior(loadPictures,drawWarrior) where

import Graphics.Gloss
import Graphics.Gloss.Data.ViewPort

import Draw(PictureSetLoader)

--main :: IO ()
--main = do
--    pic <- loadBMP "Figure.bmp"
----    display (InWindow "Warriors" (400, 550) (10, 10))
----            white
----            pic
--    simulate (InWindow "Warriors" (800, 550) (10, 10))
--              green
--              24
--              0
--              (draw pic)
--              timestep

loadPictures :: PictureSetLoader
loadPictures = sequence [loadBMP "Figure.bmp"]

drawWarrior :: Picture -> Float -> Picture
drawWarrior pic n = translate n n pic

timestep :: ViewPort -> Float -> Float -> Float
timestep _ _ = (+ 1)