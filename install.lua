local URL = "https://raw.githubusercontent.com/njs50/tfe-mapper/master/tfe-mapper.xml"

local function d(_, f)
  if not f:find("tfe-mapper", 1, true) then return end
  installPackage(f)
  os.remove(f)
  cecho("<lime_green>Package installed!\n")
end

registerAnonymousEventHandler("sysDownloadDone", d)

downloadFile(getMudletHomeDir()..(URL:ends("xml") and "/tfe-mapper.xml" or "/tfe-mapper.zip"), URL)