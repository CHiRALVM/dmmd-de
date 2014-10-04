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


scene dm1350.nss_MAIN
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
	#bg304032_5_東江タワー廊下02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1360.nss";

}


scene dm1350.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm018",0,450,true);

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
	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Through the door we find a long&, white hallway&.

So this is Oval Tower&.&.&.

I heard there were areas where regular people could go in 
the tower&, but I see no one from the back door&.

But I can hear the faint sounds of footsteps; they must 
belong to the security officers on patrol&.

We examine our surroundings and carefully make our way 
down the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/5000010a01">
"&.&.&.It doesn't feel right&."

{	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/5000020a02">
"Yeah&. It's too quiet&, and an alarm hasn't gone off or
 anything&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/5000030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Without even opening our mouths&, we both ask each other 
the same question&.

The side door opened so easily&.&.&.
Maybe it's a trap?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304032_5_東江タワー廊下02");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
We continue with caution and eventually see an elevator&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：影に隠れる風に」
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景", 100, -50, -250, "cg/bg/l/bg304032_5_東江タワー廊下02_l.jpg");


	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 300, @50, @0, Dxl1, false);
	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
There are two security guards standing by the elevator&. We hide behind a wall before they can notice us&.

&.&.&.But&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

{	Fw("fwm警備A_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm13/5000040e16">
"Hey&, what are you doing over there?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/5000050a01">
"!"

{	Fw("fw紅雀_通常_worry2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/5000060a02">
"&.&.&.This is bad&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵背景", 500, 0, null, true);
	CreateSE("SE01","se人体_足音_歩く04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
&.&.&.It seems we were a little too slow&.
Footsteps approach us from the direction of the elevator&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	CreatePlainSP("絵板写", 5000);

	CreateMaskSP("絵窓", 2000, 0, 0, "cg/mask/ciライン_01_00.png", false);
	CreateMaskSetSP("絵窓", 4000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");
	CreateTextureSP("絵窓枠", 4000, Center, Middle, "cg/mask/ciライン_01_00z.png");
	CreateTextureSP("絵窓/絵霞", 500, 0, -250, "cg/bg/m/bg304032_5_東江タワー廊下02_m.jpg");
	CreateColorSP("絵窓/絵黒幕", 600, "BLACK");
	CreateTextureSP("絵窓/絵立ち", 700, Center, InBottom, "cg/fu/fu紅雀_通常_cool.png");
	SetShade("絵窓/絵霞", MEDIUM);

	Move("絵窓/絵立ち", 0, @15, @0, null, true);
	Move("絵窓/絵霞", 0, @30, @0, null, true);

	Fade("絵窓/絵黒幕", 0, 300, null, true);

	Move("絵窓/絵立ち", 800, @-15, @0, Dxl1, false);
	Move("絵窓/絵霞", 800, @-30, @0, Dxl1, false);
	DrawDelete("絵板写", 300, 100, Dxl1, "slide_05_01_0", true);

//	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
Koujaku and I exchange glances and nod&, knowing we're 
thinking the same thing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateTextureSP("絵背景上", 4001, 0, -250, "cg/bg/l/bg304032_5_東江タワー廊下02_l.jpg");

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵窓/絵立ち", 650, @-300, @0, Dxl3, false);
	Move("絵窓/絵霞", 650, 0, @0, Dxl3, false);
	DrawTransition("絵背景上", 150, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("絵窓*");
	Delete("絵窓/絵*");

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl3, "cg/data/zoom_01_00_0.png", true);

	Delete("絵背景*");
	CreatePlainEX("絵板写", 1000);
	Request("絵板写", Smoothing);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	Fade("絵板写", 0, 500, null, true);


	Zoom("絵板写", 250, 1000, 1000, Axl1, false);
	FadeDelete("絵板写", 250, Axl1, false);
	CreateSE("SE12","se人体_足音_走る03");
	MusicStart("SE12",0,700,0,1300,null,false);
	DrawDelete("絵黒幕", 150, 100, Dxl3, "zoom_01_00_0", true);



	SoundPlay("@dm009",0,450,true);

	Wait(200);
	CreateSE("SE13","se人体_足音_走る03");
	MusicStart("SE13",0,700,0,1300,null,false);

//	St("C",740, @0,@0,"st紅雀_通常_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Koujaku runs out into the hallway first&, and I follow suit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm13/5000070e17">
"You two&, who are&.&.&. Whoagh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵窓", 2000, 0, 0, "ciスラッシュ_02_00", true, "ciスラッシュ_02_00z");
	CreateTextureSP("絵窓/絵演背景", 1010, Center, Middle, "cg/bg/l/bg304032_5_東江タワー廊下02_l.jpg");
	CreateTextureSP("絵窓/絵演立絵", 1030, 0, 0, "cg/st/l/st紅雀_戦闘素手_normal2_l.png");

	SetShade("絵窓/絵演背景", MEDIUM);


	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵窓/絵演立絵", 250, 285, -90, Axl3, false);
	Move("絵窓/絵演背景", 250, @70, @-28, Axl3, false);
	Wait(50);
	DrawDelete("絵板写", 150, 100, null, "slide_04_01_0", true);
	Wait(200);


	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Wait(30);
	Delete("絵窓*");
	Delete("絵窓/絵*");

	DeleteAllSt(0,true);

	BGPlainShake(50,200,5,5,0,0,1000,Dxl1,false);
	FadeDelete("絵色白", 100, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Koujaku knocks one of the guards off his feet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵演出大", 1000, 0, Middle, "cg/ev/l/ev900蒼葉蹴り汎用_l.jpg");
	CreateTextureSP("絵演出大弐", 900, Center, Middle, "cg/ev/ev900蒼葉蹴り汎用.jpg");
	Wait(50);
	Move("絵演出大", 300, -1024, 0, Dxl3, false);
	FadeDelete("絵演出大", 200, null, true);

	Wait(200);
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Delete("絵演*");
	Wait(30);
	BGPlainShake(50,200,10,10,0,0,1000,Dxl1,false);
	FadeDelete("絵色白", 100, Dxl3, true);

	Wait(500);

	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);


	CreateTextureSP("絵背景", 100, -700, -480, "cg/bg/l/bg304031_5_東江タワー廊下01_l.jpg");

	Move("絵背景", 250, @-190, @0, Axl3, false);
	DrawDelete("絵黒幕", 250, 100, Dxl3, "slide_01_03_0", true);
	Wait(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I kick the other guard from the side and dash towards the 
elevator&.

I stretch out my arms&, reach for the elevator panel&, and 
push a button&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm13/5000080e16">
"Wai&.&.&.!"

{	DeleteFw();
	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,900,null,false);
	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Wait(10);
	FadeDelete("絵色白", 100, Dxl3, true);
	Wait(300);
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,900,null,false);
	Wait(300);

	St("C",740, @0,@0,"st紅雀_戦闘素手_normal2");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/5000090a02">
"Have a nice nap!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Koujaku gives a chop to the guard's neck&.

{
	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,800,null,false);

	DeleteAllSt(200,true);
}
He then grabs the sword from his back and hits the other 
guard in the gut with the scabbard&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Wait(10);
	FadeDelete("絵色白", 100, Dxl3, true);

	Fw("fwm警備B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm13/5000100e17">
"Ugh!"

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/5000110a01">
"Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_エレベータ_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
The eleveator is already here&.

I go inside while yelling for Koujaku&, then quickly press 
the close button&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("揺用", 3000);

	Request("揺用", Smoothing);
	Zoom("揺用", 0, 1300, 1300, null, true);

	CreateMovieEX("絵動画", 3001, 286, 50, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵動画",0,3000,3000,null,true);

	MoveFFP1("@揺用",500);
	Fade("絵動画", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_動作_走る01");
	MusicStart("SE01",0,700,0,1200,null,false);
	FadeDelete("絵板写", 300, Dxl2, true);
	Wait(300);

	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl1, "cg/data/slide_01_00_0.png", false);
	Wait(200);
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);

	Delete("揺*");
	Delete("絵動画*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Koujaku slips in through the gap just before it closes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

//※次ファイル["dm1360.nss"]

}
