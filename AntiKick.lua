-- coded by bacaman23
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
local v0, v1, v2, v3, v4, v5 = getgenv, getnamecallmethod, hookmetamethod, newcclosure, checkcaller, string[LUAOBFUSACTOR_DECRYPT_STR_0("\221\204\204\32\244", "\126\177\163\187\69\134\219\167")];
if (v0()[LUAOBFUSACTOR_DECRYPT_STR_0("\2\195\62\204\215\42\206\33", "\156\67\173\74\165")] or ((14360 - 9767) <= 2672)) then
	return;
end
local v6, v7, v8 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\4\187\72\15\185\52\85", "\38\84\215\41\118\220\70")), game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\99\2\35\0\234\85\4\5\7\247", "\158\48\118\66\114"));
v0()[LUAOBFUSACTOR_DECRYPT_STR_0("\138\42\4\63\88\172\248\160", "\155\203\68\112\86\19\197")] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\99\211\55\254\76\125\225", "\152\38\189\86\156\32\24\133")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\82\169\66\210\88\179\79\250\94\164\71\232\94\168\72\239", "\38\156\55\199")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\117\121\43\24\87\251\79\164\120\110", "\35\200\29\28\72\115\20\154")]=false};
v8 = v2(game, LUAOBFUSACTOR_DECRYPT_STR_0("\38\128\223\222\128\41\55\24\179\221", "\84\121\223\177\191\237\76"), v3(function(...)
	if ((((v0()[LUAOBFUSACTOR_DECRYPT_STR_0("\154\88\221\169\17\89\51\202", "\161\219\54\169\192\90\48\80")][LUAOBFUSACTOR_DECRYPT_STR_0("\106\74\5\38\66\97\1\41\69\71\18", "\69\41\34\96")] and not v4()) or true) and (v5(v1()) == LUAOBFUSACTOR_DECRYPT_STR_0("\183\202\212\1", "\75\220\163\183\106\98")) and AntiKick[LUAOBFUSACTOR_DECRYPT_STR_0("\39\180\138\53\213\7\190", "\185\98\218\235\87")]) or (1168 > 3156)) then
		if (v0()[LUAOBFUSACTOR_DECRYPT_STR_0("\234\50\51\239\245\163\200\55", "\202\171\92\71\134\190")][LUAOBFUSACTOR_DECRYPT_STR_0("\26\196\34\140\7\206\56\129\47\200\47\137\61\200\35\134\58", "\232\73\161\76")] or (572 > 4486)) then
			TABLE_TableIndirection["v10%0"] = ...;
			v7:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\136\220\76\89\48\180\205\75\91\23\184\216\86\84\17\181", "\126\219\185\34\61"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\199\74\126\123", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\232\46\206\88\140\42\135\148\232\41\202\21\175\61\149\229", "\167\214\137\74\171\120\206\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\245\42\73", "\199\235\144\82\61\152")]=("Anti Kick/Ban Fired On " .. tostring(TABLE_TableIndirection["v10%0"])),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\21\182\37", "\75\103\118\217")]="rbxassetid://6238540373",[LUAOBFUSACTOR_DECRYPT_STR_0("\227\65\98\21\173\23\200\90", "\126\167\52\16\116\217")]=(5 - 3)});
		end
		return nil;
	end
	return v8(...);
end));
if ((1404 == (2710 - 1306)) and v0()[LUAOBFUSACTOR_DECRYPT_STR_0("\233\32\52\137\159\16\255\195", "\156\168\78\64\224\212\121")][LUAOBFUSACTOR_DECRYPT_STR_0("\52\235\171\202\41\225\177\199\1\231\166\207\19\231\170\192\20", "\174\103\142\197")]) then
	v7:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\101\45\81\60\11\81\236\95\46\86\59\36\74\241\89\38", "\152\54\72\63\88\69\62"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\205\250\80\209", "\60\180\164\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\95\1\44\103\207\11\24\124\4\42\38\224\19\86\12\86", "\114\56\62\101\73\71\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\236\195\208", "\164\216\137\187")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\233\53\183\230\210\4\211\226\52\182", "\107\178\134\81\210\198\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\13\141\200", "\202\88\110\226\166")]="rbxassetid://6238537240",[LUAOBFUSACTOR_DECRYPT_STR_0("\231\26\144\246\222\202\0\140", "\170\163\111\226\151")]=3});
end
