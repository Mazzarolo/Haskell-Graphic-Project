import System.Environment
import System.CPUTime
import Text.Printf

type Point     = (Float,Float)
type Rect      = (Point,Float,Float)
type Circle    = (Point,Float)

floatToInt :: Float -> Int
floatToInt = round

createPalette :: Int -> Int -> Int -> [(Int,Int,Int)]
createPalette r g b = [(r, g, b) | t <- [0,1..]]

genSpiral :: Float -> Float -> Float -> Float -> [Circle]
genSpiral vX vY r max  = [((x t, y t), r) | t <- [0, 0.001 .. max], x t >= -r && x t <= max + r, y t >= -r && y t <= max + r]
  where y t = (max / 2) + (r*(vY + 2)) * (t * sin (2 * pi * t))
        x t = (max / 2) + (r*(vX + 2)) * (t * cos (2 * pi * t))
        rV t = r + t / 100

svgBackground :: Float -> Float -> String -> String
svgBackground width height style = 
    printf "<rect x='%f' y='%f' width='%.2f' height='%.2f' style='%s' />\n" x y width height style
    where x = width - width
          y = height - height

svgCircle :: Circle -> String -> String 
svgCircle ((x, y), r) style = 
  printf "<circle cx='%f' cy='%f' r='%f' style='%s' />\n" x y r style

svgStyle :: (Int,Int,Int) -> String
svgStyle (r,g,b) = printf "fill:rgb(%d,%d,%d);" r g b

svgElements :: (a -> String -> String) -> [a] -> [String] -> String
svgElements func elements styles = concat $ zipWith func elements styles

svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.1f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

svgEnd :: String
svgEnd = "</svg>"

main :: IO ()
main = do
  args <- getArgs
  let   rB = read (args !! 0)::Int 
        gB = read (args !! 1)::Int
        bB = read (args !! 2)::Int
        rS = read (args !! 3)::Int 
        gS = read (args !! 4)::Int
        bS = read (args !! 5)::Int
        l = read (args !! 6)::Int
        vX = read (args !! 7)::Float
        vY = read (args !! 8)::Float
        r = read (args !! 9)::Float
        svgstrs = svgBegin (fromIntegral l) (fromIntegral l) ++ background ++ svgSpiral ++ svgEnd
        background = svgBackground (fromIntegral l) (fromIntegral l) backgroundColour
        svgSpiral = svgElements svgCircle spiral (map svgStyle spiralColour)
        spiral = genSpiral vX vY r sTam
        spiralColour = createPalette rS gS bS
        backgroundColour = svgStyle (rB,gB,bB)
        sTam = fromIntegral l
  putStrLn svgstrs