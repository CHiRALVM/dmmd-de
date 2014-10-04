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


scene dm2370.nss_MAIN
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

	#bg304121_5_東江タワー東江の間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2380_vs.nss";

}


scene dm2370.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateSE("SE01","se物体_ドア東江の間_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");
	FadeDelete("絵色白", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
White walls&, a white floor and a white ceiling&.

Is this Toue's room&, the one Noiz mentioned?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1200,0,800,null,false);
	Wait(3000);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/7000010a01">
"Noiz&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_正面洗脳_normal");
	FadeSt("C",200,true);}
	SetVolumeEX("SE*", 50, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.There he is&.

Good&, he's safe&.

Extremely relieved&, I smile&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/7000020a01">
"I&.&.&. was really worried about you&. You didn't come back at all&. Were you all right?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se人体_動作_衣擦れ17");
//	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I try to walk towards Noiz&, but I stop midway&.

&.&.&.Strange&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Noiz just stands there&, watching me without moving&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 1000);
	SetShade("絵板写", SEMIHEAVY);
	Fade("絵板写", 800, 800, null, true);

	CreatePlainSP("絵板写最上段", 9990);

	CreateColorEX("絵色黒板写", 1010, "000000");
	Fade("絵色黒板写", 0, 750, null, true);

	CreatePlainSP("絵板写上", 9900);
	CreateTextureSP("絵演立絵", 1110, Center, -70, "cg/fu/fuノイズ_正面洗脳_normal.png");
	Request("絵演立絵", Smoothing);
	Zoom("絵演立絵", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演背景", 1100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	Zoom("絵演背景", 0, 2000, 2000, null, true);

	DrawTransition("絵板写上", 1, 1000, 600, 100, null, "cg/data/slide_05_01_0.png", true);

	FadeDelete("絵板写最上段", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Staring at me with sharp eyes&.

&.&.&.Lifeless&, chilly eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写最上段", 9990);
	Delete("絵板写上");
	Delete("絵演立絵");
	Delete("絵演背景");
	FadeDelete("絵板写最上段", 600, null, true);

	FadeDelete("絵色黒板写", 400, Dxl3, false);
	FadeDelete("絵板写", 400, Axl3, true);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/7000030a06">
"&.&.&.Aoba&, it's coming&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/7000040a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	CreateSE("SE02","se戦闘_衝撃_防壁発動01");

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	CreatePlainEX("絵板写", 800);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("@絵色白", 300, 1000, Axl3, true);
	Wait(100);
	Fade("@絵板写", 0, 1000, null, true);
	DrawEffect("@絵板写", 5000, "Ripple", 500, 100, null);
	Delete("@OnBG*");
	Fade("@絵色白", 3000, 0, null, true);
	Delete("@絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Suddenly&, the space around us twists and distorts inward&.

&.&.&.No way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateMaskEX("絵覆", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("絵覆", center, top);
	CreateColorEX("絵覆/絵色黒", 5000, "000000");

	Zoom("絵板写", 2000, 1000, 2000, Axl3, false);
	Move("絵板写", 20000, @0, 1152, null, false);

	Fade("絵覆/絵色黒", 500, 1000, null, false);
	Zoom("絵覆", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("@EFWIN/SE01","se擬音_ライム_超音波01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	$nextrhymescene="dm2380_vs.nss";

//※次ファイル["dm2380_vs.nss"]

}
