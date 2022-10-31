%{

%}

HEADER	[]*[<][a-zA-Z0-9]+.[h][>]
BAKKO		[a-zA-Z0-9]+
PURNO		[0-9]+
BHOGNO	[0-9]+.[0-9]+
OKKHOR	[a-zA-Z0-9]
CSL		[#][#][]*+[a-zA-Z0-9 .]*
CML		[#][]*[a-zA-Z0-9 \n]*[]*[#]

%%


"CHANGE "	fprintf(yyout,"%s denotes switch \n",yytext);
"KAHINI "	fprintf(yyout,"%s denotes case \n",yytext);
"THAMO "	fprintf(yyout,"%s denotes break \n",yytext);
"NAHOLE "	fprintf(yyout,"%s denotes default \n",yytext);
"JODI "	fprintf(yyout,"%s denotes if \n",yytext);
"ABAR "	fprintf(yyout,"%s denotes else \n",yytext);
"MODDHE "	fprintf(yyout,"%s denotes for \n",yytext);
"JOTOKKHON "	fprintf(yyout,"%s denotes while \n",yytext);
"KORO "	fprintf(yyout,"%s denotes do \n",yytext);
"UTSHO "	fprintf(yyout,"%s denotes #include \n",yytext);
"SHOB "	fprintf(yyout,"%s denotes #define \n",yytext);
"SESH "	fprintf(yyout,"%s denotes  ; \n",yytext);
"MANE "	fprintf(yyout,"%s denotes  = \n",yytext);
"SHOMAN "    fprintf(yyout,"%s denotes  == \n",yytext);
"BORO_SHOMAN "	fprintf(yyout,"%s denotes  >= \n",yytext);
"CHOTO_SHOMAN "	fprintf(yyout,"%s denotes  <= \n",yytext);
"OSHOMAN "	fprintf(yyout,"%s denotes  != \n",yytext);
"BORO "	fprintf(yyout,"%s denotes  > \n",yytext);
"CHOTO "	fprintf(yyout,"%s denotes  < \n",yytext);
"BARAO "	fprintf(yyout,"%s denotes ++ \n",yytext);
"KOMAO "	fprintf(yyout,"%s denotes -- \n",yytext);
"PRODHAN "	fprintf(yyout,"%s denotes main\n",yytext);
"COLON "	fprintf(yyout,"%s denotes  : \n",yytext);
"JOG "	fprintf(yyout,"%s denotes +\n",yytext);
"BIOG "	fprintf(yyout,"%s denotes -\n",yytext);
"GUN "	fprintf(yyout,"%s denotes *\n",yytext);
"BHAG "	fprintf(yyout,"%s denotes / \n",yytext);
"COMA "	fprintf(yyout,"%s denotes , \n",yytext);
"BHAG_SESH "	fprintf(yyout,"%s denotes %\n",yytext);
"OTHOBA "	fprintf(yyout,"%s denotes  || \n",yytext);
"EBONG "	fprintf(yyout,"%s denotes  && \n",yytext);
"FBO "	fprintf(yyout,"%s denotes (\n",yytext);
"FBC "	fprintf(yyout,"%s denotes )\n",yytext);
"SBO "	fprintf(yyout,"%s denotes {\n",yytext);
"SBC "	fprintf(yyout,"%s denotes }\n",yytext);
"TBO "	fprintf(yyout,"%s denotes [\n",yytext);
"TBC "	fprintf(yyout,"%s denotes ]\n",yytext);
"ABO "	fprintf(yyout,"%s denotes <\n",yytext);
"ABC "	fprintf(yyout,"%s denotes >\n",yytext);
"LIKHO "	fprintf(yyout,"%s denotes printf \n",yytext);
"PORO "	fprintf(yyout,"%s denotes scanf \n",yytext);
"JAO "	fprintf(yyout,"%s denotes goto \n",yytext);
"POWER"	fprintf(yyout,"%s denotes pow function \n",yytext);
"ROOT"	fprintf(yyout,"%s denotes sqrt function \n",yytext);
"UTTOR "	fprintf(yyout,"%s denotes return \n",yytext);
"QUOT "	fprintf(yyout,"%s denotes ' \n",yytext);
"BORO_PURNO "	fprintf(yyout,"%s denotes long \n",yytext);
"DOUBLE "	fprintf(yyout,"%s denotes double \n",yytext);
{HEADER}	fprintf(yyout,"%s denotes a header file",yytext);
{PURNO}	fprintf(yyout,"%s denotes int \n",yytext);
{BHOGNO}	fprintf(yyout,"%s denotes float \n",yytext);
{OKKHOR}	fprintf(yyout,"%s denotes char \n",yytext);
{BAKKO}	fprintf(yyout,"%s denotes a string\n",yytext);
{CSL}		fprintf(yyout,"(%s) denotes single line comment \n",yytext);
{CML}		fprintf(yyout,"(%s) denotes multiple line comment \n",yytext);

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