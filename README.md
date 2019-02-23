# Objection Docker Image for Android

This image contains Objection tool for Android application instrumentation.

[@Objection Project](https://github.com/sensepost/objection)

### Installation
```bash
./build.sh
```

### Usage
```
$ ./run.sh 
[?] Frida Gadgets/Servers: https://github.com/frida/frida/releases
[?] Objection Documentation: https://github.com/sensepost/objection/wiki
[?] ADB Cheat Sheet: https://devhints.io/adb
root@4cb616b35f09:/data$ objection
Usage: objection [OPTIONS] COMMAND [ARGS]...

       _     _         _   _
   ___| |_  |_|___ ___| |_|_|___ ___
  | . | . | | | -_|  _|  _| | . |   |
  |___|___|_| |___|___|_| |_|___|_|_|
          |___|(object)inject(ion)
  
       Runtime Mobile Exploration
          by: @leonjza from @sensepost

  By default, communications will happen over USB, unless the --network
  option is provided.

Options:
  -N, --network            Connect using a network connection instead of USB.
                           [default: False]
  -h, --host TEXT          [default: 127.0.0.1]
  -p, --port INTEGER       [default: 27042]
  -ah, --api-host TEXT     [default: 127.0.0.1]
  -ap, --api-port INTEGER  [default: 8888]
  -g, --gadget TEXT        Name of the Frida Gadget/Process to connect to.
                           [default: Gadget]
  -S, --serial TEXT        A device serial to connect to.
  -d, --debug              Enabled debug mode whith verbose output.
  --help                   Show this message and exit.

Commands:
  api          Start the objection API server in headless mode.
  device-type  Get information about an attached device.
  explore      Start the objection exploration REPL.
  patchapk     Patch an APK with the frida-gadget.so.
  patchipa     Patch an IPA with the FridaGadget dylib.
  run          Run a single objection command.
  version      Prints the current version and exists.
```

