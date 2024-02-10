# Minecraft mod on the go

Simple and structured sh script client

## Preamble

If you play multiple versions of Minecraft</br>
If you have to add, remove and move mods every time depending on the desired version</br>
and you are lazy to do it manually...

I wrote this script that will do it for you

### Structure

```
minecraft
├── fabric-installer-1.0.0.jar
├── mc-switcher.sh
├── README.md
├── shaderpacks
│  ├── ...
│  ├── shader.zip
│  └── shader.zip.txt
└── versions
   ├── A.BC.D
   │  ├── ...
   │  └── mod-A.BC.D.jar
   └── W.XY.Z
      ├── ...
      └── mod-W.XY.Z.jar
```

### Script

```
> sha256sum mc-switcher.sh
> c7a86cad5e42a716a6831d4f2fdf7f8827e1406e8735039a14c03160637f95bc  mc-switcher.sh
```
