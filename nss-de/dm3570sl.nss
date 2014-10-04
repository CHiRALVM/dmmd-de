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


scene dm3570sl.nss_MAIN
{
$TEXTBOX_TYPE="暴露";

	MinkSparksDropCheck();


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


scene dm3570sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 4900);

//★超速対応
	Request("@EFWIN/プロセス", Start);
	MusicStart("@EFWIN/SE11",1000,500,0,800,null,true);

	OnBG(10,"bg204011_3_暴露ミンク故郷草原炎上");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);



//◆演出：火の粉

//民族の男その２
//※▼選択肢：
//・助ける
//・助けない


//■選択肢
	SetChoice02(" Help him"," Don't help him");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3571scr.nss";$pMINKbad++;}
	else if($SetChoiceSelect==1){	$GameName = "dm3572scr.nss";}

}
