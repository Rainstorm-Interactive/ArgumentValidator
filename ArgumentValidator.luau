--!strict
--[[
	
	Author: @5y5sy (rblx.name/1107111324)
	@theletron on GitHub
	https://github.com/theletron
	
	ArgumentValidator
	A robust assertion function for type validation.
	
	Version: 1.0.0
	Date: 13/12/2024
	Repository: https://github.com/theletron/ArgumentValidator
	
	MIT License
	
	Copyright (c) 2024 theletron
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
	
]]--

export type ArgumentValidator = (arg: any, expectedType: string, argName: string) -> boolean

-- Validates the type of an argument against an expected type, and throws an error with a detailed message if it is invalid.
function ArgumentValidator(arg: any, expectedType: string, argName: string): boolean
	-- Validate arguments that they are supposed to be of the correct types
	if typeof(expectedType) ~= "string" then
		error("ArgumentValidator failed: expectedType must be a string, got type " .. typeof(expectedType), 2)
	end
	
	if typeof(argName) ~= "string" then
		error("ArgumentValidator failed: argName must be a string, got type " .. typeof(argName), 2)
	end
	
	-- Instance only validation
	if expectedType == "Instance" then
		if typeof(arg) ~= "Instance" then
			error(string.format("Argument '%s' must be an Instance, got type '%s'", argName, typeof(arg)), 2)
		end
		return true
	end
	
	-- Roblox instance validation (e.g. Humanoid)
	if typeof(arg) == "Instance" then
		if arg:IsA(expectedType) then
			return true
		else
			error(string.format("Argument '%s' must be a '%s', got '%s'", argName, expectedType, arg.ClassName), 2)
		end
	end
	
	-- Regular type validation (non-instance)
	if typeof(arg) ~= expectedType then
		error(string.format("Argument '%s' only allows type '%s', got type '%s'", argName, expectedType, typeof(arg)), 2)
	end
	
	return true -- Argument is valid
end

return ArgumentValidator