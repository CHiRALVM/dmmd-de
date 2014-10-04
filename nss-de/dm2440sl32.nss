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


scene dm2440sl32.nss_MAIN
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


scene dm2440sl32.nss
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




//「まだおわりのときじゃない」の場合：

//What about him?

//→You don't decide that
//→I don't know→もう　つかれた→ゲームオーバー

//バックログ用テキスト
$TXT_BACKLOG="What about him?";
//選択肢用テキスト
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="you don't decide that";
$ANS_ARY[0][1]="i don't know";
//問題タイピング用テキスト
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="w";
$TXT_ARY[0][1]="W";
$TXT_ARY[1][0]="h";
$TXT_ARY[2][0]="a";
$TXT_ARY[3][0]="t";
$TXT_ARY[4][0]=" ";
$TXT_ARY[5][0]="a";
$TXT_ARY[6][0]="b";
$TXT_ARY[7][0]="o";
$TXT_ARY[8][0]="u";
$TXT_ARY[9][0]="t";
$TXT_ARY[10][0]=" ";
$TXT_ARY[11][0]="h";
$TXT_ARY[12][0]="i";
$TXT_ARY[13][0]="m";
$TXT_ARY[14][0]="?";
//問題文字数
$TXT_ARYCNT=15;


//■選択肢
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2440sl33.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm2440sl24.nss";}



//	ClearFadeAll(1000, true);

}
