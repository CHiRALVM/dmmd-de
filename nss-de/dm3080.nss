//<continuation number="110">
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


scene dm3080.nss_MAIN
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
	#bg301011_5_プラチナジェイル大通り3ブラック=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3090.nss";

}


scene dm3080.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSPadd("絵色白", 4000, "FFFFFF");

	OnBG(10,"bg301011_5_プラチナジェイル大通り3ブラック");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1500);

	CreateSE("SE02","se物体_ドア鉄_扉開く01a");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("絵色白", 3000, Dxl1, false);
	DrawDelete("絵色黒", 2000, 100, DxlAuto, "slide_06_00_0", true);

	SoundPlay("@dm004",0,450,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When we pass through the door&.&.&. we enter a world 
of night&.

Without any significance to it&, the surroundings were 
a dark black&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101,  -512, -216, "cg/bg/l/bg301011_5_プラチナジェイル大通り3ブラック_l.jpg");
	Move("絵背景101", 1500, -188, 0, Dxl1, false);
	Fade("絵背景101", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The shade of the buildings are even dark&, with ornaments 
of chains and barbed wires all over&.

However the buildings have a high class feeling to them; 
the "night" theme has been pushed to the maximum&.

{	FadeDelete("絵背景101", 500, null, true);}
I feel like most of the people walking around are far older
than me&.

There are stars glittering in the wide&, night sky&. A 
view one couldn't dream of in the Old Resident District&.

Platinum Jail's weather and time zones are all controlled&,
and it's usually set to night time&.

Although it looks like the concept for it was so the guests
could party any day&, any time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -512, -140, "cg/bg/l/bg301011_5_プラチナジェイル大通り3ブラック_l.jpg");
	Move("絵背景100", 1000, -512, -41, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The symbolic tower of Platinum Jail stands raised high 
in the sky&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/8000010a01">
"That's Oval Tower&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I've heard the rumors&, but this is my first time seeing 
it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/8000020a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Mink looks down the streets&, and then looks up to Oval 
Tower and glares&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/8000030a05">
"There should be something written on the invitation&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/8000040a01">
"Uhh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//あきゅん「コイル：ここって素材あるっけか？」
	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I operate my Coil and check the invitation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//★バンク
	CoilBank04();

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/8000050a01">
"It's a map&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm30/8000060a06">
"It's a guide through Platinum Jail&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/8000070a01">
"What about this mark?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm30/8000080a06">
"It must be our assigned lodging&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/8000090a05">
"Let's go&, then&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/8000100a01">
"Okay&. Ren&, navigate for us&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm30/8000110a06">
"Roger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
//あきゅん「コイル：ここで画面閉じる」
	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
We follow Ren and head towards the direction of the place 
marked on the map&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm3090.nss"]

}
