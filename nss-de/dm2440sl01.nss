//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm2440sl01.nss_MAIN
{
//■超速設定なし
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	//


}


scene dm2440sl01.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

//	OnBG(10,"bg101011_1_旧住民区通り表");
//	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);




//・選択肢：
//Do you want to feel even better?
//：はい・はい
//Note: format is $TXT_ARY[This is one character][this represents changes in it]=" "; ex) [2][0] is "a" but changes into [2][1] which is A. This turns a->A
//バックログ用テキスト
$TXT_BACKLOG="Do you want to feel even better?";
//選択肢用テキスト
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="yes";
$ANS_ARY[0][1]="yes";
//問題タイピング用テキスト
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="d";
$TXT_ARY[0][1]="D";
$TXT_ARY[1][0]="o";
$TXT_ARY[2][0]=" ";
$TXT_ARY[3][0]="y";
$TXT_ARY[4][0]="o";
$TXT_ARY[5][0]="u";
$TXT_ARY[6][0]=" ";
$TXT_ARY[7][0]="w";
$TXT_ARY[8][0]="a";
$TXT_ARY[9][0]="n";
$TXT_ARY[10][0]="t";
$TXT_ARY[11][0]=" ";
$TXT_ARY[12][0]="t";
$TXT_ARY[13][0]="o";
$TXT_ARY[14][0]=" ";
$TXT_ARY[15][0]="f";
$TXT_ARY[16][0]="e";
$TXT_ARY[17][0]="e";
$TXT_ARY[18][0]="l";
$TXT_ARY[19][0]=" ";
$TXT_ARY[20][0]="e";
$TXT_ARY[21][0]="v";
$TXT_ARY[22][0]="e";
$TXT_ARY[23][0]="n";
$TXT_ARY[24][0]=" ";
$TXT_ARY[25][0]="b";
$TXT_ARY[26][0]="e";
$TXT_ARY[27][0]="t";
$TXT_ARY[28][0]="t";
$TXT_ARY[29][0]="e";
$TXT_ARY[30][0]="r";
$TXT_ARY[31][0]="?";
//問題文字数
$TXT_ARYCNT=32;

//CreateText("絵tt",2000,0,0,1000,40,"$ノイズループ=<VALUE name=$ノイズループ>|$ノイズループ数=<VALUE name=$ノイズループ数>|");
//Request("絵tt",PushText);

//■選択肢
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice02();

	if($SetChoiceSelect==0){		$GameName = "dm2440sl02.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm2440sl02.nss";}



//	ClearFadeAll(1000, true);

}
