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
TABLE_TableIndirection["v1%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\226\215\218\55\242\190\213\57\196\202", "\126\177\163\187\69\134\219\167"));
TABLE_TableIndirection["v1%0"]:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\16\200\36\193\210\44\217\35\195\245\32\204\62\204\243\45", "\156\67\173\74\165"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\190\93\26\185", "\38\84\215\41\118\220\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\25\38\23\250\16\52\59\82\220\81\21\35\31\255\94\68\113", "\158\48\118\66\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\33\8\34", "\155\203\68\112\86\19\197")]="Type /e start or /e stop to toggle",[LUAOBFUSACTOR_DECRYPT_STR_0("\111\222\57\242", "\152\38\189\86\156\32\24\133")]="rbxassetid://6238540373",[LUAOBFUSACTOR_DECRYPT_STR_0("\216\66\181\71\232\94\168\72", "\38\156\55\199")]=(12 - 8)});
game[LUAOBFUSACTOR_DECRYPT_STR_0("\152\113\125\49\22\102\233", "\35\200\29\28\72\115\20\154")][LUAOBFUSACTOR_DECRYPT_STR_0("\53\176\210\222\129\28\56\24\166\212\205", "\84\121\223\177\191\237\76")][LUAOBFUSACTOR_DECRYPT_STR_0("\152\94\200\180\46\85\52", "\161\219\54\169\192\90\48\80")]:Connect(function(v2)
	if ((v2 == "/e start") and not TABLE_TableIndirection["v0%0"]) then
		TABLE_TableIndirection["v1%0"]:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\122\71\14\33\103\77\20\44\79\75\3\36\93\75\15\43", "\69\41\34\96"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\202\195\6\7", "\75\220\163\183\106\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\187\143\50\153\32\163\203\21\216\1\187\134\54\215\80\233", "\185\98\218\235\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242", "\202\171\92\71\134\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\206\43\143\37\196\40\200\6\207", "\232\73\161\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\218\77\83", "\126\219\185\34\61")]="rbxassetid://6238540373",[LUAOBFUSACTOR_DECRYPT_STR_0("\40\219\76\115\106\126\252\233", "\135\108\174\62\18\30\23\147")]=2});
		TABLE_TableIndirection["v0%0"] = true;
	elseif ((v2 == "/e stop") and TABLE_TableIndirection["v0%0"]) then
		TABLE_TableIndirection["v1%0"]:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\133\236\36\207\54\161\39\206\176\224\41\202\12\167\60\201", "\167\214\137\74\171\120\206\83"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\191\249\38\81\253", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\23\189\46\71\52\160\107\37\23\186\42\10\23\183\121\84", "\75\103\118\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\33\39\135\184\28\248\136\1\38\134", "\156\168\78\64\224\212\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\237\170\192", "\174\103\142\197")]="rbxassetid://6238540373",[LUAOBFUSACTOR_DECRYPT_STR_0("\114\61\77\57\49\87\247\88", "\152\54\72\63\88\69\62")]=2});
		TABLE_TableIndirection["v0%0"] = false;
	end
end);
while wait() do
	if TABLE_TableIndirection["v0%0"] then
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\230\193\254\80\221\199\239\72\209\192\221\72\219\214\239\91\209", "\60\180\164\142"))[LUAOBFUSACTOR_DECRYPT_STR_0("\107\78\4\62\41\193\7\91\85\28\11\43\226\17\83", "\114\56\62\101\73\71\141")]:FireServer();
	end
end
