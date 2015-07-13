mkdir .\dist

for /R %%f in (*.nuspec) do (
  if exist "%%~dpf%%~nf.csproj" (
    .\.nuget\nuget.exe pack "%%~dpf%%~nf.csproj" -OutputDirectory .\dist -Properties Configuration=Release -basePath .\
  )
)
