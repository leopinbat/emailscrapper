
%{
#include <stdio.h>
%}

letter_or_number [A-Za-z0-9]
rest [a-zA-Z0-9\._-]

%%
	/*If the email is not valid it will not print */

{letter_or_number}+{rest}*{letter_or_number}+@{letter_or_number}+(".com"?|".unicamp.br")- {}

	/*This part will print every valid email found*/

{letter_or_number}+{rest}*{letter_or_number}+@{letter_or_number}+(".com"?|".unicamp.br") {ECHO;printf("\n");}
. {}
\n {}


%%


int main() {
  yylex();
  return 0;
}
