print("V3")
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=16) then if (v86<=7) then if (v86<=3) then if (v86<=1) then if (v86>0) then do return v83[v85[2]];end else local v114;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v114=v85[2];v83[v114]=v83[v114](v13(v83,v114 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86==2) then local v123=v85[2];local v124,v125=v76(v83[v123](v83[v123 + 1 ]));v78=(v125 + v123) -1 ;local v126=0;for v261=v123,v78 do v126=v126 + 1 ;v83[v261]=v124[v126];end else local v127;local v128;local v127,v129;local v130;local v131;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v131=v85[2];v130=v83[v85[3]];v83[v131 + 1 ]=v130;v83[v131]=v130[v85[4]];v77=v77 + 1 ;v85=v73[v77];v131=v85[2];v127,v129=v76(v83[v131](v83[v131 + 1 ]));v78=(v129 + v131) -1 ;v128=0;for v264=v131,v78 do v128=v128 + 1 ;v83[v264]=v127[v128];end v77=v77 + 1 ;v85=v73[v77];v131=v85[2];v127={v83[v131](v13(v83,v131 + 1 ,v78))};v128=0;for v267=v131,v85[4] do v128=v128 + 1 ;v83[v267]=v127[v128];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=5) then if (v86>4) then local v142;local v143;local v142,v144;local v145;local v146;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v146=v85[2];v145=v83[v85[3]];v83[v146 + 1 ]=v145;v83[v146]=v145[v85[4]];v77=v77 + 1 ;v85=v73[v77];v146=v85[2];v142,v144=v76(v83[v146](v83[v146 + 1 ]));v78=(v144 + v146) -1 ;v143=0;for v270=v146,v78 do v143=v143 + 1 ;v83[v270]=v142[v143];end v77=v77 + 1 ;v85=v73[v77];v146=v85[2];v142={v83[v146](v13(v83,v146 + 1 ,v78))};v143=0;for v273=v146,v85[4] do v143=v143 + 1 ;v83[v273]=v142[v143];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v156=v74[v85[3]];local v157;local v158={};v157=v10({},{__index=function(v276,v277) local v278=v158[v277];return v278[1][v278[2]];end,__newindex=function(v279,v280,v281) local v282=v158[v280];v282[1][v282[2]]=v281;end});for v284=1,v85[4] do v77=v77 + 1 ;local v285=v73[v77];if (v285[1]==19) then v158[v284-1 ]={v83,v285[3]};else v158[v284-1 ]={v58,v285[3]};end v82[ #v82 + 1 ]=v158;end v83[v85[2]]=v29(v156,v157,v59);end elseif (v86>6) then local v160;local v161;local v160,v162;local v163;local v164;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v164=v85[2];v163=v83[v85[3]];v83[v164 + 1 ]=v163;v83[v164]=v163[v85[4]];v77=v77 + 1 ;v85=v73[v77];v164=v85[2];v160,v162=v76(v83[v164](v83[v164 + 1 ]));v78=(v162 + v164) -1 ;v161=0;for v287=v164,v78 do v161=v161 + 1 ;v83[v287]=v160[v161];end v77=v77 + 1 ;v85=v73[v77];v164=v85[2];v160={v83[v164](v13(v83,v164 + 1 ,v78))};v161=0;for v290=v164,v85[4] do v161=v161 + 1 ;v83[v290]=v160[v161];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v174;local v175;local v174,v176;local v177;local v178;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v178=v85[2];v177=v83[v85[3]];v83[v178 + 1 ]=v177;v83[v178]=v177[v85[4]];v77=v77 + 1 ;v85=v73[v77];v178=v85[2];v174,v176=v76(v83[v178](v83[v178 + 1 ]));v78=(v176 + v178) -1 ;v175=0;for v293=v178,v78 do v175=v175 + 1 ;v83[v293]=v174[v175];end v77=v77 + 1 ;v85=v73[v77];v178=v85[2];v174={v83[v178](v13(v83,v178 + 1 ,v78))};v175=0;for v296=v178,v85[4] do v175=v175 + 1 ;v83[v296]=v174[v175];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=11) then if (v86<=9) then if (v86==8) then local v188=v85[2];v83[v188](v83[v188 + 1 ]);else local v189=v85[2];v83[v189]=v83[v189]();end elseif (v86==10) then for v299=v85[2],v85[3] do v83[v299]=nil;end else local v191=v85[2];local v192=v85[4];local v193=v191 + 2 ;local v194={v83[v191](v83[v191 + 1 ],v83[v193])};for v301=1,v192 do v83[v193 + v301 ]=v194[v301];end local v195=v194[1];if v195 then v83[v193]=v195;v77=v85[3];else v77=v77 + 1 ;end end elseif (v86<=13) then if (v86>12) then v83[v85[2]][v85[3]]=v83[v85[4]];else v83[v85[2]]=v59[v85[3]];end elseif (v86<=14) then v59[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];elseif (v86==15) then v83[v85[2]]=v83[v85[3]] + v85[4] ;else local v325=v85[2];local v326=v83[v85[3]];v83[v325 + 1 ]=v326;v83[v325]=v326[v85[4]];end elseif (v86<=25) then if (v86<=20) then if (v86<=18) then if (v86==17) then local v204;local v205;local v204,v206;local v207;local v208;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v208=v85[2];v207=v83[v85[3]];v83[v208 + 1 ]=v207;v83[v208]=v207[v85[4]];v77=v77 + 1 ;v85=v73[v77];v208=v85[2];v204,v206=v76(v83[v208](v83[v208 + 1 ]));v78=(v206 + v208) -1 ;v205=0;for v304=v208,v78 do v205=v205 + 1 ;v83[v304]=v204[v205];end v77=v77 + 1 ;v85=v73[v77];v208=v85[2];v204={v83[v208](v13(v83,v208 + 1 ,v78))};v205=0;for v307=v208,v85[4] do v205=v205 + 1 ;v83[v307]=v204[v205];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v218=v85[2];v83[v218](v13(v83,v218 + 1 ,v85[3]));end elseif (v86>19) then v83[v85[2]]=v29(v74[v85[3]],nil,v59);else v83[v85[2]]=v83[v85[3]];end elseif (v86<=22) then if (v86==21) then local v222;local v223;local v222,v224;local v225;local v226;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v226=v85[2];v225=v83[v85[3]];v83[v226 + 1 ]=v225;v83[v226]=v225[v85[4]];v77=v77 + 1 ;v85=v73[v77];v226=v85[2];v222,v224=v76(v83[v226](v83[v226 + 1 ]));v78=(v224 + v226) -1 ;v223=0;for v310=v226,v78 do v223=v223 + 1 ;v83[v310]=v222[v223];end v77=v77 + 1 ;v85=v73[v77];v226=v85[2];v222={v83[v226](v13(v83,v226 + 1 ,v78))};v223=0;for v313=v226,v85[4] do v223=v223 + 1 ;v83[v313]=v222[v223];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];elseif (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=23) then do return;end elseif (v86==24) then v59[v85[3]]=v83[v85[2]];else v83[v85[2]]=v85[3];end elseif (v86<=29) then if (v86<=27) then if (v86>26) then v83[v85[2]]=v58[v85[3]];else local v238;v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v238=v85[2];v83[v238](v13(v83,v238 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86==28) then if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else v77=v85[3];end elseif (v86<=31) then if (v86>30) then local v244=v85[2];v83[v244]=v83[v244](v13(v83,v244 + 1 ,v85[3]));else local v246;local v247;local v246,v248;local v249;local v250;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v250=v85[2];v249=v83[v85[3]];v83[v250 + 1 ]=v249;v83[v250]=v249[v85[4]];v77=v77 + 1 ;v85=v73[v77];v250=v85[2];v246,v248=v76(v83[v250](v83[v250 + 1 ]));v78=(v248 + v250) -1 ;v247=0;for v316=v250,v78 do v247=v247 + 1 ;v83[v316]=v246[v247];end v77=v77 + 1 ;v85=v73[v77];v250=v85[2];v246={v83[v250](v13(v83,v250 + 1 ,v78))};v247=0;for v319=v250,v85[4] do v247=v247 + 1 ;v83[v319]=v246[v247];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=32) then local v260=v85[2];do return v13(v83,v260,v260 + v85[3] );end elseif (v86>33) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v338=v85[2];local v339={v83[v338](v13(v83,v338 + 1 ,v78))};local v340=0;for v343=v338,v85[4] do v340=v340 + 1 ;v83[v343]=v339[v340];end end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!0F3O0003023O00547003043O0067616D6503093O00576F726B737061636503083O002O5F5448494E475303143O002O5F494E5354414E43455F434F4E5441494E455203063O0041637469766503093O004261636B722O6F6D7303123O0047656E6572617465644261636B722O6F6D73030A3O0047657442657374452O670003053O007072696E74030A3O004E6F6E6520466F756E6403013O005803013O005903013O005A001A3O0002147O00120E3O00013O00124O00023O00206O000300206O000400206O000500206O000600206O000700206O000800060400010001000100012O00137O001218000100093O00120C000100094O000900010001000200261C000100140001000A00041D3O0014000100120C0002000B3O0012190003000C4O00080002000200012O00173O00013O00120C000200013O00201A00030001000D00202O00040001000E00202O00050001000F4O0002000500016O00013O00023O00093O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0063686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D652O033O006E6577026O001440026O000840030D3O00122O000300013O00202O00030003000200202O00030003000300202O00030003000400202O00030003000500122O000400063O00202O00040004000700202O00053O000800202O00060001000900202O0007000200084O00040007000200102O0003000600046O00017O00113O0003053O007061697273030B3O004765744368696C6472656E03043O004E616D6503103O00442O657046722O65452O67522O6F6D3203103O00442O657046722O65452O67522O6F6D3103043O005369676E030A3O005375726661636547756903093O00546578744C6162656C03043O005465787403113O00312O30782048756765204368616E63652103063O00434672616D6503103O003735782048756765204368616E63652103103O003530782048756765204368616E63652103103O003230782048756765204368616E63652103103O003130782048756765204368616E636521030F3O0035782048756765204368616E636521030F3O0033782048756765204368616E63652100DC3O0012033O00016O00015O00202O0001000100024O000100029O00000200044O001D00010020220005000400030026160005000C0001000400041D3O000C000100202200050004000300261C0005001D0001000500041D3O001D000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O001B0001002022000A0009000300261C000A001B0001000600041D3O001B0001002022000A00090007002022000A000A0008002022000A000A000900261C000A001B0001000A00041D3O001B0001002022000A0009000B2O0001000A00023O00060B000500110001000200041D3O0011000100060B3O00060001000200041D3O0006000100120C3O00014O000500015O00202O0001000100024O000100029O00000200044O003C00010020220005000400030026160005002B0001000400041D3O002B000100202200050004000300261C0005003C0001000500041D3O003C000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O003A0001002022000A0009000300261C000A003A0001000600041D3O003A0001002022000A00090007002022000A000A0008002022000A000A000900261C000A003A0001000C00041D3O003A0001002022000A0009000B2O0001000A00023O00060B000500300001000200041D3O0030000100060B3O00250001000200041D3O0025000100120C3O00014O000500015O00202O0001000100024O000100029O00000200044O005B00010020220005000400030026160005004A0001000400041D3O004A000100202200050004000300261C0005005B0001000500041D3O005B000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O00590001002022000A0009000300261C000A00590001000600041D3O00590001002022000A00090007002022000A000A0008002022000A000A000900261C000A00590001000D00041D3O00590001002022000A0009000B2O0001000A00023O00060B0005004F0001000200041D3O004F000100060B3O00440001000200041D3O0044000100120C3O00014O000500015O00202O0001000100024O000100029O00000200044O007A0001002022000500040003002616000500690001000400041D3O0069000100202200050004000300261C0005007A0001000500041D3O007A000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O00780001002022000A0009000300261C000A00780001000600041D3O00780001002022000A00090007002022000A000A0008002022000A000A000900261C000A00780001000E00041D3O00780001002022000A0009000B2O0001000A00023O00060B0005006E0001000200041D3O006E000100060B3O00630001000200041D3O0063000100120C3O00014O000500015O00202O0001000100024O000100029O00000200044O00990001002022000500040003002616000500880001000400041D3O0088000100202200050004000300261C000500990001000500041D3O0099000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O00970001002022000A0009000300261C000A00970001000600041D3O00970001002022000A00090007002022000A000A0008002022000A000A000900261C000A00970001000F00041D3O00970001002022000A0009000B2O0001000A00023O00060B0005008D0001000200041D3O008D000100060B3O00820001000200041D3O0082000100120C3O00014O000500015O00202O0001000100024O000100029O00000200044O00B80001002022000500040003002616000500A70001000400041D3O00A7000100202200050004000300261C000500B80001000500041D3O00B8000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O00B60001002022000A0009000300261C000A00B60001000600041D3O00B60001002022000A00090007002022000A000A0008002022000A000A000900261C000A00B60001001000041D3O00B60001002022000A0009000B2O0001000A00023O00060B000500AC0001000200041D3O00AC000100060B3O00A10001000200041D3O00A1000100120C3O00014O000500015O00202O0001000100024O000100029O00000200044O00D70001002022000500040003002616000500C60001000400041D3O00C6000100202200050004000300261C000500D70001000500041D3O00D7000100120C000500013O0020100006000400022O0002000600074O002100053O000700041D3O00D50001002022000A0009000300261C000A00D50001000600041D3O00D50001002022000A00090007002022000A000A0008002022000A000A000900261C000A00D50001001100041D3O00D50001002022000A0009000B2O0001000A00023O00060B000500CB0001000200041D3O00CB000100060B3O00C00001000200041D3O00C000012O000A8O00013O00024O00173O00017O00",v9(),...);
