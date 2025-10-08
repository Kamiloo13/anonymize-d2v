# Anonymize D2V

## ⚙️ 1. Install OpenHud

1. Download the file [win-x64-3.0.6.zip](https://github.com/JohnTimmermann/OpenHud/releases/download/3.0.6/win-x64-3.0.6.zip)
2. Extract the ZIP file anywhere you want, for example next to this project.
3. Inside the extracted folder, you’ll find a directory called `win-unpacked`.
4. Rename that folder to **`OpenHud`** and place it in the main directory.
5. Go to `./OpenHud/resources/src/assets` and copy file `gamestate_integration_openhud.cfg` to cs2 cfg folder `./game/csgo/cfg`
---

## 🧰 2. Install HLAE

1. Download HLAE zip [hlae_2_187_2.zip](https://github.com/advancedfx/advancedfx/releases/download/v2.187.2/hlae_2_187_2.zip)
2. Extract the ZIP into a folder and rename to **`HLAE`** and place in the main directory.

---

## 🧱 3. Initialize Git Submodules

Run these commands in your project’s root directory:

```bash
git submodule update --init --recursive --depth=1
```

This will clone all submodules into their respective folders.

---

## 📦 4. Install NPM Dependencies

Both submodules contain their own Node.js packages.

Run the following commands:

```bash
cd cs-demo-manager
npm install
cd ..

cd demo2video
npm install
cd ..
```

---

## 📝 5. Change `.csdm-dev/settings.json`

> [!IMPORTANT]
> This config shows only the values that needs to be changed

```
{
  "schemaVersion": 9, // Make sure your version is set to 9 to avoid migrations
  "playback": {
    "useHlae": true,    // Make sure you have HLAE Enabled
  },
  "video": {
    "hlae": {
      "customLocationEnabled": true, // Enable custom path and pass it below
      "customExecutableLocation": "C:\\Program Files (x86)\\HLAE\\HLAE.exe",
    },
  }
}
```

---

## 6. Modify `start.bat`
Make sure that all of the paths are correct (espsecially OBS path)

---

## ✅ 7. Verify Installation

You should now have the following structure:

```
CSWatch-Anonymizer/
├─ OpenHud/
│  └─ OpenHud.exe
├─ HLAE/
│  └─ HLAE.exe
├─ cs-demo-manager/
│  ├─ node_modules/
│  └─ package.json
├─ demo2video/
│  ├─ node_modules/
│  └─ package.json
└─ ...
```

---
