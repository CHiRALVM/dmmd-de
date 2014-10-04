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


scene dm0580sl.nss_MAIN
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


scene dm0580sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -440, -528, "cg/bg/l/bg101022_5_旧住民区通り裏路地02_l.jpg");

	FadeDelete("上背景", 0, null, true);

//▼選択肢：ミンク
//→▽声を掛ける
//→▽我慢する（ミンクポイント＋１）


//■選択肢
	SetChoice02(" Call out to him"," Be patient");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0581.nss";$ミンク選択肢2=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0582.nss";$ミンク選択肢2=1;}



//	ClearFadeAll(1000, true);

}
