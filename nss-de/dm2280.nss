//<continuation number="100">
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


scene dm2280.nss_MAIN
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
	#bg304031_5_東江タワー廊下01=true;
	#bg304072_5_東江タワーエレベーター=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2290_vs.nss";

}


scene dm2280.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304031_5_東江タワー廊下01");
	FadeBG(0,true);

	CreateColorSPadd("絵色白", 4000, "WHITE");
	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg304031_5_東江タワー廊下01_l.jpg");

	Move("絵背景", 0, @-500, @0, AxlDxl, true);

	Wait(500);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);
	FadeDelete("絵色白", 2500, null, false);
	Wait(500);
	Move("絵背景", 3500, @0, @-400, AxlDxl, true);
	Wait(700);
	SoundPlay("@dm018",0,450,true);
	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The inside of the tower was made of such a pure white 
material that it was almost dazzling&. 

The floor and walls were polished like a mirror and coldly reflected our figures&.

I've heard that there's an area open to the general public in the tower&, but I don't see any visitors&. Probably 
because we came through the back entrance&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/8000010a03">
"&.&.&.Hey&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE11","se人体_足音_歩く04L");//あきゅん「ＳＥ：se人体_足音_歩く04L」
	MusicStart("SE11",0,10,0,1000,null,true);
	SetVolumeEX("SE11", 1600, 700, null);

//あきゅん「↓：文分けました」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012a]
We carefully proceed down the hallway&, and eventually see 
a guard walking on the other side&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, 000000);
	CreateSE("SE01","se人体_動作_衣擦れ19");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", 100, 1000, null, false);
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012b]
We slip into a side hallway and hold our breath&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 1100, null);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/8000020a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※こつこつ通り過ぎていく警備員

	SetVolumeEX("SE11", 3000, 0, null);
	WaitKey(2000);
	SetVolumeEX("SE11", 500, 0, null);
	FadeDelete("絵色黒", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
After waiting until the guard passed&, we calmly reenter 
the hallway and survey our surroundings again&.

The guard had come from the direction of an elevator at 
the end of the hall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*===========================
//嶋：ウィンドウでエレベータのところをズームにした絵を表示
	CreateWindow("絵マスク", 2100, 0, 100, 1024, 374, false);
	SetAlias("絵マスク","絵マスク");
	Zoom("絵マスク", 0, 1000, 0, null, true);

	CreateTextureEX("マスクライン上", 2100, Center, Middle, "cg/mask/ciウィンドウ横01.png");
	CreateTextureEX("マスクライン下", 2100, Center, Middle, "cg/mask/ciウィンドウ横01.png");

//嶋：後で位置調整かも
	CreateTextureSP("絵マスク/絵背景100", 2000, Center, Middle, "cg/bg/l/bg304072_5_東江タワーエレベーター_l.jpg");

	CreateColorEX("絵色黒", 1000, "000000");

	Fade("絵色黒", 300, 300, null, true);
	Fade("マスクライン*", 0, 1000, null, false);
	Move("マスクライン上", 150, @0, 90, null, false);
	Move("マスクライン下", 150, @0, 474, null, false);
	Zoom("絵マスク", 150, 1000, 1000, null, true);

	Move("マスクライン上", 150, @0, 281, null, false);
	Move("マスクライン下", 150, @0, 281, null, false);
	Zoom("絵マスク", 150, 1000, 0, null, true);
	Fade("マスクライン*", 50, 0, null, true);
	Delete("マスクライン*");
	Delete("絵マスク/絵背景100");
	Delete("絵マスク/絵st200");
	Delete("絵マスク");

	FadeDelete("絵色黒",300,null,true);
===========================*/

	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/8000030a03">
"Let's use that&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/8000040a01">
"Okay&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,900,null,false);

	Wait(30);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Just to be safe&, we make sure that the guard is far away 
from us before quickly running to the elevator&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg304072_5_東江タワーエレベーター");
	FadeBG(0,true);
	CreateTextureSP("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_東江タワーエレベーター_l.jpg");

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
We step inside of the ready elevator and Noiz pushes the 
button to send us to the top floor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se物体_コイル_操作音01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("bg_el", 10, -580, 165, "cg/bg/bg304072_5_東江タワーエレベーター.jpg");
	Request("bg_el", Smoothing);
	Rotate("bg_el", 0, @0, 180, @0, null,true);
	Zoom("bg_el", 0, 2500, 2500, null, true);


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


	CreateSE("SE11","se物体_エレベータ_駆動01L");//あきゅん「ＳＥ：se物体_エレベータ_駆動01L」
	MusicStart("SE11",1500,700,0,1000,null,true);

	Shake("bg_el2", 300, 0, 2, 0, 0, 500, null, false);

	Wait(2000);

	FadeDelete("bg_el2", 1000, null, true);

	Wait(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
With a small shake&, the elevator begins to move&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「コイル：ここって素材あるんだっけ？」
	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Feeling slightly relieved&, I sigh&.
But I can't completely relax just yet&.

I turn my eyes to the sound of a Coil and see Noiz looking at a map&.

This guy&.
I wonder if he has a plan or something&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetFrequency("SE11", 1800, 500, null);
	SetVolumeEX("SE11", 2500, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Wait(1500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The elevator gradually decreases speed and stops without a sound&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_エレベータ_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//※次ファイル["dm2290_vs.nss"]

}
