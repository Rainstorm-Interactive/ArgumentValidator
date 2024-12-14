<div align="center">

<h1>ArgumentValidator</h1>

<b>ArgumentValidator</b> is an assertion function for type validation.

---

</div>

## Features
- **Verbose Output:** Clear and informative error messages.
- **Instance-only Validation:** Keep out everything but instances.
- **Documentation:** Extensive documentation within the script to help you understand.
- **Lightweight:** No services and external dependencies.

---

## Installation
Get **ArgumentValidator** from the [Creator Store](link-robloxdev), or install the latest version from [here](repository-latest).

### For Rojo/Wally users:
Add **ArgumentValidator** to your Wally configuration (wally.toml) dependencies:
```toml
argumentvalidator = "theletron/argumentvalidator@1.0.0"
```

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

---

## License
This project is licensed under the MIT License. See the [LICENSE](repository-license) file for details.

[repository-latest]:          https://github.com/Rainstorm-Interactive/ArgumentValidator/releases/latest
[repository-license]:         ./LICENSE

[mb-get-robloxdev]:           https://gist.github.com/cxmeel/0dbc95191f239b631c3874f4ccf114e2/raw/roblox_dev.svg
[mb-get-wally]:               https://gist.github.com/cxmeel/0dbc95191f239b631c3874f4ccf114e2/raw/wally.svg

[link-robloxdev]:             https://create.roblox.com/store/asset/112775194829232/ArgumentValidator
[link-wally]:                 https://wally.run/package/theletron/argumentvalidator
