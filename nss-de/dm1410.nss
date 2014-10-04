//<continuation number="200">
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


scene dm1410.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#ev142幼少紅雀と刺青=true;
	#ev142幼少紅雀と刺青a=true;

	#bg202021_3_暴露紅雀実家小部屋=true;

	//▼障子演出に使用したフラグを念のためリセット
	$MugenKairouProcFirst=false;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1420.nss";

	Request("@Ｃ*", UnLock);
	Request("@Ｃ/絵*", UnLock);

}


scene dm1410.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 19000);

	if($DM1390C==1&&$PreGameName == "dm1400.nss"){
	}else{
	CreateCamera("Ｃ", 0, 0, 15000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景奥", 0, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景左", 0, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景右", 0, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	CreateTextureSP("Ｃ/絵演背景奥面奥", -2500, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景奥面左", -2500, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景奥面右", -2500, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");


	CreateTextureSP("Ｃ/絵演背景奥弐面奥", -11250, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景奥弐面左", -11250, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景奥弐面右", -11250, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	Request("Ｃ*", Lock);
	Request("Ｃ/絵*", Lock);
	MoveCamera("Ｃ", 0, @0, @0, 1000, AxlDxl, true);
	}

	Move("@Ｃ/絵演背景左", 0, 374, @0, DxlAuto, false);
	Move("@Ｃ/絵演背景右", 0, 514, @0, DxlAuto, true);
	Move("@Ｃ/絵演背景奥面左", 0, 374, @0, DxlAuto, false);
	Move("@Ｃ/絵演背景奥面右", 0, 514, @0, DxlAuto, true);
	MoveCamera("@Ｃ", 0, @0, @0, 4000, AxlDxl, true);

	Wait(16);

	CreateTextureSP("@Ｃ/絵演背景雀部屋", -2000, Center, Middle, "cg/bg/bg202021_3_暴露紅雀実家小部屋.jpg");
	Zoom("@Ｃ/絵演背景雀部屋", 0, 750, 750, null, true);

	FadeDelete("上背景", 0, null, true);

	WaitKey(32);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se物体_ドア障子_扉開く強く01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Move("@Ｃ/絵演背景左", 500, @-200, @0, DxlAuto, false);
	Move("@Ｃ/絵演背景右", 500, @200, @0, DxlAuto, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000010a01">
"Hah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("@Ｃ*", UnLock);
	Request("@Ｃ/絵*", UnLock);

	PrintBG2("上背景");
	OnBG(10,"bg202021_3_暴露紅雀実家小部屋");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I finally entered a room with a change of atmosphere&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 4000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間.jpg");

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I quickly turn my head around to make sure the tattoo 
isn't still after me&.

Just a minute ago I was frantically trying to escape&, and 
then it just disappeared without a trace&.

At some point the door I went through locked and closed&.

Is it okay now&.&.&.?

I let out a small sigh&, and look around the room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景", 1000, null, true);

	CreateTextureEX("絵専", 1100, -1024, 0, "cg/ev/l/ev142幼少紅雀と刺青_l.jpg");
	Fade("絵専", 600, 1000, null, true);
	Wait(400);
	Move("絵専", 8000, -720, -336, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
The entire room is colored red&, and someone is lying face 
down on the futon&.

He seems to be wearing a lowered kimono&, with his back 
bare&. He looks frail and young&. A kid?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The flickering candles illuminate a red onto his back&, and he appears to be shaking&.

&.&.&.That isn't because of the flames&.
That's&.&.&.

Not only is his back red&, but so is the futon he's lying 
on&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//※ＳＥ扱い
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/1000020a02">
"Ughhnhkk&.&.&. Guhh&.&.&. ugh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateVOICE("紅雀","dm14/1000020a02");
	MusicStart("紅雀",0,700,0,1000,null,false);
	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
&.&.&.This voice&.

Then&, the person lying on this futon is&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Move("絵専", 0, -380, -500, null, true);
	FadeDelete("絵板写", 1000, null, true);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000030a01">
"Koujaku?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：しゅるしゅると髪の束が畳を這う音
	CreateSE("SE01","se擬音_刺青_もぞつく01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000040a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
When I come closer to the futon&, the bundle of black that I
thought had disappeared bursts out&.

{
	SetVolumeEX("SE01", 1400, 300, null);
}
I stand guard without thinking&. But it goes past my ankles&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 1400, 700, null);
	Move("絵専", 0, -380, -500, null, true);
	Position("@絵専", $x1, $y1);
	CreateTextureEX("絵専二", 1110, $x1, $y1, "cg/ev/l/ev142幼少紅雀と刺青a_l.jpg");
	FadeFFR("絵専二", 0,3000, 2000, 0, 0, 30,DxlAuto, false);
	DrawTransition("絵専二", 2000, 0, 1000, 200, null, "cg/data/worm_01_00_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
It swarms around the face-down Koujaku&, and coils around 
him like a cocoon&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE01", 3000, 0, null);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000050a01">
"Koujaku!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/1000060a02">
"Guh&.&.&. Ughhh&.&.&. Ungh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：障子にびしゃっと血が飛ぶ音
	CreateSE("SE01","se戦闘_血_飛沫01");
	CreateSE("SE02","se戦闘_剣撃_ヒット04");
	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE02",0,800,0,1000,null,false);

	CreateTextureEXmul("絵演飛沫", 2100, Center, Middle, "cg/anime/Center/bloodA_6.png");
	Rotate("絵演飛沫", 0, @0, @0, @180, null,true);
	CreateTextureEX("絵演飛沫二", 2110, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("絵演飛沫", 0, 1050, 1050, null, true);
	Zoom("絵演飛沫二", 0, 1050, 1050, null, true);
	SetShade("絵演飛沫", MEDIUM);
	SetShade("絵演飛沫二", SEMIHEAVY);
	Request("絵演飛沫", Smoothing);
	Request("絵演飛沫二", Smoothing);
	FadeFFR("絵演飛沫", 0,1000, 150, 0, 0, 30,null, false);
	FadeFFR2("絵演飛沫二", 0,1000, 150, 0, 0, 30,null, true);
	Fade("絵演飛沫二", 0, 1000, null, true);

	CreateColorEX("絵色黒", 2090, "000000");
	Fade("絵色黒", 500, 1000, null, false);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000070a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒", 0, 1000, null, true);

	CreatePlainSP("絵板写", 5000);
	Delete("絵専*");
	Delete("絵色黒");
	Delete("絵演飛沫*");
	CreateMaskEX("絵演覆血障子", 0, 0, 0, "cg/bg/x/bg202021_3_暴露紅雀実家小部屋_マスク奥障子.png", false);
	CreateTextureSPover("絵演覆血障子/絵演血障子", 11, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("絵演覆血障子/絵演血障子", 0, 550, 500, null, true);
	SetShade("絵演覆血障子/絵演血障子", SEMIHEAVY);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I can hear the sound of something like water splashing&.&.&. 
and suddenly blood scatters across the room&.

{
//※ＳＥ：斬り殺される人々の狂乱、怒号、どたどたと足音
	CreateSE("SE11","se環境_戦闘_紅雀過去01L");
	MusicStart("SE11",4000,700,0,1000,null,true);
}
Across the door is a noisy&, rattling silhouette moving 
around&.

I hear a shriek and an angry roar&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_血_飛沫01");
	CreateSE("SE02","se戦闘_剣撃_ヒット04");
	MusicStart("SE01",0,300,0,1000,null,false);
	MusicStart("SE02",0,300,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSPover("絵演覆血障子/絵演血障子二", 12, Center, -50, "cg/anime/Left/blood_C_6.png");
	Zoom("絵演覆血障子/絵演血障子二", 0, 550, 500, null, true);
	SetShade("絵演覆血障子/絵演血障子二", SEMIHEAVY);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Blood splashes around&, and it smears everywhere&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_血_飛沫01");
	CreateSE("SE02","se戦闘_剣撃_ヒット04");
	MusicStart("SE01",0,300,0,1000,null,false);
	MusicStart("SE02",0,300,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSPover("絵演覆血障子/絵演血障子三", 13, Center, -50, "cg/anime/Right/blood_B_8.png");
	Zoom("絵演覆血障子/絵演血障子三", 0, 550, 500, null, true);
	SetShade("絵演覆血障子/絵演血障子三", SEMIHEAVY);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
This&.&.&. What kind of memory is this?

What happened to Koujaku when he left the island?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE11", 5000, 300, null);
	CreateTextureEX("絵演効果背景", 20, Center, Middle, "cg/bg/x/bg202021_3_暴露紅雀実家小部屋_効果障子闇.png");
	Fade("絵演効果背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
I hear something moving about&, and the sliding door 
silently opens&.

From a crack&, I see the image of a lifeless woman&.

She's wearing an undershirt&, and standing still in front 
of the door&, absentminded&.

She becomes dyed red from head to toe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
She wealky moves over to the black cocoon surrounding 
Koujaku on the futon&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：どさっ
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1200,0,1000,null,false);

{	Fw("fw蒼葉_通常_worry3");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000080a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
She falls to the tatami floor&, with her arms out&, as if 
trying to grab at something&.

Her small fingertips tremble&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【紅雀母】
<voice name="紅雀母" class="紅雀母" src="voice/dm14/1000090e03">
"&.&.&.u-ja&.&.&.ku&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
&.&.&.!?

She was just saying Koujaku's&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
&.&.&.This woman&.
She's Koujaku's mother&.

I didn't notice because she looked so worn out&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵専", 1100, Center, Middle, "cg/ev/ev142幼少紅雀と刺青a.jpg");
	Fade("絵専", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/1000100a02">
"Unghhhh&.&.&. nguh&.&.&. Grgh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
As if to respond to his mother&, I hear Koujaku moan from 
inside the cocoon&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainEX("絵板写", 990);
	Zoom("絵板写", 0, 1100, 1100, null, true);

	CreateSE("Proc_dm1410_01ActSE","se人体_衝撃_転倒02");
	MusicStartSet("Proc_dm1410_01ActSE",700,0,1000,null,false);

	CreateSE("Proc_dm1410_01ActSE02","se人体_心臓_鼓動01");
	MusicStartSet("Proc_dm1410_01ActSE02",700,0,1000,null,false);

	$Proc_dm1410_01ActNut01 = "@絵板写";
	CreateProcessEX("プロセス", "Proc_dm1410_01Act");
	Request("プロセス", Start);

	FwPro("fw蒼葉_通常_worry4",1900,"fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000110a01">
"Koujaku&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("プロセス", Stop);
	CreatePlainSP("絵板写", 4900);
	Wait(16);
	Delete("@絵専");
	Delete($Proc_dm1410_01ActNut01);
	Delete("Proc_dm1410_01ActSE*");
	Delete("プロセス");
	Delete("絵板写");

	CreateSE("SEL01","se擬音_刺青_もぞつく01L");
	MusicStart("SE01",6000,400,0,1000,null,true);
	CreateSE("SEL02","se環境_自然_炎01L");
	MusicStart("SEL02",6000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
When I try to walk up to the cocoon&, a sharp pain runs 
through my back&. <k>My knees fall to the mat&.

What is this&.&.&.
My back hurts&.

It feels like it's being burned&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000120a01">
"Ah&.&.&. Guh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
The pain runs through my entire body and I begin to sweat&.

This pain&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵専", 1100, Center, Middle, "cg/ev/ev142幼少紅雀と刺青a.jpg");
	Fade("絵専", 500, 1000, null, true);

//※紅雀が寝ていた血まみれの布団がオーバーラップ
	CreateTextureEX("絵ＥＶ", 1110, -373, -458, "cg/ev/l/ev142幼少紅雀と刺青_l.jpg");

	CreateSE("SE01","se擬音_回想_フラッシュバック03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵ＥＶ", 0, 1000, null, true);
	FadeFR2("絵ＥＶ",0,1000,150,0,0,50,null,true);
	Fade("絵ＥＶ", 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0078]
The pain Koujaku felt when he was getting his tattoo&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/1000130a02">
"Ah&, ahhh&.&.&. Kuh&.&.&. Ugh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I can hear Koujaku&.

&.&.&.I need to go&.

I need to go to him&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000140a01">
"Ungh&.&.&. &.&.&.Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE21","se人体_動作_引きずる01");
	MusicStart("SE21",0,1100,0,1500,null,false);
	CreateSE("SE22","se戦闘_剣撃_ヒット03");
	MusicStart("SE22",0,700,0,900,null,false);
	FadeDelete("絵専", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
I stand up to the pain in my back and stumble to my feet&.

I get closer to the cocoon&, and I tear at it with both 
hands&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_pain2",3000,"fw蒼葉_通常_hard2");
//	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000150a01">
"Ouch&.&.&. Damn&.&.&. it!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
The sharp&, black cocoon scatters and burns away like paper&.

As I destroy the rest of the the cocoon&, I can soon see 
Koujaku's back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000160a01">
"Koujaku&.&.&. wake up!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
I reach my hand out to the bloodied back lying in front of me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_血_垂れる02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se戦闘_剣撃_ヒット04");
	MusicStart("SE02",0,700,0,750,null,false);
	CreateColorSP("絵色血", 4000, "CC0000");
	Wait(30);
	FadeDelete("絵色血", 70, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000170a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateStencil("マスク１",0,center,InBottom,128,"cg/bu/bu竜峰_通常_mad.png",false);
	SetShade("マスク１", HEAVY);
	Move("マスク１", 0, @0, @40, null, true);
	SetVertex("マスク１", center, bottom);
	Zoom("マスク１", 0, 0, 0, null, true);
	CreateColor("マスク１/色１", 750, 0, 0, 1024, 576, "720000");
	CreateColorEX("マスク１/色１", 750, "720000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
When my fingertips touch him&, the blood covering his back 
peels off like a jelly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_刺青_もぞつく01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fade("マスク１/色１", 1000, 1000, null, false);
	Zoom("マスク１", 1000, 300, 2000, AxlDxl, true);
	Zoom("マスク１", 2000, 1000, 1000, Dxl1, true);
	SetVolumeEX("SE01", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
The clot of blood grows to the size of a person&. 

I recognize the familiar shape&.

&.&.&.Ryuuhou&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Position("マスク１", $x1, $y1);
	CreateTextureEXmul("絵演竜峰口元", 750, $x1, $y1, "cg/bu/x/bu竜峰_通常_mad_口元のみ.png");
	DrawEffect("絵演竜峰口元", 0, "Ripple", 80, 80, null);
	Fade("絵演竜峰口元", 0, 200, null, true);
	DrawTransition("絵演竜峰口元", 10000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0096]
I can see the twisted smile on his foxlike face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
This tattoo&. This back&.

This spirit&.

Just like he said&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000180a01">
"&.&.&.No&. Koujaku isn't something you own&.&.&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000190a01">
"Let go of Koujaku&. Release&.&.&. Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_血_飛沫01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se戦闘_血_爆ぜる01");
	MusicStart("SE02",0,700,0,750,null,false);
	CreateColorSP("絵色血", 4000, "CC0000");
	Wait(30);
	Delete("マスク*");
	Delete("絵演竜峰*");
	FadeDelete("絵色血", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
I deliver a blow to the clot of blood that looks like 
Ryuuhou&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：ばしゃんと血の塊が崩れる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
It bursts open and a sea of blood scatters out&.

I pay it no mind and move back to Koujaku&, trying to wake 
him up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵専", 1100, -373, -458, "cg/ev/l/ev142幼少紅雀と刺青a_l.jpg");
	Fade("絵専", 500, 1000, null, true);

	FwPro("fw蒼葉_通常_rage",1800,"fw蒼葉_通常_shock2");
//	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/1000200a01">
"Koujaku&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1420.nss"]

}
