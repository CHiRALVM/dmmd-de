//<continuation number="40">
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


scene dm3240.nss_MAIN
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
	$GameName = "dm3250_vs.nss";

}


scene dm3240.nss
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

	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",0,true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	FadeDelete("上背景", 0, null, true);
	DeleteFw();}
I understood what Mink meant by that&.

The other way&.&.&.

The power of my voice&.&.&. Scrap&.

{	St("C",740, @0,@0,"buミンク_通常_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/4000010a05">
"Use it&."


{
	CreateSE("SE03","se物体_メガホン_落とす");
	MusicStart("SE03",0,600,0,1100,null,false);
	SetVolumeEX("SE03", 500, 0, null);
	CreateSE("SE02","se物体_物_鳴る01");
	MusicStart("SE02",0,400,0,1000,null,false);
}
Mink puts down the other submachine gun and puts something in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DrawTransition("絵窓/絵煙白", 500, 180, 160, 1000, null, "cg/data/effect_01_00_0.png", true);

	FwPro("fw蒼葉_通常_worry4",1850,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/4000020a01">
"A megaphone? &.&.&.Is this Akushima's?"

{	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/4000030a05">
"I have an idea&. Don't fuck up the timing&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/4000040a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE01", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
As he said that&, Mink dashed out from behind the box&.

Without an idea in my head&, my eyes followed Mink's figure&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	ClearFadeAll(0, true);

//※次ファイル["dm3250_vs.nss"]

}
