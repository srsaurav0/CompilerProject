%{

%}


%%


"PURNO "	fprintf(yyout,"int");
"BHOGNO "	fprintf(yyout,"float");
"OKKHOR "	fprintf(yyout,"char");
"BORO_PURNO "	fprintf(yyout,"long");
"DOUBLE "	fprintf(yyout,"double");
"CHANGE "	fprintf(yyout,"switch");
"KAHINI "	fprintf(yyout,"case");
"THAMO "	fprintf(yyout,"break");
"NAHOLE "	fprintf(yyout,"default");
"JODI "	fprintf(yyout,"if");
"ABAR "	fprintf(yyout,"else");
"MODDHE "	fprintf(yyout,"for");
"JOTOKKHON "	fprintf(yyout,"while");
"KORO "	fprintf(yyout,"do");
"UTSHO "	fprintf(yyout,"#include");
"SHOB "	fprintf(yyout,"#define");
"SESH "	fprintf(yyout," ; ");
"MANE "	fprintf(yyout," = ");
"SHOMAN "    fprintf(yyout," == ");
"BORO_SHOMAN "	fprintf(yyout," >= ");
"CHOTO_SHOMAN "	fprintf(yyout," <= ");
"OSHOMAN "	fprintf(yyout," != ");
"BORO "	fprintf(yyout," > ");
"CHOTO "	fprintf(yyout," < ");
"BARAO "	fprintf(yyout,"++");
"KOMAO "	fprintf(yyout,"--");
"PRODHAN "	fprintf(yyout,"main");
"COLON "	fprintf(yyout," : ");
"JOG "		fprintf(yyout,"+");
"BIOG "	fprintf(yyout,"-");
"GUN "		fprintf(yyout,"*");
"BHAG "	fprintf(yyout,"/");
"COMA "	fprintf(yyout,",");
"BHAG_SESH "	fprintf(yyout,"%");
"OTHOBA "	fprintf(yyout," || ");
"EBONG "	fprintf(yyout," && ");
"FBO "		fprintf(yyout,"(");
"FBC "		fprintf(yyout,")");
"SBO "		fprintf(yyout,"{");
"SBC "		fprintf(yyout,"}");
"TBO "		fprintf(yyout,"[");
"TBC "		fprintf(yyout,"]");
"ABO "		fprintf(yyout,"<");
"ABC "		fprintf(yyout,">");
"COMMENT "	fprintf(yyout,"// ");
"COMMENT_B "	fprintf(yyout,"/* ");
"COMMENT_E "	fprintf(yyout," */");
"LIKHO "	fprintf(yyout,"printf");
"PORO "	fprintf(yyout,"scanf");
"JAO "		fprintf(yyout,"goto");
"UTTOR "	fprintf(yyout,"return ");
"QUOT "	fprintf(yyout,"'");

%%

int yywrap()
{
	return 1;
}

int main()
{
	yyin = fopen("input.txt","r");
	yyout = fopen("output.txt","w");
	yylex();
}