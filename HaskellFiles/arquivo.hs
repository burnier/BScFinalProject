writeChar :: FilePath -> Char -> IO ()
writeChar fp c = 
  bracket
    (openFile fp ReadMe)
    hClose
    (\h -> putChar h c)