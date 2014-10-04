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


scene dm2440sl23.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2451.nss";

}


scene dm2440sl23.nss
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

	FadeDelete("上背景", 1000, null, true);


//「The real world」の場合：
//The world I wish for is...

//バックログ用テキスト
$TXT_BACKLOG="The world I wish for is…";
//問題タイピング用テキスト
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="t";
$TXT_ARY[0][1]="T";
$TXT_ARY[1][0]="h";
$TXT_ARY[2][0]="e";
$TXT_ARY[3][0]="　";
$TXT_ARY[4][0]="w";
$TXT_ARY[5][0]="o";
$TXT_ARY[6][0]="r";
$TXT_ARY[7][0]="l";
$TXT_ARY[8][0]="d";
$TXT_ARY[9][0]=" ";
$TXT_ARY[10][0]="I";
$TXT_ARY[11][0]=" ";
$TXT_ARY[12][0]="w";
$TXT_ARY[13][0]="i";
$TXT_ARY[14][0]="s";
$TXT_ARY[15][0]="h";
$TXT_ARY[16][0]=" ";
$TXT_ARY[17][0]="f";
$TXT_ARY[18][0]="o";
$TXT_ARY[19][0]="r";
$TXT_ARY[20][0]=" ";
$TXT_ARY[21][0]="i";
$TXT_ARY[22][0]="s";
$TXT_ARY[23][0]="…";
//問題文字数
$TXT_ARYCNT=24;

	S2SetQ();

WaitKey(1000);
WaitKey(2000);

	S2QFade(1000);

WaitKey(1000);
//WaitKey(2000);

//→バッドエンドへ

//※次ファイル["dm2451.nss"]


//	ClearFadeAll(1000, true);

}
