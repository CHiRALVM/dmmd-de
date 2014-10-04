//<continuation number="190">
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


scene dm3220_vs.nss_MAIN
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
	$GameName = "dm3230_vs.nss";

}


scene dm3220_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg306031_5_倉庫内部荷物側");
	FadeBG(0,true);
	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/2000010b08">
"Heh heh heeeh!"

{	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",200,true);
	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/2000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/2000021b08">
"Did you think it'd always go your way? YOU LITTLE
 SHIIIIIIITS!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Suddenly&, a scratchy voice sounds from inside the 
warehouse&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/l/bg306021_5_倉庫内部入り口側_l.jpg");
	CreateTextureEX("絵演立絵", 1001, Center, InBottom, "cg/st/l/st悪島_通常_normal_l.png");
	CreateTextureEX("絵演立絵弐", 1000, Center, InBottom, "cg/st/l/st悪島_通常_laugh_l.png");


	CreateStencil("マスク１",1010,center,InBottom,128,"cg/st/l/st悪島_通常_normal_l.png",false);
	CreateColorSP("マスク１/色１", 1005, 0, 0, 800, 600, "BLACK");
	CreateColorEX("絵色黒", 150, "000000");
	Fade("絵色黒", 0, 500, null, true);

	DeleteSt("C", 0,true);

	Move("マスク１", 0, @60, @0, null, true);
	Move("絵演背*", 0, @30, @0, null, true);


	Move("マスク１", 1000, @-60, @0, Dxl1, false);
	Move("絵演背*", 1000, @-30, @0, Dxl1, false);
	FadeDelete("絵板写", 800, Axl1, true);

	Wait(500);

	Fade("絵演立絵*", 0, 1000, Axl3, true);

	Fade("絵色黒", 1000, 300, Axl3, false);
	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("マスク１/色１", 1000, null, true);


	Wait(500);

	CreatePlainSP("絵板写", 5000);

	Delete("マスク*");

	FadeDelete("絵板写", 500, null, true);


	Move("絵演背*", 3000, @0, @200, AxlDxl, false);
	Move("絵演立*", 3000, @0, @500, AxlDxl, true);


	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/2000030a01">
"&.&.&.Akushima!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演立絵", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/2000040b08">
"Not just meeeeee!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景上", 2000, Center, Middle, "cg/bg/m/bg306021_5_倉庫内部入り口側_m.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306021_5_倉庫内部入り口側.jpg");

	Delete("絵演*");
	Delete("絵色*");

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景上", 2000, 0, 1, 0, 0, 500, null, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Police group around in hordes&, and we're completely 
surrounded&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	St("C",740, @0,@0,"st悪島_通常_pride");
	FadeSt("C",0,true);
	SetVolumeEX("SE*", 500, 0, null);
	FadeDelete("絵背景上", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/2000050b08">
"Poor you&, your luck ran out when you triiiiiied to slip
 out of the Old Resident District&."

{	St("C",740, @0,@0,"st悪島_通常_laugh");
	FadeSt("C",200,true);}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/2000060b08">
"You all just jumped right into my little neeeeeeeet!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景弐", 150, Center, Middle, "cg/bg/bg306031_5_倉庫内部荷物側.jpg");

	DeleteSt("C", 0,true);

	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/2000070a05">
"&.&.&.Your persistance is a pain in the ass&."

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/2000080e45">
"&.&.&.I'm sorry&, Mink-san&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The team members turn pale&, and a weird tension fills the 
air&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Akushima must've followed the team members' tracks&.

A lethal mistake&.
Isn't Mink angry&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/2000090a05">
"It's fine&. It's too late now&. First&, let's figure out how
 we're going to deal with this&."

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/2000100e45">
"&.&.&.Yes!"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm32/2000110e46">
"Yes!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
&.&.&.That was unexpected&.

The members' faces stiffen with Mink's words&.

Self centered and violent&.
That's how I saw Mink&, but&.&.&.

Now I feel like I understand him even less&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/2000120a05">
"Fifty people on the other side?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Mink looks at the policemen&.
There's around ten of them near me&.

I don't know how many weapons they have on hand&, but it 
doesn't look like we can escape safely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/2000130a01">
"What do we do in this situation&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,400,0,700,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,600,0,1300,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Mink throws something at me&.

{	CreateSE("SE01","se戦闘_銃_構える02");
	MusicStart("SE01",0,600,0,800,null,false);
	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");}
What flew to me was a small rifle&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/2000140a05">
"Watch your own ass&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/2000150a01">
"We're going to use these?"

{	St("C",740, @0,@0,"stミンク_通常_normal");
	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
	FadeStPro("C", 3250, 200);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/2000160a05">
"Tell me if you have any other ideas&. 
 &.&.&.You all&, get ready&."

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm32/2000170e46">
"Yes!"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/2000180e45">
"That was our miss&. We will settle this&."

{	St("C",740, @0,@0,"stミンク_通常_angry");
	St("C",740, @0,@0,"stミンク_通常_shout");
	FadeSt("C",200,true);
	FadeStPro("C", 5600, 200);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/2000190a05">
"Save that for later&. First we get out of here&.
 &.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteSt("C", 200,true);
	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se戦闘_動作_走る01a");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵背景弐", 600, 1100, 1100, Dxl2, false);
	CreateColorSP("絵黒幕", 6000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/zzex_circle_01_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
Following Mink's orders&, the members spread out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm3230_vs.nss"]

}
