-- coded by bacaman23 on discord
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=21) then if (v86<=10) then if (v86<=4) then if (v86<=1) then if (v86==0) then v83[v85[2]]();else local v114;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v114=v85[2];v83[v114](v13(v83,v114 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=2) then local v121=v85[2];local v122=v83[v85[3]];v83[v121 + 1 ]=v122;v83[v121]=v122[v85[4]];elseif (v86>3) then local v187=v74[v85[3]];local v188;local v189={};v188=v10({},{__index=function(v288,v289) local v290=v189[v289];return v290[1][v290[2]];end,__newindex=function(v291,v292,v293) local v294=v189[v292];v294[1][v294[2]]=v293;end});for v296=1,v85[4] do v77=v77 + 1 ;local v297=v73[v77];if (v297[1]==5) then v189[v296-1 ]={v83,v297[3]};else v189[v296-1 ]={v58,v297[3]};end v82[ #v82 + 1 ]=v189;end v83[v85[2]]=v29(v187,v188,v59);else local v191=v85[2];local v192,v193=v76(v83[v191](v13(v83,v191 + 1 ,v85[3])));v78=(v193 + v191) -1 ;local v194=0;for v299=v191,v78 do v194=v194 + 1 ;v83[v299]=v192[v194];end end elseif (v86<=7) then if (v86<=5) then v83[v85[2]]=v83[v85[3]];elseif (v86>6) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v197;v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v59[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v197=v85[2];v83[v197](v83[v197 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=8) then v77=v85[3];elseif (v86>9) then local v204;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v204=v85[2];v83[v204](v13(v83,v204 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];else v83[v85[2]]=v85[3];end elseif (v86<=15) then if (v86<=12) then if (v86>11) then v83[v85[2]]={};else v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;end elseif (v86<=13) then v83[v85[2]][v85[3]]=v83[v85[4]];elseif (v86>14) then v83[v85[2]]=v83[v85[3]]/v83[v85[4]] ;else v83[v85[2]]=v59[v85[3]];end elseif (v86<=18) then if (v86<=16) then local v133=v85[2];do return v13(v83,v133,v133 + v85[3] );end elseif (v86>17) then local v216=v85[2];v83[v216]=v83[v216]();else v83[v85[2]]=v58[v85[3]];end elseif (v86<=19) then local v134=v85[2];v83[v134]=v83[v134](v13(v83,v134 + 1 ,v85[3]));elseif (v86>20) then do return;end else local v220;local v221;local v222;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v222=v85[2];v83[v222]=v83[v222](v83[v222 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v222=v85[2];v83[v222]=v83[v222](v83[v222 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v222=v85[2];v83[v222]=v83[v222](v83[v222 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v221=v85[3];v220=v83[v221];for v302=v221 + 1 ,v85[4] do v220=v220   .. v83[v302] ;end v83[v85[2]]=v220;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v222=v85[2];v221=v83[v85[3]];v83[v222 + 1 ]=v221;v83[v222]=v221[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v222=v85[2];v83[v222](v13(v83,v222 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v222=v85[2];v83[v222]=v83[v222](v13(v83,v222 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86<=32) then if (v86<=26) then if (v86<=23) then if (v86==22) then local v136=v85[2];v83[v136](v83[v136 + 1 ]);else local v137;local v138,v139;local v140;local v141;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v141=v85[2];v83[v141](v83[v141 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v141=v85[2];v140=v83[v85[3]];v83[v141 + 1 ]=v140;v83[v141]=v140[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v141=v85[2];v138,v139=v76(v83[v141](v13(v83,v141 + 1 ,v85[3])));v78=(v139 + v141) -1 ;v137=0;for v183=v141,v78 do v137=v137 + 1 ;v83[v183]=v138[v137];end v77=v77 + 1 ;v85=v73[v77];v141=v85[2];v83[v141]=v83[v141](v13(v83,v141 + 1 ,v78));v77=v77 + 1 ;v85=v73[v77];v141=v85[2];v83[v141]=v83[v141]();end elseif (v86<=24) then do return v83[v85[2]];end elseif (v86>25) then v83[v85[2]]=v85[3]~=0 ;else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=29) then if (v86<=27) then v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;elseif (v86==28) then v83[v85[2]][v85[3]]=v85[4];else v59[v85[3]]=v83[v85[2]];end elseif (v86<=30) then local v152;local v153;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v152=v83[v85[3]];v83[v153 + 1 ]=v152;v83[v153]=v152[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153]=v83[v153](v13(v83,v153 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153]=v83[v153](v13(v83,v153 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153]=v83[v153](v13(v83,v153 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153]=v83[v153](v13(v83,v153 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]/v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153]=v83[v153](v13(v83,v153 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v152=v83[v85[3]];v83[v153 + 1 ]=v152;v83[v153]=v152[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153]=v83[v153](v13(v83,v153 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v152=v83[v85[3]];v83[v153 + 1 ]=v152;v83[v153]=v152[v85[4]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153](v83[v153 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v153=v85[2];v83[v153](v83[v153 + 1 ]);v77=v77 + 1 ;v85=v73[v77];do return;end elseif (v86==31) then v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;else local v245=v85[2];v83[v245]=v83[v245](v83[v245 + 1 ]);end elseif (v86<=38) then if (v86<=35) then if (v86<=33) then local v166=v85[2];v83[v166]=v83[v166](v13(v83,v166 + 1 ,v78));elseif (v86==34) then local v247;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v247=v85[2];v83[v247](v13(v83,v247 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];else local v254;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] * v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v254=v85[2];v83[v254](v13(v83,v254 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=36) then v83[v85[2]]=v83[v85[3]] + v85[4] ;elseif (v86>37) then if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else local v261;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v261=v85[2];v83[v261]=v83[v261](v13(v83,v261 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86<=41) then if (v86<=39) then local v169=v85[3];local v170=v83[v169];for v186=v169 + 1 ,v85[4] do v170=v170   .. v83[v186] ;end v83[v85[2]]=v170;elseif (v86>40) then v59[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v59[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();else local v275=v85[2];v83[v275](v13(v83,v275 + 1 ,v85[3]));end elseif (v86<=42) then local v172;local v173;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v173=v85[2];v172=v83[v85[3]];v83[v173 + 1 ]=v172;v83[v173]=v172[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v173=v85[2];v83[v173]=v83[v173](v13(v83,v173 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>43) then v59[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];else local v281;v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v281=v85[2];v83[v281](v83[v281 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];do return;end end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!183O0003053O007072696E74032C3O005B426163616D616E3233205363726970745D204C6F61646564204261636B722O6F6D20547020536372697074030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574033D3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73686C6578776172652F4F72696F6E2F6D61696E2F736F75726365030C3O00476F746F526566506F696E7403073O0054772O656E547003093O00576F726B737061636503083O002O5F5448494E475303143O002O5F494E5354414E43455F434F4E5441494E455203063O0041637469766503093O004261636B722O6F6D7303123O0047656E6572617465644261636B722O6F6D7303083O0049734C6F6164656403083O00476F746F426F2O73026O006940025O000CA040025O003DB2C0025O00709AC003063O00416D6F756E74026O00F03F03043O007461736B03043O0077616974007B3O0012173O00013O00122O000100028O0002000100124O00033O00122O000100043O00202O00010001000500122O000300066O000100039O0000026O0001000200021900015O00121D000100073O000219000100013O00122C000100083O00122O000100043O00202O00010001000900202O00010001000A00202O00010001000B00202O00010001000C00202O00010001000D00202O00010001000E00060400020002000100012O00053O00013O00121D0002000F3O00060400020003000100022O00053O00014O00057O001229000200103O00122O000200113O00122O000300123O00122O000400133O00122O000500143O00122O000600163O00122O000600153O00122O000600076O00060001000100120E000600083O00120A000700156O0007000200074O0007000400074O000800033O00122O000900156O0009000200094O0009000500094O00060009000100122O000600173O00202O000600060018001209000700164O001600060002000100120E0006000F4O00120006000100020006260006003600013O0004083O003600010004083O0074000100120E000600083O001201000700156O0007000200074O0007000400074O000800033O00122O000900156O0009000200094O0009000500094O00060009000100122O000600173O00202O000600060018001209000700164O001600060002000100120E0006000F4O00120006000100020006260006004800013O0004083O004800010004083O0074000100120E000600083O001222000700156O0007000200074O0007000400074O000800033O00122O000900156O0009000200094O0009000500094O00060009000100122O000600173O00202O000600060018001209000700164O001600060002000100120E0006000F4O00120006000100020006260006005A00013O0004083O005A00010004083O0074000100120E000600083O001223000700156O0007000200074O0007000400074O000800033O00122O000900156O0009000200094O0009000500094O00060009000100122O000600173O00202O000600060018001209000700164O001600060002000100120E0006000F4O00120006000100020006260006006C00013O0004083O006C00010004083O0074000100120E000600153O00200600060006001600122O000600153O00122O000600173O00202O00060006001800122O000700166O00060002000100044O0024000100120E000600173O00202B00060006001800122O000700166O00060002000100122O000600106O0006000100016O00013O00043O000A3O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0063686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D652O033O006E6577025O003DB2C0025O000CA040025O00709AC0000D3O0012253O00013O00206O000200206O000300206O000400206O000500122O000100063O00202O00010001000700122O000200083O00122O000300093O00122O0004000A6O00010004000200104O000600016O00017O001C3O00030C3O00476F746F526566506F696E74026O00494003043O0067616D65030A3O0047657453657276696365030C3O0054772O656E5365727669636503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0063686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D6503073O00566563746F72332O033O006E657703013O005803013O005903013O005A03093O004D61676E697475646503093O0054772O656E496E666F03043O00456E756D030B3O00456173696E675374796C6503043O0051756164030F3O00456173696E67446972656374696F6E2O033O004F7574028O00026O00F03F03063O0043726561746503043O00506C617903043O007461736B03043O0077616974033C3O00121E000300016O00030001000100122O000300023O00122O000400033O00202O00040004000400122O000600056O00040006000200122O000500033O00202O00050005000600202O00050005000700202O00060005000800202O00060006000900202O00070006000A00122O0008000B3O00202O00080008000C4O00098O000A00016O000B00026O0008000B000200122O0009000B3O00202O00090009000C00202O000A0007000D00202O000B0007000E00202O000C0007000F4O0009000C00024O00080008000900202O00080008001000122O0009000A3O00202O00090009000C4O000A8O000B00016O000C00026O0009000C00024O000A0008000300122O000B00113O00202O000B000B000C4O000C000A3O00122O000D00123O00202O000D000D001300202O000D000D001400122O000E00123O00202O000E000E001500202O000E000E001600122O000F00176O00105O00122O001100186O000B0011000200202O000C000400194O000E00066O000F000B6O00103O000100102O0010000A00094O000C0010000200202O000D000C001A4O000D0002000100122O000D001B3O00202O000D000D001C4O000E000A6O000D000200016O00017O00023O00030E3O0046696E6446697273744368696C6403113O00442O6570426F2O734368657374522O6F6D000B4O002A7O00206O000100122O000200028O0002000200064O000800013O0004083O000800012O001A3O00014O00183O00024O001A8O00183O00024O00153O00017O00183O0003113O00442O6570426F2O734368657374522O6F6D03093O0042617365706C61746503063O00434672616D65034O0003083O00746F737472696E6703013O005803013O002003013O005903013O005A03103O004D616B654E6F74696669636174696F6E03043O004E616D6503103O00466F756E6420426F2O7320436865737403073O00436F6E74656E7403053O00496D61676503173O00726278612O73657469643A2O2F2O34382O3334352O393803043O0054696D65026O00144003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0063686172616374657203103O0048756D616E6F6964522O6F74506172742O033O006E6577026O00244000274O00147O00206O000100206O000200206O000300122O000100043O00122O000200053O00202O00033O00064O00020002000200122O000300073O00122O000400053O00202O00053O00084O00040002000200122O000500073O00122O000600053O00202O00073O00094O0006000200024O0001000100064O000200013O00202O00020002000A4O00043O000400302O0004000B000C00102O0004000D000100302O0004000E000F00302O0004001000114O00020004000100122O000200123O00202O00020002001300202O00020002001400202O00020002001500202O00020002001600122O000300033O00202O00030003001700202O00043O000600202O00053O000800202O00050005001800202O00063O00094O00030006000200102O0002000300036O00017O00",v9(),...);
