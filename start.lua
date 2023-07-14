local download = http.get("https://raw.github.com/melosh101/computerCraftScripts/start") --This will make 'download' hold the contents of the file.
local handle = download.readAll() --Reads everything in download
download.close() --remember to close download!

local file = fs.open("startup","w") --opens the file 'startup' with the permissions to write.
file.write(handle) --writes all the stuff in handle to the file 'startup'.
file.close() --remember to close download!

local function get(repoFile,saveTo)
    local url = string.format("https://raw.githubusercontent.com/melosh101/computerCraftScripts/%s", repoFile)
    local download = http.get(url) --This will make 'download' hold the contents of the file.
    if download then --checks if download returned true or false
       local handle = download.readAll() --Reads everything in download
       download.close() --remember to close the download!
       local file = fs.open(saveTo,"w") --opens the file defined in 'saveTo' with the permissions to write.
       file.write(handle) --writes all the stuff in handle to the file defined in 'saveTo'
       file.close() --remember to close the file!
      else --if returned false
       print("Unable to download the file "..repoFile)
       print("Make sure you have the HTTP API enabled or")
       print("an internet connection!")
      end --end the if
    end --close the function