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
TABLE_TableIndirection["DF%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
TABLE_TableIndirection["HJ%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\1\204\41\196\241\34\195\120\150", "\156\67\173\74\165");
TABLE_TableIndirection["ER%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\24\131\27\27\179\40\67\45\136\90\2\179\52\71\51\178", "\38\84\215\41\118\220\70");
TABLE_TableIndirection["JJ%0"] = {TABLE_TableIndirection["HJ%0"],TABLE_TableIndirection["ER%0"]};
_G[LUAOBFUSACTOR_DECRYPT_STR_0("\114\62", "\158\48\118\66\114")] = 0 - 0;
TABLE_TableIndirection["AB%0"] = 0;
TABLE_TableIndirection["BA%0"] = 1 - 0;
TABLE_TableIndirection["AC%0"] = 7 - 4;
TABLE_TableIndirection["QM%0"] = math.rad(TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]));
TABLE_TableIndirection["BV%0"] = TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + (TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]), TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + (TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]), TABLE_TableIndirection["AC%0"]);
TABLE_TableIndirection["ZD%0"] = TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"], TABLE_TableIndirection["AC%0"] * TABLE_TableIndirection["AC%0"]) + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]);
local A, B, C, D, A8 = LUAOBFUSACTOR_DECRYPT_STR_0("\138\42\4\63", "\155\203\68\112\86\19\197"), LUAOBFUSACTOR_DECRYPT_STR_0("\97\207\63\249\70", "\152\38\189\86\156\32\24\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\69\174\65\251\82\181\67\248", "\38\156\55\199"), LUAOBFUSACTOR_DECRYPT_STR_0("\154\120\125\59\28\122", "\35\200\29\28\72\115\20\154"), " ";
TABLE_TableIndirection["UQ%0"] = A .. A8 .. B .. A8 .. C .. A8 .. D;
local function HZ(ZH)
	TABLE_TableIndirection["KO%0"] = ZH[LUAOBFUSACTOR_DECRYPT_STR_0("\47\186\221\208\142\37\32\0", "\84\121\223\177\191\237\76")];
	return math.sqrt(TABLE_TableIndirection["obf_AND%0"]((TABLE_TableIndirection["KO%0"]['X'] ^ (5 - 3)) + (TABLE_TableIndirection["KO%0"]['Y'] ^ (621 - (TABLE_TableIndirection["obf_AND%0"](555, 64) + TABLE_TableIndirection["obf_OR%0"](555, 64)))), TABLE_TableIndirection["KO%0"]['Z'] ^ 2) + TABLE_TableIndirection["obf_OR%0"]((TABLE_TableIndirection["KO%0"]['X'] ^ (5 - 3)) + (TABLE_TableIndirection["KO%0"]['Y'] ^ (621 - (TABLE_TableIndirection["obf_AND%0"](555, 64) + TABLE_TableIndirection["obf_OR%0"](555, 64)))), TABLE_TableIndirection["KO%0"]['Z'] ^ 2));
end
local function CC(NA, AA, AN)
	return Vector3.new(NA, AA, AN);
end
local function XX(X)
	game[LUAOBFUSACTOR_DECRYPT_STR_0("\139\90\200\185\63\66\35", "\161\219\54\169\192\90\48\80")][LUAOBFUSACTOR_DECRYPT_STR_0("\101\77\3\36\69\114\12\36\80\71\18", "\69\41\34\96")]:Kick(X);
end
local function A0(B0)
	print(B0);
end
while wait(TABLE_TableIndirection["BA%0"] + (TABLE_TableIndirection["BA%0"] / TABLE_TableIndirection["BA%0"])) do
	for _, GH in ipairs(TABLE_TableIndirection["DF%0"]:GetPlayers()) do
		TABLE_TableIndirection["YT%0"] = GH[LUAOBFUSACTOR_DECRYPT_STR_0("\133\247", "\75\220\163\183\106\98")];
		TABLE_TableIndirection["JQ%0"] = TABLE_TableIndirection["YT%0"] and TABLE_TableIndirection["YT%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\175\134\54\215\13\179\143\5\214\13\174\187\54\203\22", "\185\98\218\235\87"));
		if (TABLE_TableIndirection["YT%0"] and (TABLE_TableIndirection["DF%0"] ~= TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\51\36\231\210\154\199\61\62\227\204", "\202\171\92\71\134\190")]) and not table.find(TABLE_TableIndirection["JJ%0"], TABLE_TableIndirection["DF%0"].Name)) then
			TABLE_TableIndirection["YT%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\1\212\33\137\39\206\37\140", "\232\73\161\76"))[LUAOBFUSACTOR_DECRYPT_STR_0("\137\204\76\83\23\181\222", "\126\219\185\34\61")]:Connect(function(YH)
				if (YH > TABLE_TableIndirection["BV%0"]) then
					A0(TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\207\83\119", "\135\108\174\62\18\30\23\147")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\246\224\57\139\12\171\63\194\166\230\56\223\17\160\52\135\185\251\106\205\20\183\58\201\177", "\167\214\137\74\171\120\206\83"));
					_G[LUAOBFUSACTOR_DECRYPT_STR_0("\169\216", "\199\235\144\82\61\152")] = TABLE_TableIndirection["obf_AND%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\37\62", "\75\103\118\217")], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\229\124", "\126\167\52\16\116\217")], TABLE_TableIndirection["BA%0"]);
					if (_G[LUAOBFUSACTOR_DECRYPT_STR_0("\234\6", "\156\168\78\64\224\212\121")] > (TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]))) then
						XX(TABLE_TableIndirection["UQ%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\93\174", "\174\103\142\197") .. TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\148\243\239\79\148\194\226\69\221\202\233\28\251\214\174\72\209\200\235\76\219\214\250\85\218\195", "\60\180\164\142"));
					end
				end
			end);
			TABLE_TableIndirection["YT%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\112\75\8\40\41\226\27\92", "\114\56\62\101\73\71\141"))[LUAOBFUSACTOR_DECRYPT_STR_0("\146\252\214\212\177\231\220", "\164\216\137\187")]:Connect(function()
				TABLE_TableIndirection["LL%0"] = TABLE_TableIndirection["YT%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\248\215", "\107\178\134\81\210\198\158")][LUAOBFUSACTOR_DECRYPT_STR_0("\8\1\145\207\190\49\1\140", "\202\88\110\226\166")];
				TABLE_TableIndirection["OO%0"] = CC(TABLE_TableIndirection["AB%0"], -TABLE_TableIndirection["ZD%0"], TABLE_TableIndirection["AB%0"]);
				TABLE_TableIndirection["ZZ%0"] = Ray.new(TABLE_TableIndirection["LL%0"], TABLE_TableIndirection["OO%0"]);
				local TY, TT = workspace:FindPartOnRay(TABLE_TableIndirection["ZZ%0"], TABLE_TableIndirection["YT%0"], false, true);
				if TY then
					TABLE_TableIndirection["IO%0"] = (TT - TABLE_TableIndirection["LL%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\238\14\133\249\195\215\26\134\242", "\170\163\111\226\151")];
					if (TABLE_TableIndirection["IO%0"] > TABLE_TableIndirection["ZD%0"]) then
						A0(TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\49\191\61", "\73\113\80\210\88\46\87")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\193\37\222\82\225\141\53\196\28\224", "\135\225\76\173\114"));
						_G[LUAOBFUSACTOR_DECRYPT_STR_0("\56\197", "\199\122\141\216\208\204\221")] = TABLE_TableIndirection["obf_AND%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\143\245", "\150\205\189\112\144\24")], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\7\172", "\112\69\228\223\44\100\232\113")], TABLE_TableIndirection["BA%0"]);
						if (_G[LUAOBFUSACTOR_DECRYPT_STR_0("\246\55", "\230\180\127\103\179\214\28")] > (TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]))) then
							XX(TABLE_TableIndirection["UQ%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\214\69", "\128\236\101\63\38\132\33") .. TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\7\251\52\207\68\65\192\44\213\10\64", "\100\39\172\85\188"));
						end
					end
				else
					A0(TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\121\180\133", "\83\205\24\217\224")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\166\204\222\125\224\201\212\52\232\194", "\93\134\165\173"));
					_G[LUAOBFUSACTOR_DECRYPT_STR_0("\156\218", "\30\222\146\161\162\90\174\210")] = TABLE_TableIndirection["obf_AND%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\199\102", "\106\133\46\16")], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\122\8", "\32\56\64\19\156\58")], TABLE_TableIndirection["BA%0"]);
					if (_G[LUAOBFUSACTOR_DECRYPT_STR_0("\120\224", "\224\58\168\133\54\58\146")] > (TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]))) then
						XX(TABLE_TableIndirection["UQ%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\3\22", "\107\57\54\43\157\21\230\231") .. TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\138\28\240", "\175\187\235\113\149\217\188")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\124\152\128\95\163\127\116\37\166\143\75", "\24\92\207\225\44\131\25"));
					end
				end
			end);
			TABLE_TableIndirection["YT%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\99\198\181\77\21\114\66\215", "\29\43\179\216\44\123"))[LUAOBFUSACTOR_DECRYPT_STR_0("\144\214\54\69\179\222\4\69\175\220\35\88\180\214\46\111\181\216\46\75\184\221", "\44\221\185\64")]:Connect(function()
				TABLE_TableIndirection["KK%0"] = TABLE_TableIndirection["JQ%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\193\90\94\126\4", "\19\97\135\40\63")][LUAOBFUSACTOR_DECRYPT_STR_0("\155\76\5\62\44\37\161\78", "\81\206\60\83\91\79")];
				TABLE_TableIndirection["QQ%0"] = CC(TABLE_TableIndirection["AB%0"], TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["AB%0"]);
				TABLE_TableIndirection["PP%0"] = math.acos(TABLE_TableIndirection["KK%0"]:Dot(TABLE_TableIndirection["QQ%0"]));
				if (TABLE_TableIndirection["PP%0"] > TABLE_TableIndirection["QM%0"]) then
					A0(TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\96\170\221\119", "\196\46\203\176\18\79\163\45")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\248\43\109\94\34\247\246\177\44\121", "\143\216\66\30\126\68\155"));
					_G[LUAOBFUSACTOR_DECRYPT_STR_0("\136\224", "\129\202\168\109\171\165\195\183")] = TABLE_TableIndirection["obf_AND%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\0\112", "\134\66\56\87\184\190\116")], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\30\25", "\85\92\81\105\219\121\139\65")], TABLE_TableIndirection["BA%0"]);
					if (_G[LUAOBFUSACTOR_DECRYPT_STR_0("\223\155", "\191\157\211\48\37\28")] > (TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]))) then
						XX(TABLE_TableIndirection["UQ%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\133\95", "\90\191\127\148\124") .. TABLE_TableIndirection["DF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\86\134\35\18", "\119\24\231\78")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\194\26\164\89\156\70\29\155\36\171\77\156\123\36\146\27\160\73\200\79\3\194\1\172\71\213\84\44", "\113\226\77\197\42\188\32"));
					end
				end
			end);
		end
	end
	workspace[LUAOBFUSACTOR_DECRYPT_STR_0("\30\19\231\182\63\24\240\180\52\2\213\177\62\19\240", "\213\90\118\148")]:Connect(function(FF)
		if (FF:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\118\33\176\83\65", "\45\59\78\212\54")) and (FF[LUAOBFUSACTOR_DECRYPT_STR_0("\38\83\143\132\133\39\185\233", "\144\112\54\227\235\230\78\205")] ~= CC(TABLE_TableIndirection["AB%0"], TABLE_TableIndirection["AB%0"], TABLE_TableIndirection["AB%0"]))) then
			FF:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\133\45\3\243\211\82\167\49", "\59\211\72\111\156\176")):Connect(function()
				if (HZ(FF) > TABLE_TableIndirection["BV%0"]) then
					TABLE_TableIndirection["HH%0"] = HZ(FF);
					A0(LUAOBFUSACTOR_DECRYPT_STR_0("\111\199\238\34\74\130\239\109\71\148\163\32\65\145\234\35\73\199\247\34\65\199\229\44\93\147", "\77\46\231\131"));
					_G[LUAOBFUSACTOR_DECRYPT_STR_0("\152\124", "\32\218\52\214")] = TABLE_TableIndirection["obf_AND%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\108\63", "\58\46\119\81\200\145\208\37")], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](_G[LUAOBFUSACTOR_DECRYPT_STR_0("\9\164", "\86\75\236\80\204\201\221")], TABLE_TableIndirection["BA%0"]);
					if (_G[LUAOBFUSACTOR_DECRYPT_STR_0("\80\105", "\235\18\33\23\229\158")] > (TABLE_TableIndirection["obf_AND%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]) + TABLE_TableIndirection["obf_OR%0"](TABLE_TableIndirection["AC%0"] + TABLE_TableIndirection["BA%0"], TABLE_TableIndirection["BA%0"]))) then
						XX(TABLE_TableIndirection["UQ%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\10\250\236\180\84\191\205\251\99\170\196\190\84\250\250", "\219\48\218\161") .. TABLE_TableIndirection["HH%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\217\49\89\81\216\74\229\224\116\120\9\247\70\237\237\101", "\128\132\17\28\41\187\47"));
					end
				end
			end);
		end
	end);
end
