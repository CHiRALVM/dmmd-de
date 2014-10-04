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


scene dm5570.nss_MAIN
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

	#bg304131_5_東江タワー東江の間前廊下=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5580.nss";

}


scene dm5570.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
/*
	CreateColorEXadd("絵色ライト1", 1109, "FFFFFF");
	CreateColorEXadd("絵色ライト2", 1109, "FFFFFF");
	CreateColorEXadd("絵色ライト3", 1109, "000000");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_06_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_01_04_1.png", true);
	//DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
*/


//	CreatePlainSP("plain01", 20);


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 15000, "000000");
/*
	OnBG(10,"bg304072_5_東江タワーエレベーター");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01L","se物体_エレベータ_駆動01L");
	MusicStart("SE01L",3000,700,0,1000,null,true);

	Wait(2000);

	CreateTextureSP("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_東江タワーエレベーター_l.jpg");

	CreateTextureSP("bg_el", 10, -580, 165, "cg/bg/bg304072_5_東江タワーエレベーター.jpg");
	Request("bg_el", Smoothing);
	Rotate("bg_el", 0, @0, 180, @0, null,true);
	Zoom("bg_el", 0, 2500, 2500, null, true);

//	CreateTextureSP("chara01", 11, center, middle, "cg/fu/fu紅雀_通常_angry.png");
//	Move("chara01", 0, @300, @0, null, true);
	CreateTextureSP("chara01", 11, -300, middle, "cg/fu/fu蒼葉_通常_serious.png");
	Request("chara01", Smoothing);
	Rotate("chara01", 0, @0, 180, @0, null,true);
	Zoom("chara01", 0, 1500, 1500, null, true);
//	Move("chara01", 0, @300, @0, null, true);

	CreateTextureSP("ElevatorPaul", 500, Center, -600, "cg/bg/x/bg304072_5_東江タワーエレベーター_外空ポール.png");
	Request("ElevatorPaul", Smoothing);
	Zoom("ElevatorPaul", 0, 6000, 6000, null, true);

	CreateTextureSP("bg_scrool", 100, 0, -4700, "cg/bg/bg304072_5_東江タワーエレベーター_外空a.jpg");
	Fade("ElevatorPaul", 0, 500, null, true);
	Fade("bg_scrool", 0, 700, null, true);

	ElevatorPole();
	ElevatorMove();

	Fade("bg_scrool", 700000, 300, null, false);
	Move("bg_scrool", 700000, @0, 0, Dxl1, false);


	Move("bg_el2", 4000, @170, @0, null, false);
	FadeDelete("絵色黒", 1500, null, true);

	Wait(1000);

	FadeDelete("bg_el2", 1500, null, true);

	Wait(1500);
*/

	CreateSE("SE01L","se物体_エレベータ_駆動01L");
	MusicStart("SE01L",3000,700,0,1000,null,true);
	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I split up with Koujaku and the others&, I put Ren 
into my bag and board the elevator&.

I stare at the numbers as the elevator goes up and up&.

Toue is at the top of this&.
Sei is&, too&.

In any other situation&, the anxiety and tension would have crushed me&.

But I have Ren with me&.
So I'll be all right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(1000);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

//	ElevatorPoleStop();
//	Delete("ElevatorPaul");
//	Delete("bg_el");
//	Delete("bg_scrool");
//	Delete("chara01");

	Wait(1000);

	SetFrequency("SE01L", 3500, 300, null);

	Wait(2000);

	SetVolumeEX("SE01L", 1000, 0, null);

	Wait(1000);

	CreateSE("SE01","se物体_エレベータ_電子音01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(1000);
	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

	OnBG(10,"bg304131_5_東江タワー東江の間前廊下");
	FadeBG(0,true);

//	Fade("絵色黒", 1500, 0, null, true);
	FadeDelete("絵色黒", 1000, null, true);

	Wait(1000);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/7000010a01">
"This is&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
When I stepped off the elevator&, the first thing I saw was 
a door&. The atmosphere of this floor was different from 
the others&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/7000020a01">
"Let's go&, Ren&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/7000030a06">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I silently gripped my hands into fists and went forward&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE03","se人体_足音_歩く03L");
	SoundEffect("SE03","SEWERPIPE");
	MusicStart("SE03",0,1000,0,600,null,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304131_5_東江タワー東江の間前廊下.jpg");
	Request("絵背景", Smoothing);
	Move("絵背景", 10000, @0, @-50, AxlDxl, false);
	Zoom("絵背景", 10000, 1300, 1300, AxlDxl, false);

	Wait(3000);

	CreateSE("SE01","se物体_ドア東江の間_扉開く01a");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 2000, 1000, Axl1, true);

//	CreateColorSPadd("絵色白", 5000, "FFFFFF");
//	DrawTransition("絵色白", 1000, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);
//	DrawTransition("絵色白", 1000, 200, 400, 100, null, "cg/data/slide_06_00_1.png", true);
//	DrawTransition("絵色白", 1000, 400, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	SetVolumeEF("@SE03", 1000);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(2000);

//※次ファイル["dm5580.nss"]

}

