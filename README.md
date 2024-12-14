<div align="center">

<h1>ArgumentValidator</h1>

<b>ArgumentValidator</b> is an assertion function for type validation.

[![Get it on Roblox][mb-get-robloxdev]][link-robloxdev]
[![Download][mb-download]][repository-latest]

</div>

---

## Features
- **Verbose Output:** Clear and informative error messages.
- **Instance-only Validation:** Keep out everything but instances.
- **Documentation:** Extensive documentation within the script to help you understand.
- **Lightweight:** No services and external dependencies.

---

## Installation
Get **ArgumentValidator** from the [Creator Store](link-robloxdev), or install the latest version from [here](repository-latest).

---

## Usage
### **Parameters:**
- `arg`: The value you want to validate.
- `expectedType`: The type you expect the value to have (e.g., `"string"`, `"Instance"`, or a Roblox class like `"Humanoid"`).
- `argName`: The name of the argument being validated (used for error messages).

#### **Here is a very simple usage:**
```lua
local ArgumentValidator = require(script.ArgumentValidator)

local function PrintHelloWithPrefix(Prefix: string)
    ArgumentValidator(Prefix, "string", "Prefix")
    print(string.format("%s :: Hello!", Prefix))
end
```

- `PrintHelloWithPrefix("Example")` <br>
**Output**: `Example :: Hello!`
- `PrintHelloWithPrefix(123)` <br>
**Output**: `Argument 'Prefix' only allows type 'string', got type 'number'`

[repository-latest]:          https://github.com/theletron/ArgumentValidator/releases/latest
[repository-license]:         ./LICENSE

[mb-get-robloxdev]:           https://gist.githubusercontent.com/cxmeel/0dbc95191f239b631c3874f4ccf114e2/raw/bb4634715f95ebb209b4e0bcdd4d2d98fe64c64c/roblox_dev.svg
[mb-download]:                https://gist.githubusercontent.com/cxmeel/0dbc95191f239b631c3874f4ccf114e2/raw/bb4634715f95ebb209b4e0bcdd4d2d98fe64c64c/download.svg

[link-robloxdev]:             https://create.roblox.com/store/asset/112775194829232/ArgumentValidator
