//<continuation number="120">
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


scene dm3480_vs.nss_MAIN
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
	#ev920ミンク、バイク疾走=true;
	#bg304031_5_東江タワー廊下01=true;
	#bg304032_5_東江タワー廊下02=true;
	#bg304033_5_東江タワー廊下03=true;
	#bg304061_5_東江タワー階段=true;
	#bg304062_5_東江タワー階段別アングル=true;
	#bg304112_5_東江タワー中ホール扉前=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3490.nss";

}


scene dm3480_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304033_5_東江タワー廊下03");
	FadeBG(0,true);
	CreateTextureEX("絵背景", 100, -700, Middle, "cg/bg/l/bg304033_5_東江タワー廊下03_l.jpg");
	Fade("絵背景", 0, 1000, null, true);

	CreateSE("SE01L","se乗物_改造バイク_アイドリング01L");
	CreateSE("SE02","se乗物_改造前バイク_急ブレーキ01");

	Move("絵背景", 1000, -500, @0, Dxl2, false);
	Shake("絵背景", 1000, 0, 10, 0, 0, 1000, null, false);

	MusicStart("SE01L",2000,500,0,1200,null,true);
	MusicStart("SE02",0,700,0,1200,null,false);
	DrawDelete("上背景", 500, 300, null, "slide_05_00_0", true);

//	FadeDelete("上背景", 1000, null, true);

	Wait(500);
	FadeDelete("絵背景", 500, null, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/8000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
An image of a pure white wall as clear as a mirror&, a 
floor&, and a ceiling reflects in my eyes&.

This is the inside of Oval Tower&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

SoundPlay("@dm008",0,450,true);


{	Fw("fwm警備A_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm34/8000020e16">
"What!? &.&.&.! I've found intruders!"

{	Fw("fwm警備C_通常_normal");}
//【警備Ｃ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm34/8000030e17">
"Hey! Stop right there!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	CreateSE("SE01","se戦闘_銃_構える01複数");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
A group of rifle-holding guards appear from the hallways&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateTextureEX("ev1", 50, Center, 150, "cg/bg/bg304033_5_東江タワー廊下03.jpg");
	SetShade("ev1", HEAVY);
	Zoom("ev1", 0, 1800, 1800, null, true);
	CreateTextureEX("ev2", 600, -47, -65, "cg/ev/ev920ミンクと蒼葉バイク_人物.png");
	Request("ev*", Smoothing);

	Rotate("ev2", 0, @0, @0, -20, null,false);

//※ＳＥ：ぶぉん、とアクセルをふかす
	SetVolumeEX("SE01L", 500, 0, null);

	CreateSE("SE01","se乗物_改造バイク_エンジンふかす01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("ev2", 400, 0, 5, 0, 0, 1000, null, false);
	Fade("ev1", 250, 1000, null, false);
	Fade("ev2", 250, 1000, null, true);


//	Fw("fwミンク_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/8000040a05">
"Don't get thrown off&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//あきゅん「演出：バイク疾走"www.nicovideo.jp/watch/sm8953033"ここ辺りを参考に」
	CreateTextureEX("絵ＥＶ", 1100, -688, -68, "cg/ev/ev920ミンク、バイク疾走.jpg");
	SetBlur("絵ＥＶ", true, 1, 500, 100, false);

	CreateSE("SE01","se乗物_改造バイク_スピン01");//あきゅん「ＳＥ：」
	CreateSE("SE02","se乗物_改造バイク_急加速01");
	CreateSE("SE90L","se乗物_改造バイク_走行01L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("ev2", 1000, 0, 5, 0, 10, 1000, Axl1, false);
	Move("ev2", 800, @-2000, @0, Axl2, true);

	MoveFTP1("@絵ＥＶ",2000,8,5);
	Fade("絵ＥＶ", 0, 1000, null, true);
	DrawTransition("絵ＥＶ", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	MusicStart("SE90L",500,400,0,800,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The sharp engine groans and the bike takes off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/8000050a01">
"-Wah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm警備A_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm34/8000060e16">
"Wait! Guagh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Mink throws around security on his way&, beating the floor 
down with his tires and driving through the hallway with 
ease&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm警備C_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【警備Ｃ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm34/8000070e16">
"You bastards&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm34/8000080e17">
"Wait!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：銃を撃つ音
	CreateSE("SE01","se戦闘_銃_発砲警備員01複数");
	MusicStart("SE01",0,700,0,1000,null,false);
	MFlash(15, 5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The sounds of firing follow behind us&.

I'm a bit scared&, but Mink swerves around&, avoiding the 
shots&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);
//※ＳＥ：エンジンの唸り
	CreateSE("SE01","se乗物_改造バイク_スピン01");
	CreateSE("SE02","se乗物_改造前バイク_走り去る");
	MusicStart("SE01",0,700,0,900,null,false);
	MusicStart("SE02",0,700,0,900,null,false);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);
	MoveFTP1stop();
	Delete("絵ＥＶ");


	CreateTextureEX("絵ＥＶ", 1100, -688, -68, "cg/ev/ev920ミンク、バイク疾走.jpg");
	SetBlur("絵ＥＶ", true, 1, 500, 100, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Pushed around by the force when we turn corners&, we 
continue on our way&.

We shake off the trailing guards and face a staircase down the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(16);

	CreateTextureEX("ev0", 50, Center, middle, "cg/bg/bg304061_5_東江タワー階段.jpg");
	Zoom("ev0", 0, 1100, 1100, null, true);
	CreateTextureEX("ev1", 50, Center, middle, "cg/ef/efbg効果03.jpg");
	SetShade("ev1", HEAVY);
	Zoom("ev1", 0, 1100, 1100, null, true);
	CreateTextureEX("ev2", 600, -412, -74, "cg/ev/ev920ミンクと蒼葉バイク_人物.png");
	Rotate("ev2", 0, @0, @0, 10, null,false);
	CreateTextureEX("ev3", 600, Center, middle, "cg/bg/bg304062_5_東江タワー階段別アングル.jpg");
	Zoom("ev3", 0, 1200, 1200, null, true);
	Rotate("ev3", 0, @0, @0, @-10, null,true);
	Request("ev*", Smoothing);

	Shake("ev*", 500, 2, 5, 0, 0, 800, null, false);
	MoveFTP2("@ev3",2000,8,10);
//	Move("mv0", 0, @-100, @0, null, true);
	Fade("mv0", 0, 300, null, false);
	Fade("ev0", 0, 1000, null, true);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032a]
&.&.&.Wait&, a staircase!?

Are we going to go up it!?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);

	CreateMovieEX("mv0", 2000, center, middle, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("mv0",0,5000,5000,null,true);
	CreateMovieEX("mv1", 2000, 120, 170, true, true, "dx/mv0003集中線04_白.ngs");
	Zoom("mv1",0,5000,5000,null,true);
	Rotate("mv1", 0, @0, @0, 25, null,false);
	CreateMovieEX("mv2", 2000, center, middle, true, true, "dx/mv0003集中線03_白.ngs");
	Zoom("mv2",0,3000,3000,null,true);

	CreateSE("SE01","se乗物_改造バイク_スピン01");
	CreateSE("SE01b","se乗物_改造前バイク_急ブレーキ01");
	CreateSE("SE01c","se乗物_改造バイク_スピン01");
	CreateSE("SE01d","se乗物_改造前バイク_急ブレーキ01");
	CreateSE("SE02","se乗物_改造バイク_エンジンふかす01");
	CreateSE("SE02b","se乗物_改造バイク_エンジンふかす02");
	CreateSE("SE02c","se乗物_改造バイク_エンジンふかす01");
	CreateSE("SE02d","se乗物_改造バイク_エンジンふかす01");
	CreateSE("SE03","se乗物_改造バイク_着地01");
	CreateSE("SE03b","se乗物_改造バイク_急加速01");
	CreateSE("SE03c","se乗物_改造バイク_着地01");
	CreateSE("SE10","se乗物_改造バイク_スピン01");
	CreateSE("SE11","se乗物_改造バイク_急加速01");
	CreateSE("SE12","se乗物_改造バイク_走行01L");

	SetVolumeEX("SE90L", 1000, 0, null);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("ev*", 50000, 2, 5, 0, 0, 800, null, false);
	Zoom("ev0", 300, 2000, 2000, Axl2, false);
	MoveFTP1("@ev2",2000,8,10);
	Fade("mv0", 250, 0, null, false);
	Fade("mv1", 250, 200, null, false);
	Fade("ev1", 250, 1000, null, false);
	Fade("ev2", 250, 1000, null, true);

	MoveFTP2stop();

	Wait(500);

	MusicStart("SE01b",0,700,0,1000,null,false);

	MoveFTP2("@ev3",2000,8,10);
	Rotate("mv2", 0, 180, @0, @0, null,true);
	Zoom("ev3", 500, 1200, 1200, Dxl1, false);
	Rotate("ev3", 500, @0, @0, 0, Dxl1,false);
	Fade("ev3", 250, 1000, null, false);
	Fade("mv1", 250, 0, null, false);
	Fade("mv2", 250, 200, null, true);

	Fade("ev1", 0, 0, null, true);
	Fade("ev2", 0, 0, null, true);

	MusicStart("SE02b",0,700,0,1200,null,false);
	Wait(300);

	Zoom("ev3", 500, 1800, 1800, Axl1, false);
	Rotate("ev3", 500, @0, @0, 20, Axl1,false);

	Wait(200);

	MoveFTP1("@ev2",2000,8,10);
	Zoom("ev2", 0, 2000, 2000, null, true);
	Rotate("ev2", 300, @0, @0, -20, Dxl2,false);
	Rotate("mv1", 300, @0, @0, 0, Dxl2,false);

	Fade("mv1", 250, 200, null, false);
	Fade("mv2", 250, 0, null, false);
	Fade("ev1", 0, 1000, null, false);
	Fade("ev2", 0, 1000, null, false);
	Fade("ev3", 250, 0, null, true);
	MoveFTP2stop();

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("ev2", 300, 0, 20, 0, 0, 1000, null, false);

	Wait(400);

	MusicStart("SE01c",0,700,0,1300,null,false);

	Shake("ev2", 1000, 0, 0, 3, 10, 1000, null, false);
	Wait(200);
	Rotate("mv1", 500, @0, @0, 40, Axl1,false);
	Rotate("ev2", 500, @0, @0, 30, Axl1,false);
	Wait(200);

	Zoom("ev3", 0, 1400, 1400, null, true);
	Rotate("ev3", 0, @0, 180, 0, null,true);
	Rotate("mv2", 0, @0, 180, @0, null,true);

	Zoom("ev3", 1000, 1800, 1800, Axl1, false);
	Move("ev3", 300, @0, -100, Dxl2, false);

	Fade("ev3", 250, 1000, null, false);
	Fade("mv1", 250, 0, null, false);
	Fade("mv2", 250, 200, null, true);

	Fade("ev1", 0, 0, null, true);
	Fade("ev2", 0, 0, null, true);

	MusicStart("SE02c",0,700,0,1300,null,false);

	Wait(300);

	MusicStart("SE03b",0,1000,0,1500,null,false);

	Move("ev3", 300, @0, 100, Axl1, false);
	Wait(150);

	MoveFTP1("@ev2",2000,8,10);

	Rotate("mv1", 0, @0, 180, 0, null,true);
	Fade("mv1", 100, 200, null, false);
	Fade("mv2", 100, 0, null, false);
	Rotate("ev2", 0, @0, 180, -20, null,true);
	Fade("ev1", 0, 1000, null, false);
	Fade("ev2", 0, 1000, null, false);

	Rotate("ev2", 250, @0, 180, 0, Axl1,false);
	Fade("ev3", 250, 0, null, true);

	MusicStart("SE03c",0,1000,0,1200,null,false);
	Shake("ev2", 300, 0, 20, 0, 0, 1000, null, false);

	Wait(400);


	MusicStart("SE01d",0,700,0,1150,null,false);
	Shake("ev2", 500, 0, 20, 0, 0, 1000, null, false);

	MoveFTP1stop();


	Move("ev3", 0, 0, 0, null, true);
	Zoom("ev3", 0, 1400, 1400, null, true);
	Rotate("ev3", 0, @0, 0, 0, null,true);
	Rotate("mv2", 0, @0, 0, 0, null,true);

	MusicStart("SE02d",0,700,0,1150,null,false);
	Rotate("ev2", 300, @0, 180, 30, Axl1,false);
	Move("ev2", 300, @1000, @0, Axl2, false);

	Wait(150);

	Fade("mv2", 100, 200, null, false);
	Fade("mv1", 100, 0, null, false);
	Move("ev3", 200, 0, -50, Dxl1, false);
	Fade("ev3", 100, 1000, null, true);

	Wait(150);

	MusicStart("SE10",0,700,0,1300,null,false);
	MusicStart("SE11",0,700,0,1100,null,false);
	MusicStart("SE12",500,300,0,800,null,true);


	MoveFTP3("@絵ＥＶ",2000,8,8);
	Move("ev3", 300, 0, 50, Axl1, false);
	Fade("mv*", 300, 0, null, false);
	Fade("絵ＥＶ", 300, 1000, null, true);
//	MoveFTP2stop();
	Delete("ev*");
	Delete("mv*");

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
As I have my doubts about Mink's rather crazy style of 
driving&, the weight of at least two people presses on me 
as we ride up the stairs&.

The sound of his accelerator and brakes mix together&, 
further jumbled with the sound of people yelling and 
gun shots firing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
//	OnBG(10,"bg304032_5_東江タワー廊下02");
	MoveFTP3stop();
	Delete("絵ＥＶ");
//	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
Within the torrents of noise&, I tightly grip onto Mink's 
back&, praying to not fall off&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/8000090a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);
	CreateSE("SE01","se乗物_改造バイク_スピン01");
	CreateSE("SE02","se乗物_改造バイク_エンジンふかす02");

	PrintGO("上背景", 5000);
//あきゅん「↓：東江フロア前に研究フロア出すのは興が下がるので荘厳な方を使用しています」
	OnBG(10,"bg304031_5_東江タワー廊下01");
	FadeBG(0,true);
	CreateTextureEX("絵背景", 100, 0, Middle, "cg/bg/l/bg304031_5_東江タワー廊下01_l.jpg");
	Fade("絵背景", 0, 1000, null, true);

	MusicStart("SE02",0,700,0,800,null,false);
	Wait(1000);

	Move("絵背景", 1500, -500, @0, Dxl1, false);

	DrawDelete("上背景", 300, 100, null, "slide_01_03_0", true);

	Wait(500);
	Shake("絵背景", 1000, 0, 10, 0, 0, 1000, null, false);
	MusicStart("SE01",0,700,0,900,null,false);
	Wait(1000);
	FadeDelete("絵背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
With the intense motion repeating over and over&, the bike 
finally makes it up the stairs and glides down the hallway&.

It's finally over&.&.&.

Just a little relieved&, my body loses some strength&.

I wonder how far we went up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/8000100a01">
"What floor are we on?"

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/8000110a05">
"The top floor&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/8000120a01">
"Which means&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Toue is here?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se乗物_改造バイク_エンジン停止01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);
	OnBG(10,"bg304112_5_東江タワー中ホール扉前");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Mink drives a little ways down the corridor and stops at a gigantic double door&.

//※ＳＥ：エンジンを切る
{
	CreateSE("SE02","se物体_ドア_鍵回す01");
	CreateSE("SE03","se人体_足音_一歩03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE03",0,700,0,1000,null,false);
}
He gets off the bike and I jump right off of the seat with him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3490.nss"]

}
