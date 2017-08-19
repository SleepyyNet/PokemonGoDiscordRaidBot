
remove-item Releases -recurse
new-item -Name Releases -ItemType directory

dotnet publish -c release -r win10-x64
dotnet publish -c release -r ubuntu.16.10-x64
dotnet publish -c release -r osx.10.11-x64

Add-Type -A System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::CreateFromDirectory('PokemonGoRaidBot\bin\Release\netcoreapp1.1\osx.10.11-x64', 'Releases\osx.10.11-x64.zip')

[IO.Compression.ZipFile]::CreateFromDirectory('PokemonGoRaidBot\bin\Release\netcoreapp1.1\ubuntu.16.10-x64', 'Releases\ubuntu.16.10-x64.zip')

[IO.Compression.ZipFile]::CreateFromDirectory('PokemonGoRaidBot\bin\Release\netcoreapp1.1\win10-x64', 'Releases\win10-x64.zip')

pause