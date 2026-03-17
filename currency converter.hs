import Text.Printf
usdToInr :: Double -> Double
usdToInr x = x * 83.0
inrToUsd :: Double -> Double
inrToUsd x = x / 83.0
eurToInr :: Double -> Double
eurToInr x = x * 90.0
inrToEur :: Double -> Double
inrToEur x = x / 90.0
gbpToInr :: Double -> Double
gbpToInr x = x * 105.0
inrToGbp :: Double -> Double
inrToGbp x = x / 105.0
main :: IO ()
main = do
    putStrLn "====== Currency Converter ======"
    putStrLn "1. USD to INR"
    putStrLn "2. INR to USD"
    putStrLn "3. EUR to INR"
    putStrLn "4. INR to EUR"
    putStrLn "5. GBP to INR"
    putStrLn "6. INR to GBP"
    putStrLn "Enter your choice: "
    choice <- getLine
    putStrLn "Enter amount: "
    amt <- getLine
    let amount = read amt :: Double
    case choice of
        "1" -> printf "Converted Amount: %.2f INR\n" (usdToInr amount)
        "2" -> printf "Converted Amount: %.2f USD\n" (inrToUsd amount)
        "3" -> printf "Converted Amount: %.2f INR\n" (eurToInr amount)
        "4" -> printf "Converted Amount: %.2f EUR\n" (inrToEur amount)
        "5" -> printf "Converted Amount: %.2f INR\n" (gbpToInr amount)
        "6" -> printf "Converted Amount: %.2f GBP\n" (inrToGbp amount)
        _   -> putStrLn "Invalid Choice!"