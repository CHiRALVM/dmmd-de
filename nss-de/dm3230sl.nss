//<continuation number="0">
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


scene dm3230sl.nss_MAIN
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


scene dm3230sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306021_5_倉庫内部入り口側.jpg");
	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSPadd("絵窓/絵煙白", 200, "WHITE");
	DrawTransition("絵窓/絵煙白", 0, 0, 200, 1000, null, "cg/data/effect_01_00_0.png", true);

	Request("絵背景*", Smoothing);
	Zoom("絵背景*", 0, 2000, 2000, null, true);
	SetShade("絵背景*", MEDIUM);

	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",0,true);


	FadeDelete("上背景", 100, null, true);




//▼選択肢：ミンク
//→▽言葉に詰まる
//→▽銃は使いたくない（ミンクポント＋１）


//■選択肢
	SetChoice02(" Say nothing"," I don't want to use a gun");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3231.nss";$ミンク選択肢6=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm3232.nss";$ミンク選択肢6=1;}

}
