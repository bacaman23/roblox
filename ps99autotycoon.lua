--[[

file protected by LuaObfuscator.com, coded by bacaman23
auto buys buttons and rebirths, does not auto tp to breakable area so turn ur click aura to max

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=36) then if (v86<=17) then if (v86<=8) then if (v86<=3) then if (v86<=1) then if (v86>0) then local v114=v85[2];v83[v114](v83[v114 + 1 ]);else v83[v85[2]]=v85[3];end elseif (v86==2) then local v117=v85[2];do return v13(v83,v117,v78);end else local v118=v85[2];local v119={v83[v118](v83[v118 + 1 ])};local v120=0;for v198=v118,v85[4] do v120=v120 + 1 ;v83[v198]=v119[v120];end end elseif (v86<=5) then if (v86>4) then v83[v85[2]][v85[3]]=v83[v85[4]];elseif (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=6) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==7) then if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else local v241=v85[2];v83[v241]=v83[v241](v13(v83,v241 + 1 ,v85[3]));end elseif (v86<=12) then if (v86<=10) then if (v86==9) then do return v83[v85[2]];end else do return;end end elseif (v86==11) then if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]={};end elseif (v86<=14) then if (v86>13) then v83[v85[2]]=v29(v74[v85[3]],nil,v59);elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=15) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>16) then local v246=v85[2];local v247,v248=v76(v83[v246](v83[v246 + 1 ]));v78=(v248 + v246) -1 ;local v249=0;for v281=v246,v78 do v249=v249 + 1 ;v83[v281]=v247[v249];end else for v284=v85[2],v85[3] do v83[v284]=nil;end end elseif (v86<=26) then if (v86<=21) then if (v86<=19) then if (v86==18) then local v125=v74[v85[3]];local v126;local v127={};v126=v10({},{__index=function(v201,v202) local v203=v127[v202];return v203[1][v203[2]];end,__newindex=function(v204,v205,v206) local v207=v127[v205];v207[1][v207[2]]=v206;end});for v209=1,v85[4] do v77=v77 + 1 ;local v210=v73[v77];if (v210[1]==67) then v127[v209-1 ]={v83,v210[3]};else v127[v209-1 ]={v58,v210[3]};end v82[ #v82 + 1 ]=v127;end v83[v85[2]]=v29(v125,v126,v59);else v83[v85[2]]=v58[v85[3]];end elseif (v86==20) then local v131=v85[2];v83[v131]=v83[v131](v83[v131 + 1 ]);else v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=23) then if (v86>22) then local v135=v85[2];local v136=v83[v135];local v137=v85[3];for v212=1,v137 do v136[v212]=v83[v135 + v212 ];end else local v138=v85[2];local v139={v83[v138](v83[v138 + 1 ])};local v140=0;for v215=v138,v85[4] do v140=v140 + 1 ;v83[v215]=v139[v140];end end elseif (v86<=24) then do return v83[v85[2]];end elseif (v86==25) then do return;end elseif (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=31) then if (v86<=28) then if (v86==27) then v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;else local v142=v85[2];do return v13(v83,v142,v142 + v85[3] );end end elseif (v86<=29) then if (v83[v85[2]]<v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==30) then if (v83[v85[2]]~=v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v85[3];end elseif (v86<=33) then if (v86==32) then v83[v85[2]]=v58[v85[3]];else local v145=v85[2];do return v83[v145](v13(v83,v145 + 1 ,v85[3]));end end elseif (v86<=34) then local v146=v85[2];v83[v146]=v83[v146](v83[v146 + 1 ]);elseif (v86==35) then local v253=v85[2];v83[v253]=v83[v253]();else local v255=v85[2];local v256=v85[4];local v257=v255 + 2 ;local v258={v83[v255](v83[v255 + 1 ],v83[v257])};for v288=1,v256 do v83[v257 + v288 ]=v258[v288];end local v259=v258[1];if v259 then v83[v257]=v259;v77=v85[3];else v77=v77 + 1 ;end end elseif (v86<=55) then if (v86<=45) then if (v86<=40) then if (v86<=38) then if (v86>37) then v83[v85[2]]={};else local v149=v85[2];local v150=v83[v85[3]];v83[v149 + 1 ]=v150;v83[v149]=v150[v85[4]];end elseif (v86>39) then v83[v85[2]][v85[3]]=v83[v85[4]];else local v156=v74[v85[3]];local v157;local v158={};v157=v10({},{__index=function(v218,v219) local v220=v158[v219];return v220[1][v220[2]];end,__newindex=function(v221,v222,v223) local v224=v158[v222];v224[1][v224[2]]=v223;end});for v226=1,v85[4] do v77=v77 + 1 ;local v227=v73[v77];if (v227[1]==67) then v158[v226-1 ]={v83,v227[3]};else v158[v226-1 ]={v58,v227[3]};end v82[ #v82 + 1 ]=v158;end v83[v85[2]]=v29(v156,v157,v59);end elseif (v86<=42) then if (v86>41) then local v160=v85[2];v83[v160](v13(v83,v160 + 1 ,v85[3]));else v83[v85[2]]=v83[v85[3]];end elseif (v86<=43) then if (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>44) then if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else for v293=v85[2],v85[3] do v83[v293]=nil;end end elseif (v86<=50) then if (v86<=47) then if (v86==46) then local v163=v85[3];local v164=v83[v163];for v229=v163 + 1 ,v85[4] do v164=v164   .. v83[v229] ;end v83[v85[2]]=v164;else local v166=v85[2];v83[v166](v13(v83,v166 + 1 ,v85[3]));end elseif (v86<=48) then v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;elseif (v86==49) then local v261=v85[2];local v262,v263=v76(v83[v261](v83[v261 + 1 ]));v78=(v263 + v261) -1 ;local v264=0;for v295=v261,v78 do v264=v264 + 1 ;v83[v295]=v262[v264];end elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=52) then if (v86==51) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v170=v85[2];v83[v170]=v83[v170]();end elseif (v86<=53) then v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;elseif (v86>54) then local v265=v85[2];local v266=v85[4];local v267=v265 + 2 ;local v268={v83[v265](v83[v265 + 1 ],v83[v267])};for v298=1,v266 do v83[v267 + v298 ]=v268[v298];end local v269=v268[1];if v269 then v83[v267]=v269;v77=v85[3];else v77=v77 + 1 ;end else local v270=v85[3];local v271=v83[v270];for v301=v270 + 1 ,v85[4] do v271=v271   .. v83[v301] ;end v83[v85[2]]=v271;end elseif (v86<=64) then if (v86<=59) then if (v86<=57) then if (v86>56) then if (v83[v85[2]]~=v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else local v173=v85[2];local v174={v83[v173](v13(v83,v173 + 1 ,v78))};local v175=0;for v230=v173,v85[4] do v175=v175 + 1 ;v83[v230]=v174[v175];end end elseif (v86>58) then local v176=v85[2];v83[v176]=v83[v176](v13(v83,v176 + 1 ,v85[3]));else local v178=v85[2];local v179=v83[v178];local v180=v85[3];for v233=1,v180 do v179[v233]=v83[v178 + v233 ];end end elseif (v86<=61) then if (v86==60) then local v181=v85[2];local v182={v83[v181](v13(v83,v181 + 1 ,v78))};local v183=0;for v236=v181,v85[4] do v183=v183 + 1 ;v83[v236]=v182[v183];end else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=62) then local v185=v85[2];local v186=v83[v85[3]];v83[v185 + 1 ]=v186;v83[v185]=v186[v85[4]];elseif (v86==63) then local v274=v85[2];v83[v274](v83[v274 + 1 ]);else v83[v85[2]]=v59[v85[3]];end elseif (v86<=69) then if (v86<=66) then if (v86==65) then v83[v85[2]]= #v83[v85[3]];else local v191=v85[2];do return v13(v83,v191,v78);end end elseif (v86<=67) then v83[v85[2]]=v83[v85[3]];elseif (v86>68) then v77=v85[3];elseif (v83[v85[2]]<v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=71) then if (v86==70) then v83[v85[2]]=v59[v85[3]];else v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;end elseif (v86<=72) then local v197=v85[2];do return v83[v197](v13(v83,v197 + 1 ,v85[3]));end elseif (v86==73) then local v278=v85[2];local v279=v83[v278];for v302=v278 + 1 ,v85[3] do v7(v279,v83[v302]);end else v77=v85[3];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!403O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O00576F726B737061636503083O002O5F5448494E475303143O002O5F494E5354414E43455F434F4E5441494E455203063O00416374697665030C3O0057616974466F724368696C64030E3O005479632O6F6E496E7374616E6365023O0040F4CD7241022O00D0E6B266F141023O001FD0CFC141022O0020C4B506E941022O00C03CBC29DE41022O0040F5DCA4E541023O0088C084C441023O00389B139841023O00157E45D841022O00C019CC79EB41022O00C083B9E1E541023O008D9EADED41022O00E026E771E541022O0080C5B575E541022O00E0736B7AE541023O00CD8862D741022O002052DC7DE041023O0040097E6941024O0062773241023O0040B5665D41023O0071FA68D241022O00C05EB69BF34103043O007461736B03053O00737061776E0003053O007072696E7403103O00496E7465726E616C204661696C75726503073O0042752O746F6E7303043O0077616974026O000840030B3O004765744368696C6472656E028O0003083O0053656374696F6E7303133O005479632O6F6E52656269727468536872696E6503123O005265626972746820536872696E655F4361742O033O0050657403063O00434672616D6503093O0063686172616374657203103O0048756D616E6F6964522O6F7450617274026O00F03F03113O005265706C69636174656453746F7261676503073O004E6574776F726B03103O005479632O6F6E733A2052656269727468030C3O00496E766F6B65536572766572026O00144003053O00706169727303043O004E616D6503043O004261736503063O00737472696E6703053O006C6F776572030C3O0042692O6C626F61726447756903053O00507269636503043O005465787403043O0066722O6503053O0066722O652100933O0012403O00013O0020335O00020020335O0003001240000100013O00203300010001000400203300010001000500203300010001000600203300010001000700202500010001000800121F000300094O003B0001000300022O0026000200133O00121F0003000A3O00121F0004000B3O00121F0005000C3O00121F0006000D3O00121F0007000E3O00121F0008000F3O00121F000900103O00121F000A00113O00121F000B00123O00121F000C00133O00121F000D00143O00121F000E00153O00121F000F00163O00121F001000173O00121F001100183O00121F001200193O00121F0013001A3O00121F0014001B3O00121F0015001C3O00121F0016001D3O00121F0017001E3O00121F0018001F4O003A000200160001001240000300203O00203300030003002100062700043O000100012O00433O00024O003F000300020001001240000300203O00203300030003002100062700040001000100012O00438O003F00030002000100020E000300023O00020E000400034O0029000500044O002300050001000200260D000500370001002200044A3O00370001001240000600233O00121F000700244O003F0006000200012O000A3O00013O00203300060005002500020E000700043O00062700080005000100022O00438O00433O00073O001240000900203O00203300090009002600121F000A00274O001400090002000200060B0009009200013O00044A3O009200010020250009000600282O00140009000200022O0041000900093O00260D000900600001002900044A3O0060000100203300090005002A00203300090009002B00203300090009002C00203300090009002D00203300090009002E001240000A00013O002033000A000A0002002033000A000A0003002033000A000A002F002033000A000A0030001028000A002E0009001240000A00203O002033000A000A002600121F000B00314O003F000A00020001001240000A00013O002033000A000A0032002033000A000A0033002033000A000A0034002025000A000A00352O003F000A00020001001240000A00203O002033000A000A002600121F000B00364O003F000A000200010020250009000600282O0014000900020002002033000A00090031002025000A000A00282O0014000A0002000200060F000A00680001000100044A3O006800012O0026000A5O001240000B00374O0029000C000A4O0016000B0002000D00044A3O008F00010020330010000F003800260D0010008F0001003900044A3O008F00012O002C001000103O0012400011003A3O00203300110011003B0020330012000F003C00203300120012003D00203300120012003E2O001400110002000200262B001100800001003F00044A3O008000010012400011003A3O00203300110011003B0020330012000F003C00203300120012003D00203300120012003E2O001400110002000200260D001100820001004000044A3O0082000100121F001000293O00044A3O008800012O0029001100073O0020330012000F003C00203300120012003D00203300120012003E2O00140011000200022O0029001000114O0029001100084O00230011000100020006440010008F0001001100044A3O008F00012O0029001100033O0020330012000F002E2O003F001100020001000624000B006C0001000200044A3O006C000100044A3O003C00012O000A3O00013O00063O00063O0003043O0067616D6503073O00506C6179657273030B3O00506C61796572412O64656403073O00436F2O6E65637403053O007072696E7403113O004C6F6164656420416E7469205374612O66000B3O0012403O00013O0020335O00020020335O00030020255O000400062700023O000100012O00208O002A3O000200010012403O00053O00121F000100064O003F3O000200012O000A3O00013O00013O000C3O0003063O00737472696E6703043O0066696E6403043O004E616D65030A3O00466F726576657244657603043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203043O004B69636B03133O00506F2O7369626C6520646576206A6F696E656403063O0069706169727303063O0055736572496403153O0041205374612O66206D656D626572206A6F696E6564011D3O001240000100013O00203300010001000200203300023O000300121F000300044O003B00010003000200060B0001000D00013O00044A3O000D0001001240000100053O00203300010001000600203300010001000700202500010001000800121F000300094O002A0001000300010012400001000A4O001300026O001600010002000300044A3O001A000100203300053O000B00062D0004001A0001000500044A3O001A0001001240000500053O00203300050005000600203300050005000700202500050005000800121F0007000C4O002A000500070001000624000100110001000100044A3O001100012O000A3O00017O000F3O0003053O007072696E7403123O004C6F6164656420416E7469205265706F727403043O0077616974026O00F03F03093O0063686172616374657203103O0048756D616E6F6964522O6F745061727403083O00506F736974696F6E03053O00706169727303043O0067616D6503073O00506C6179657273030B3O004765744368696C6472656E03093O00776F726B737061636503073O005261796361737403043O004B69636B03113O00616E7469207265706F727420666972656400313O0012403O00013O00121F000100024O003F3O000200010012403O00033O00121F000100044O00143O0002000200060B3O003000013O00044A3O003000012O00137O0020335O00050020335O00060020335O0007001240000100083O001240000200093O00203300020002000A00202500020002000B2O0031000200034O003C00013O000300044A3O002D00012O001300065O0006390005002D0001000600044A3O002D00012O001300065O00203300060006000500060B0006002D00013O00044A3O002D00012O001300065O00203300060006000500203300060006000600060B0006002D00013O00044A3O002D00010020330006000500050020330006000600060020330006000600070012400007000C3O00202500070007000D2O002900096O0030000A3O00062O003B0007000A000200060F0007002D0001000100044A3O002D00012O001300085O00202500080008000E00121F000A000F4O002A0008000A0001000624000100130001000200044A3O0013000100044A3O000300012O000A3O00017O000B3O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0063686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D6503043O007461736B03043O0077616974026O00D03F027O0040026O00F03F011F3O001240000100013O002033000100010002002033000100010003002033000100010004002033000100010005002033000100010006001240000200073O00203300020002000800121F000300094O003F000200020001001240000200013O002033000200020002002033000200020003002033000200020004002033000200020005001028000200063O001240000200073O00203300020002000800121F0003000A4O003F000200020001001240000200013O002033000200020002002033000200020003002033000200020004002033000200020005001028000200060001001240000200073O00203300020002000800121F0003000B4O003F0002000200012O000A3O00017O00133O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0063686172616374657203103O0048756D616E6F6964522O6F745061727403083O00506F736974696F6E03093O00576F726B737061636503083O002O5F5448494E475303073O005479632O6F6E73030B3O004765744368696C6472656E03043O006D61746803043O006875676503053O007061697273030C3O00496E74657261637461626C65030D3O00537061776E506F736974696F6E03093O004D61676E69747564650003043O007761726E03113O004E6F205479632O6F6E73204C6F6164656400273O0012403O00013O0020335O00020020335O00030020335O00040020335O00050020335O0006001240000100013O00203300010001000700203300010001000800203300010001000900202500010001000A2O00140001000200022O002C000200023O0012400003000B3O00203300030003000C0012400004000D4O0029000500014O001600040002000600044A3O001C000100203300090008000E00203300090009000F0020330009000900062O0030000A00093O002033000A000A0010000644000A001C0001000300044A3O001C00012O00290003000A4O0029000200083O000624000400130001000200044A3O0013000100260D000200250001001100044A3O00250001001240000400123O00121F000500134O003F0004000200012O002C000400044O0018000400024O0018000200024O000A3O00017O00133O0003043O0067737562030A3O005B25C2A325242C205D2B034O00026O00F03F03053O006D6174636803093O005B6B4B6D4D62425D2403053O006C6F77657203013O006B025O00408F4003013O006D024O0080842E4103013O0062024O00652OCD412O033O00737562027O00C003083O00746F6E756D62657203043O007761726E031A3O00636F6E766572746572206661696C65642077697468206172672003083O00746F737472696E6701323O00202500013O000100121F000300023O00121F000400034O003B00010004000200121F000200043O00202500030001000500121F000500064O003B00030005000200060B0003002000013O00044A3O002000010020250004000300072O001400040002000200260D000400100001000800044A3O0010000100121F000200093O00044A3O001B00010020250004000300072O001400040002000200260D000400160001000A00044A3O0016000100121F0002000B3O00044A3O001B00010020250004000300072O001400040002000200260D0004001B0001000C00044A3O001B000100121F0002000D3O00202500040001000E00121F000600043O00121F0007000F4O003B0004000700022O0029000100043O001240000400104O0029000500014O001400040002000200060B0004002800013O00044A3O002800012O00350005000400022O0018000500023O00044A3O00310001001240000500113O00121F000600123O001240000700134O002900086O00140007000200022O002E0006000600072O003F0005000200012O002C000500054O0018000500024O000A3O00017O00083O0003093O00506C61796572477569030A3O004D61696E4D6F62696C65030E3O004D6F62696C6543752O72656E637903063O00426F2O746F6D030F3O0044696E6F5479632O6F6E436F696E7303113O0044696E6F205479632O6F6E20436F696E7303063O00416D6F756E7403043O0054657874000D4O00137O0020335O00010020335O00020020335O00030020335O00040020335O00050020335O00060020335O00072O0013000100013O00203300023O00082O0048000100024O000200016O000A3O00017O00",v9(),...);