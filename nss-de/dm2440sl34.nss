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


scene dm2440sl34.nss_MAIN
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


scene dm2440sl34.nss
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



//「かんがえろ」の場合：

//Who are you?

//→That's...（これしか選択肢が出ない）→現実世界へ戻る

//バックログ用テキスト
$TXT_BACKLOG="Who are you?";
//選択肢用テキスト
DeleteArray($ANS_ARY);
Array($ANS_ARY);
$ANS_ARY[0][0]="That's...";
//問題タイピング用テキスト
DeleteArray($TXT_ARY);
Array($TXT_ARY);
$TXT_ARY[0][0]="w";
$TXT_ARY[0][1]="W";
$TXT_ARY[1][0]="h";
$TXT_ARY[2][0]="o";
$TXT_ARY[3][0]=" ";
$TXT_ARY[4][0]="a";
$TXT_ARY[5][0]="r";
$TXT_ARY[6][0]="e";
$TXT_ARY[7][0]=" ";
$TXT_ARY[8][0]="y";
$TXT_ARY[9][0]="o";
$TXT_ARY[10][0]="u";
$TXT_ARY[11][0]="?";
//問題文字数
$TXT_ARYCNT=12;



//■選択肢
	S2SetQ();

	S2SetChoiceBase();
	S2WaitChoice01();
	
	$GameName = "dm2470scr.nss";$ノイズ選択肢8=1;



WaitKey(2000);
WaitKey(2000);
//	ClearFadeAll(3000, true);

}
