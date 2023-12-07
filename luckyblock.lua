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
TABLE_TableIndirection["v0%0"] = false;
game[LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167")][LUAOBFUSACTOR_DECRYPT_STR_0("\15\194\41\196\240\19\193\43\220\249\49", "\156\67\173\74\165")][LUAOBFUSACTOR_DECRYPT_STR_0("\23\191\72\2\168\35\66", "\38\84\215\41\118\220\70")]:Connect(function(v1)
	if (v1 == "/e start") then
		TABLE_TableIndirection["v0%0"] = true;
	elseif (v1 == "/e stop") then
		TABLE_TableIndirection["v0%0"] = false;
	end
end);
while wait() do
	if TABLE_TableIndirection["v0%0"] then
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\98\19\50\30\247\83\23\54\23\250\99\2\45\0\255\87\19", "\158\48\118\66\114"))[LUAOBFUSACTOR_DECRYPT_STR_0("\152\52\17\33\125\137\238\168\47\9\20\127\170\248\160", "\155\203\68\112\86\19\197")]:FireServer();
	end
end
