--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.16) ~  Much Love, Ferib 

]]--

bit32 = {};
local N = 32;
local P = 2 ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		local add = 0;
		if (x >= (P / 2)) then
			add = P - (2 ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_stringchar%0"] = string.char;
TABLE_TableIndirection["obf_stringbyte%0"] = string.byte;
TABLE_TableIndirection["obf_stringsub%0"] = string.sub;
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bxor;
TABLE_TableIndirection["obf_tableconcat%0"] = table.concat;
TABLE_TableIndirection["obf_tableinsert%0"] = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%0"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, i + 1)), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
TABLE_TableIndirection["obf_bitlib%1"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%1"] = TABLE_TableIndirection["obf_bitlib%1"].bxor;
TABLE_TableIndirection["obf_OR%0"] = TABLE_TableIndirection["obf_bitlib%1"].bor;
TABLE_TableIndirection["obf_AND%0"] = TABLE_TableIndirection["obf_bitlib%1"].band;
local getgenv, getnamecallmethod, hookmetamethod, newcclosure, checkcaller, stringlower = getgenv, getnamecallmethod, hookmetamethod, newcclosure, checkcaller, string[LUAOBFUSACTOR_DECRYPT_STR_0("\221\204\204\32\244", "\126\177\163\187\69\134\219\167")];
if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\2\195\62\204\215\42\206\33", "\156\67\173\74\165")] then
	return;
end
local Players, StarterGui, OldNamecall = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\4\187\72\15\185\52\85", "\38\84\215\41\118\220\70")), game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\99\2\35\0\234\85\4\5\7\247", "\158\48\118\66\114"));
getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\138\42\4\63\88\172\248\160", "\155\203\68\112\86\19\197")] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\99\211\55\254\76\125\225", "\152\38\189\86\156\32\24\133")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\82\169\66\210\88\179\79\250\94\164\71\232\94\168\72\239", "\38\156\55\199")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\117\121\43\24\87\251\79\164\120\110", "\35\200\29\28\72\115\20\154")]=false};
OldNamecall = hookmetamethod(game, LUAOBFUSACTOR_DECRYPT_STR_0("\38\128\223\222\128\41\55\24\179\221", "\84\121\223\177\191\237\76"), newcclosure(function(...)
	if (((getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\154\88\221\169\17\89\51\202", "\161\219\54\169\192\90\48\80")][LUAOBFUSACTOR_DECRYPT_STR_0("\106\74\5\38\66\97\1\41\69\71\18", "\69\41\34\96")] and not checkcaller()) or true) and (stringlower(getnamecallmethod()) == LUAOBFUSACTOR_DECRYPT_STR_0("\183\202\212\1", "\75\220\163\183\106\98")) and AntiKick[LUAOBFUSACTOR_DECRYPT_STR_0("\39\180\138\53\213\7\190", "\185\98\218\235\87")]) then
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\234\50\51\239\245\163\200\55", "\202\171\92\71\134\190")][LUAOBFUSACTOR_DECRYPT_STR_0("\26\196\34\140\7\206\56\129\47\200\47\137\61\200\35\134\58", "\232\73\161\76")] then
			StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\136\220\76\89\48\180\205\75\91\23\184\216\86\84\17\181", "\126\219\185\34\61"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\199\74\126\123", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\236\36\222", "\167\214\137\74\171\120\206\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\245\42\73", "\199\235\144\82\61\152")]="Stopped Kick/Ban From Fireing",[LUAOBFUSACTOR_DECRYPT_STR_0("\46\21\182\37", "\75\103\118\217")]="rbxassetid://6238540373",[LUAOBFUSACTOR_DECRYPT_STR_0("\227\65\98\21\173\23\200\90", "\126\167\52\16\116\217")]=2});
		end
		return nil;
	end
	return OldNamecall(...);
end));
OldNamecallBan = hookmetamethod(game[LUAOBFUSACTOR_DECRYPT_STR_0("\250\43\48\140\189\26\253\220\43\36\179\160\22\238\201\41\37", "\156\168\78\64\224\212\121")][LUAOBFUSACTOR_DECRYPT_STR_0("\46\224\177\203\21\239\166\218\14\225\171", "\174\103\142\197")].Ban, LUAOBFUSACTOR_DECRYPT_STR_0("\105\23\81\57\40\91\251\87\36\83", "\152\54\72\63\88\69\62"), newcclosure(function(...)
	if (((getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\245\202\250\85\255\205\237\87", "\60\180\164\142")][LUAOBFUSACTOR_DECRYPT_STR_0("\123\86\0\42\44\206\19\84\82\0\59", "\114\56\62\101\73\71\141")] and not checkcaller()) or true) and (stringlower(getnamecallmethod()) == LUAOBFUSACTOR_DECRYPT_STR_0("\186\232\213", "\164\216\137\187")) and AntiKick[LUAOBFUSACTOR_DECRYPT_STR_0("\247\232\48\176\170\251\15", "\107\178\134\81\210\198\158")]) then
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\25\0\150\207\129\49\13\137", "\202\88\110\226\166")][LUAOBFUSACTOR_DECRYPT_STR_0("\240\10\140\243\228\204\27\139\241\195\192\14\150\254\197\205\28", "\170\163\111\226\151")] then
			StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\34\53\188\60\96\56\61\24\54\187\59\79\35\32\30\62", "\73\113\80\210\88\46\87"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\181\37\217\30\226", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\232\182\165", "\199\122\141\216\208\204\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\144\176\92\20\141\21\80\7\133\177\12\34\154\30\29\101\162\182\94\1\129\31\23", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\28\8\221", "\230\180\127\103\179\214\28")]="rbxassetid://6238540373",[LUAOBFUSACTOR_DECRYPT_STR_0("\168\16\77\71\240\72\239\130", "\128\236\101\63\38\132\33")]=(5 - 3)});
		end
		return nil;
	end
	return OldNamecallBan(...);
end));
if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\5\77\157\226\204\167", "\175\204\201\113\36\214\139")][LUAOBFUSACTOR_DECRYPT_STR_0("\116\201\59\216\42\72\216\60\218\13\68\205\33\213\11\73\223", "\100\39\172\85\188")] then
	StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\158\125\183\132\29\162\108\176\134\58\174\121\173\137\60\163", "\83\205\24\217\224"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\204\217\49\227", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\247\207\215", "\30\222\146\161\162\90\174\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\75\104\30", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\46\103\245\23\107\81\35\120\188\86\79\89\36\118\248", "\32\56\64\19\156\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\203\234\88", "\224\58\168\133\54\58\146")]="rbxassetid://6238537240",[LUAOBFUSACTOR_DECRYPT_STR_0("\125\67\89\252\97\143\136\5", "\107\57\54\43\157\21\230\231")]=(8 - 5)});
end
game[LUAOBFUSACTOR_DECRYPT_STR_0("\233\142\1\249\176\223\206\207\142\21\198\173\211\221\218\140\20", "\175\187\235\113\149\217\188")][LUAOBFUSACTOR_DECRYPT_STR_0("\21\161\149\73\241\120\123\40\166\142\66", "\24\92\207\225\44\131\25")][LUAOBFUSACTOR_DECRYPT_STR_0("\105\210\182", "\29\43\179\216\44\123")]:Destroy();
print(LUAOBFUSACTOR_DECRYPT_STR_0("\153\208\51\77\191\213\37\72\253\251\33\66", "\44\221\185\64"));
