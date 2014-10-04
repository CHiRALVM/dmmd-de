//<continuation number="30">
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


scene dm3232.nss_MAIN
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
	$GameName = "dm3240.nss";

}


scene dm3232.nss
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

//===========================================
//「銃は使いたくない」の場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	FadeDelete("上背景", 0, null, true);
	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3200010a01">
"I don't&.&.&. want to use a gun&."

{	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3200020a05">
"If you don't use a gun&, then there's only one option
 left&."

{	Fw("fw蒼葉_通常_shock2");}

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3200030a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3240.nss"]

}
