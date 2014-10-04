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


scene dm2440sl24.nss_MAIN
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
	$GameName = "dm2460ed.nss";

}


scene dm2440sl24.nss
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





//I'm too tired

//バックログ用テキスト
$TXT_BACKLOG="I'm too tired";
//問題タイピング用テキスト
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="I";
$TXT_ARY[1][0]="'";
$TXT_ARY[2][0]="m";
$TXT_ARY[3][0]=" ";
$TXT_ARY[4][0]="t";
$TXT_ARY[5][0]="o";
$TXT_ARY[6][0]="o";
$TXT_ARY[7][0]=" ";
$TXT_ARY[8][0]="t";
$TXT_ARY[9][0]="i";
$TXT_ARY[10][0]="r";
$TXT_ARY[11][0]="e";
$TXT_ARY[12][0]="d";
$TXT_ARY[13][0]="…";
//問題文字数
$TXT_ARYCNT=14;

	S2SetQ();

WaitKey(1000);
WaitKey(1000);

	S2QFade(50);Draw();

WaitKey(1000);
WaitKey(2000);
WaitKey(2000);



//※次ファイル["dm2460ed.nss"]


//	ClearFadeAll(1000, true);

}
