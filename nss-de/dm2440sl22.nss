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


scene dm2440sl22.nss_MAIN
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


scene dm2440sl22.nss
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



//「Because it's not interesting」の場合：

//What do you wish for?

//→The real world
//→とにかくA nice world→I'm too tired...→ファミコンバッドへ

//バックログ用テキスト
$TXT_BACKLOG="What do you wish for?";
//選択肢用テキスト
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="the real world";
$ANS_ARY[0][1]="a nice world";
//問題タイピング用テキスト
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="w";
$TXT_ARY[0][1]="W";
$TXT_ARY[1][0]="h";
$TXT_ARY[2][0]="a";
$TXT_ARY[3][0]="t";
$TXT_ARY[4][0]=" ";
$TXT_ARY[5][0]="d";
$TXT_ARY[6][0]="o";
$TXT_ARY[7][0]=" ";
$TXT_ARY[8][0]="y";
$TXT_ARY[9][0]="o";
$TXT_ARY[10][0]="u";
$TXT_ARY[11][0]=" ";
$TXT_ARY[12][0]="w";
$TXT_ARY[13][0]="i";
$TXT_ARY[14][0]="s";
$TXT_ARY[15][0]="h";
$TXT_ARY[16][0]=" ";
$TXT_ARY[17][0]="f";
$TXT_ARY[18][0]="o";
$TXT_ARY[19][0]="r";
$TXT_ARY[20][0]="?";
//問題文字数
$TXT_ARYCNT=21;


//■選択肢
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2440sl23.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm2440sl24.nss";}



//	ClearFadeAll(1000, true);

}
