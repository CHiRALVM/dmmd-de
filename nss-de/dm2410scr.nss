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


scene dm2410scr.nss_MAIN
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
	#イベントファイル名=true;

	#bg203011_0_暴露ノイズ=true;
	#bg203011_0_暴露ノイズ穴=true;

	//▼演出定義削除
	Shake_LoopFreeDelete();
	Proc_dm2410scr_01Delete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2420scr.nss";

}


scene dm2410scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "000000");

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵背景奥", 500, Center, Middle, "cg/bg/bg203011_0_暴露ノイズ奥.png");
	CreateTextureEXadd("Ｃ/絵背景奥効果", 500, Center, Middle, "cg/bg/bg203011_0_暴露ノイズ奥.png");
	Fade("Ｃ/絵背景奥効果", 0, 250, null, true);
	CreateTextureSP("Ｃ/絵背景手前扉", 500, 671, 150, "cg/bg/bg203011_0_暴露ノイズ扉.png");
	CreateTextureSP("Ｃ/絵背景手前", 500, Center, Middle, "cg/bg/bg203011_0_暴露ノイズ手前.png");

	CreateColorEXadd("Ｃ/絵色光源", 500, "FFFFFF");
	DrawTransition("Ｃ/絵色光源", 1, 0, 100, 500, null, "cg/data/circle_08_00_0.png", true);

	MoveCamera("Ｃ", 0, @0, @0, 500, null, true);

	Lens_Set("レンズ１",4500,-288,-512,1600,1600);
	Fade("レンズ１", 0, 0, null, true);

	FadeDelete("上背景", 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒", 60000, 850, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
It's pitch black&.

I can't see anything&.
I can't hear anything&.

I can't tell if there's anything on any side of me&.

This&.&.&.
Is this the inside of Noiz's head?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵色黒", 5000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I stood there still for a while as my eyes adjusted to the dark&. I'm still able to make out some shapes&.

But all I could see was the outline of the floor&, the 
walls&, and the ceiling&. Nothing else but those&.

This is a room without anything in it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵色黒", 6000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
Where is Noiz?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("Ｃ/絵背景手前扉", 10000, @512, @0, null, false);
	Fade("Ｃ/絵色光源", 10000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
Suddenly&, a rectangular hole widens on the wall to my 
right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_引きずる01");
	MusicStart("SE01",4000,200,0,600,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020c]
A white light fills the dark room and I see the figure of 
a human&.

The grey shape slugglishly walks into the room&, hunched 
over&, a white mask concealing its face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_引きずる01");
	MusicStart("SE02",4000,150,-150,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
And groups of more figures with the exact same look were 
coming in&.

They were a ghastly sight&, as if they were people who had 
sucked the life and color from the earth only to let it 
rot inside of them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE03","se人体_動作_引きずる01");
	MusicStart("SE03",4000,150,150,450,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
The masked people gather in the center of the room&, making a circle&.

In the center of the darkness&, a crying mask comes to the  surface and starts to spin around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("Ｃ/絵背景手前扉", 0, @512, @0, null, false);
	Fade("Ｃ/絵色光源", 0, 500, null, false);

	CreateSE("SE11","se擬音_効果_ノイズ01L");
	MusicStart("SE11",0,1200,0,1000,null,true);
	CreateTextureEXsub("絵演砂嵐", 2990, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演砂嵐", 0, 1100, 1100, null, true);
	FadeFFR2("絵演砂嵐", 0,1000, 10, 0, 0, 50,null, true);
	Fade("絵演砂嵐", 0, 0, null, true);
	SetVolumeEX("SE11", 100, 10, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
My eyes glued to the bizarre display&, I notice something 
in the center of the circle&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 2000, "000000");
	CreateStencil("絵演縁",0,-475,-24,128,"cg/ev/x/ev241うずくまるノイズ_xl_人物のみ.png",false);
	SetAlias("絵演縁","絵演縁");
	CreateTextureEX("絵演縁/絵背景", 2110, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEXsub("絵演縁/絵演本体", 2120, -475,-24, "cg/ev/x/ev241うずくまるノイズ_xl_人物のみ.png");

	Request("絵演砂嵐", NormalRender);

	SetVolumeEX("SE11", 0, 1200, null);
	FadeFFR2("絵演砂嵐", 0,1000, 10, 0, 0, 50,null, true);
	Fade("絵色黒", 0, 1000, null, true);
	Fade("絵演砂嵐", 0, 0, null, true);
	SetVolumeEX("SE11", 100, 10, null);

	Wait(100);

	SetVolumeEX("SE11", 0, 1200, null);
	FadeFFR2("絵演砂嵐", 0,1000, 10, 0, 0, 50,null, true);
	Zoom("絵演縁/絵背景", 0, 1100, 1100, null, true);

	Shake_LoopFree("@絵演縁/絵背景",30,20,20,30,1000);
	Fade("絵演縁/絵背景", 0, 1000, null, false);

	Fade("絵演砂嵐", 0, 0, null, true);
	SetVolumeEX("SE11", 100, 10, null);
	Wait(100);
	SetVolumeEX("SE11", 5000, 200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
A seemingly out of place monitor sits there&, and on it is  something like a sandstorm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵演縁", 4000, -1024, -160, DxlAuto, false);
	Move("絵演縁/絵演本体", 4000, -1024, -160, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
In it&.&.&. it looks like someone is cowering on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵演縁/絵演本体", 0, 500, null, true);
	Wait(30);
	Fade("絵演縁/絵演本体", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
That's&.&.&.

Noiz?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵演縁", 0, -1024, -160, DxlAuto, true);
	Move("絵演縁/絵演本体", 0, -1024, -160, DxlAuto, true);
	Fade("絵演縁/絵演本体", 2000, 1000, null, true);

	Position("@絵演縁/絵演本体", $x1, $y1);
	CreateTextureEXmul("絵演縁/絵演本体色", 2110, $x1, $y1, "cg/ev/x/ev241うずくまるノイズ_xl_人物のみ.png");

	SetVolumeEX("SE11", 3000, 0, null);
	Fade("絵演縁/絵背景", 2000, 700, null, false);
	Fade("絵演縁/絵演本体色", 2000, 1000, null, false);
	Fade("絵演縁/絵演本体", 2000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033a]
&.&.&.It's Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Proc_dm2410scr_03("処理明滅","@絵演縁/絵演本体色");

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/1000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
It looks like he's sleeping with his eyes closed&.

&.&.&.Noiz&.

I try to call him&, but my voice won't come out&.
All that'll come out of my mouth is air&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Request("処理明滅", Stop);
	Delete("処理明滅");
	Delete("@絵演縁");
	Delete("絵色黒");
	FadeDelete("絵板写", 1000, null, true);

	Request("SE01", Pause);
	Request("SE02", Pause);
	Request("SE03", Pause);

	SetFrequency("SE01", 0, 1000, Dxl3);
	SetFrequency("SE02", 0, 1000, Dxl3);
	SetFrequency("SE03", 0, 1000, Dxl3);

	SetVolumeEX("SE*", 1000, 200, null);
	Request("SE01", Resume);
	Request("SE02", Resume);
	Request("SE03", Resume);

	SoundPlay("@dm017",0,450,true);//暴露

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
At that moment&, the orderly masks started to move around 
strangely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 300, null);
	SetFrequency("SE01", 0, 1500, Dxl3);
	SetFrequency("SE02", 0, 1500, Dxl3);
	SetFrequency("SE03", 0, 1500, Dxl3);

	CreateSE("SE01","se人体_衝撃_骨軋む02");
	MusicStart("SE01",0,1200,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
The sound of cracking bones caused them all to scatter 
about&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 400, null);
	SetFrequency("SE01", 0, 2000, Dxl3);
	SetFrequency("SE02", 0, 2000, Dxl3);
	SetFrequency("SE03", 0, 2000, Dxl3);

	CreateSE("SE01","se人体_衝撃_骨軋む01");
	MusicStart("SE01",0,1200,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
The awful sounds piled over&, and then music came flowing 
in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SEL21","se擬音_効果_おどろおどろ01");
	MusicStart("SEL21",3000,400,0,2000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
The rhythm distorted and turned into a faint sound of an 
old record&.

What was happening now was stirring up even more uneasinessthan I had before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：フフ、クスクスクス、フフフッとしのび笑う女と男の声（ノイズの両親）

	CreateSoundAkk("母","voice/dm24/1000030e04");
	SoundEffect("母","Echo",100,50,300,300);
	MusicStart("母",0,1500,-150,1000,null,false);

	CreateSoundAkk("父","voice/dm24/1000050e05");
	SoundEffect("父","Echo",100,50,300,300);
	MusicStart("父",0,1500,150,1000,null,false);

	WaitKey(500);

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/1000020a01">
"&.&.&.?"{	Wait(6000);}
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("母", 300, 0, null);
	SetVolumeEX("父", 300, 0, null);

//あきゅん「※：音声のみの演出にしました」
	Proc_dm2410scr_01();

//
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【母】
//<voice name="母" class="母" src="voice/dm24/1000031e04">
//<voice name="母" class="母" src="voice/dm24/1000040e04">
"Honesly&, why did he do that&.&.&.? <k>I wonder if it would
 just be better to have him not go outside&."

//【父】
//<voice name="父" class="父" src="voice/dm24/1000051e05">
//<voice name="父" class="父" src="voice/dm24/1000060e05">
"The shame he's brought onto us will always linger&.<k>
 If he hadn't been brought to this world&, I would've
 considered it a blessing&." 

//【母】
//<voice name="母" class="母" src="voice/dm24/1000070e04">
"Dear&, you've gone too far&.&.&."

//【父】
//<voice name="父" class="父" src="voice/dm24/1000080e05">
"You don't have any intention of letting him out either&,
 do you?"

//【母】
//<voice name="母" class="母" src="voice/dm24/1000090e04">
"&.&.&.That is true&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//

	CreateTextureEX("絵白黒手甲", 2100, Center, Middle, "cg/ef/efモノトーン人間の妨害.png");

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/1000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵白黒手乙", 2100, Center, Middle, "cg/ef/efモノトーン人間の妨害a.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
&.&.&.This conversation&.

This is inside Noiz's mind&.
Everything inside of him is manifesting&.

So this is a conversation Noiz has heard before&.

And the two talking are probably his parents&.

&.&.&.How awful&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵白黒手丙", 2100, Center, Middle, "cg/ef/efモノトーン人間の妨害b.png");

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/1000110a01">
"&.&.&.Noiz!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Proc_dm2410scr_01Delete();

	CreateSE("SE51","se戦闘_動作_走る01");
	MusicStart("SE51",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I push my way through the jumble of masked people and make my way to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：モノトーン人間の妨害、仮入れ」
/*
	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演白黒手甲", 1100, Center, Middle, "cg/ef/efモノトーン人間の妨害.png");
	FadeDelete("絵板写", 1000, null, true);
*/

	CreateColorSP("絵色白", 5000, "FFFFFF");
	Wait(30);

	//Lens_Set("レンズ１",4500,-288,-512,1600,1600);
	Fade("レンズ１", 0, 1000, null, true);
	Lens_Start(4000);

	//CreateTextureSP("絵演出背景", 100, Center, Middle, "cg/bg/bg203011_0_暴露ノイズ穴.jpg");
	//Zoom("絵演出背景", 0, 1200, 1200, null, true);

//あきゅん「※：一括で定義すると重いので分割します↑↑↑」
	//CreateTextureEX("絵白黒手甲", 2100, Center, Middle, "cg/ef/efモノトーン人間の妨害.png");
	//CreateTextureEX("絵白黒手乙", 2100, Center, Middle, "cg/ef/efモノトーン人間の妨害a.png");
	//CreateTextureEX("絵白黒手丙", 2100, Center, Middle, "cg/ef/efモノトーン人間の妨害b.png");


	Move("絵白黒手乙", 0, @0, @50, null, true);
	Move("絵白黒手丙", 0, @0, @-30, null, true);
	Zoom("@絵白黒手*", 0, 1250, 1250, null, true);
	CreateSE("MONOSE01","se人体_衝撃_骨軋む02");
	MusicStartSet("MONOSE01",700,0,1000,null,false);

	//CreateSurfaceEX("絵効果サフ", 110,1000,"@絵演出背景");
	//MoveFFP1("@絵効果サフ",50000);
	//Fade("絵効果サフ", 0, 1000, null, true);

	$ループムーブナット名 = "@絵白黒手甲";
	$ループムーブタイム = 400000;
	CreateProcessEX("プロセスショクシュ", "FlyMovingXXX");
	Request("プロセスショクシュ", Start);

	$ループムーブナット名２ = "@絵白黒手乙";
	$ループムーブタイム２ = 500000;
	CreateProcessEX("プロセスショクシュニ", "FlyMovingXXX2");
	Request("プロセスショクシュニ", Start);

	$ループムーブナット名３ = "@絵白黒手丙";
	$ループムーブタイム３ = 600000;
	CreateProcessEX("プロセスショクシュサン", "FlyMovingXXX3");
	Request("プロセスショクシュサン", Start);

	CreateProcessEX("プロセスショクシュヨン", "Proc_dm2410scr_02Act");
	Request("プロセスショクシュヨン", Start);

	FadeDelete("絵色白", 70, null, true);
	CreateSE("SE51","se戦闘_動作_走る01a");
	MusicStart("SE51",0,1000,0,1000,null,false);
	Shake("レンズ１", 200, 0, 6, 0, 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072a]
But the masked figures started to change when I tried to 
get closer to him; they all began to sway around and 
blocked me off from Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_紙_丸める01");
	MusicStartSet("SE01",1000,0,1500,null,false);
	CreateColorEX("絵色白", 4000, "FFFFFF");

	CreateProcessEX("プロセス", "Proc_dm2410scr_04Act");
	Request("プロセス", Start);

	FwPro("fw蒼葉_通常_shout", 1300, "fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/1000120a01">
"Move! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
A disgusting feeling goes through my fingers when I try to 
push them out of my way&. I pull my hand back in surprise&.

The masked people start to sneer and shake with noise&.

I check my hand&, but nothing's wrong with it&.

Was I just imagining my hand distorting when I touched 
them?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_紙_丸める01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Thinking that&, I try my way through the crowd again&.

&.&.&.My fingers warp again&.<k>
What the hell?

When I try to get to Noiz&, my fingers start to warp&. The 
masks sneer at me&.

&.&.&.Are they testing me?

So I can't get to Noiz unless I get over this disgusting 
situation?

This is different from reality&, so it's not as if it's 
actually disfiguring my body&.

This is only in the mind&, but I still need the courage&.

&.&.&.But either way&, I need to get to him&.

I was scared still&, but I tried to push through the masks  again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_紙_丸める01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE02","se人体_動作_絞める01");
	MusicStart("SE02",0,1500,0,1000,null,false);
	CreateSE("SE03","se人体_衝撃_骨軋む02");
	MusicStart("SE03",0,1500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
An unnatural&, raw feeling spreads from my fingertips to my bones&.

&.&.&.This isn't reality&.<k>
This isn't real&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：モノトーン人間の妨害、消え時」
	CreateSE("SE01","se戦闘_動作_走る01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵白黒手*");
	Delete("レンズ１");
	MoveCamera("Ｃ", 300, @0, @0, 600, Dxl1, false);
	FadeDelete("絵色白", 70, null, true);

	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I pushed aside the dancing masked figures&, praying silentlyto myself&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 150, 0, null);
	SetVolumeEX("@MONOSE01", 150, 0, null);
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("@MONOSE01");
	SetVolumeEX("@dm*", 150, 0, null);

	CreateSE("SE01","se人体_衝撃_転倒03複数");
	MusicStart("SE01",0,1000,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
They fell without resistance as I pushed them aside&, and 
laid there like dead fish on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 4990);

	CreateTextureEX("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev241うずくまるノイズ.jpg");
	Fade("絵ＥＶ", 2000, 1000, null, false);
	DrawTransition("絵ＥＶ", 2000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
When I get through all of them&, the monitor-like thing 
binds to Noiz&.

And suddenly&, every sound goes dead&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2420scr.nss"]

}

