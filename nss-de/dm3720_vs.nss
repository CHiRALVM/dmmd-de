//<continuation number="260">
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


scene dm3720_vs.nss_MAIN
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
	$GameName = "dm3730_vs.nss";

}


scene dm3720_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 600, Center, Middle, "cg/bg/bg304061_5_東江タワー階段.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetShade("絵背景", MEDIUM);
	Fade("絵背景", 0, 1000, null, true);

	HyperAkSet(750);

	St("C",740, @0,@0,"fu悪島_戦闘ハイパー_laugh");
	FadeSt("C",0,true);

	Wait(100);

	Delete("上背景");
	DrawDelete("絵色黒", 200, 100, null, "slide_01_01_1", true);

	SoundPlay("@dm008",0,450,true);

//※場面切替／蒼葉視点

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000010b08">
"Hahahahahahaha!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島１", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵悪島１",Smoothing);
	Zoom("絵悪島１", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);
	HyperAkDelete();

	FadeFR2("絵悪島１",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島４", 1100, Center, -50, "cg/ef/efx04ビーム_メガ砲H02_s.jpg");
	Request("絵悪島４",Smoothing);
	Rotate("絵悪島４", 0, 0, 0, 90, null,true);
	Zoom("絵悪島４", 0, 2000, 2000, null, true);

	FadeFR2("絵悪島４",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島２", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵悪島２",Smoothing);
	Rotate("絵悪島２", 0, 0, 180, @0, null,true);
	Zoom("絵悪島２", 0, 1500, 1500, null, true);

	FadeFR2("絵悪島２",0,1000,100,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島３", 1100, Center, -104, "cg/ef/efx04ビーム_メガ砲H02_s.jpg");
	Request("絵悪島３",Smoothing);
//	Rotate("絵悪島３", 0, 0, 180, @0, null,true);
	Zoom("絵悪島３", 0, 2000, 2000, null, true);

	Zoom("絵悪島３", 150, 1500, 1500, null, false);
	FadeFR2("絵悪島３",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島５", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵悪島５",Smoothing);
	Zoom("絵悪島５", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);

	FadeFR2("絵悪島５",0,1000,150,0,0,100,null, true);

	Wait(50);

	CreateSE("SE02","se戦闘_衝撃_破損01a");//あきゅん「ＳＥ：se戦闘_衝撃_破損01a」
	MusicStart("SE02",0,700,0,1000,null,false);
//色味調整予定
	CreateColorSPadd("絵フラッシュ白", 5000, FFFFFF);
	Delete("絵悪島*");
	Delete("絵背景");


	CreateTextureSP("絵演壁際背景", 15, -740, -120, "cg/bg/bg304061_5_東江タワー階段.jpg");
	Zoom("絵演壁際背景", 0, 1500, 1500, null, true);

	CreateColorSP("絵演色黒", 20, "000000");
	DrawTransition("絵演色黒", 1, 0, 500, 10, null, "cg/data/slide_01_00_1.png", true);

	Wait(30);
	FadeDelete("絵フラッシュ白", 1000, null, true);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/2000020e45">
"Uwah! Fuck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The beam bounces along the walls&. 

Akushima carefully watches his movements&, and I keep asking
myself what to do next&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/2000030e46">
"Shit&, we need to get down fast or else we're screwed!"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/2000040e45">
"The plan will be ruined&.&.&. We absolutely need to do this
 for Mink-san&.&.&. Uwah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：熱ビーム音
	CreateSE("SE01","se戦闘_メガ砲_発射01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I guess from their conversation that Mink gave them some 
sort of instruction&.

I need to stop Akushima from moving somehow&.&.&.

There must be a timeframe where Akushima reloads and 
restarts his offensive again&.

We need to destroy him within that time&.

&.&.&.With Scrap&.

I don't know what will happen to me if I keep using Scrap 
with this headache&.

But I can't think of any other way&.
And I don't have the time either&.

It doesn't guarantee success&, but&.&.&.

I have to do it&, sink or swim&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵演背景二", 9995, Center, Middle, "cg/bg/bg304062_5_東江タワー階段別アングル.jpg");
	Move("絵演背景二", 0, @0, @60, null, true);
	Request("絵演背景二", Smoothing);
	Zoom("絵演背景二", 0, 1200, 1200, null, true);
	Move("絵演背景二", 700, @0, @-60, Dxl2, false);
	Fade("絵演背景二", 700, 1000, null, true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/2000050a01">
"I'll go and stop Akushima&. So you guys go and head down!"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/2000060e46">
"Huh? What're you saying!? How are you going to stop him!?"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/2000070e45">
"And where is Mink-san!?"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/2000080a01">
"He told me to come down here with you guys!"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/2000090e45">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmミンクチームB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/2000100e46">
"Are you sure he said that!?"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/2000110e45">
"No&.&.&. Mink-san would never say something like that without
 thinking first&."

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/2000120e46">
"&.&.&."

//あきゅん「↓：ハイパー抜けていたので追記しました10/30」
{	Fw("fw悪島_戦闘ハイパー_normal");}
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000130b08">
"ORAORAORAAAAA! HELL YEAH!!! YOU'RE NEXTTTTT!!!"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/2000140a01">
"Leave this place to me&. You guys&, hurry downstairs!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmミンクチームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/2000150e45">
"&.&.&.Got it&. You better hurry down when you're done&, too&."

{	Fw("fwmミンクチームB_通常_normal");}

//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/2000160e46">
"Shit! You better get your ass down there!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
All of the members nod&, and I yell at Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_エンジンふかす02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 10000);
	Delete("絵演背景二");
	Delete("絵演壁際背景");
	Delete("絵演色黒");
	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/2000170a01">
"Hey! Over here!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


{	St("C",740, @0,@0,"st悪島_通常ハイパー_laugh");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000180b08">
"Hehehe&, have a nice&, warm WELLLCOOOOOOOOME!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_メガ砲_構える01");//あきゅん「ＳＥ：se戦闘_メガ砲_構える01」
	MusicStart("SE01",0,700,0,1000,null,false);
{	St("C",740, @0,@0,"st悪島_戦闘ハイパー_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Akushima turns my way&, happily holding up his megaphone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Mink definitely said it&.
That he's a persistent little bitch&.

He's completely filled with "stubbornness"&.

So I&.&.&. will destroy that&.

{//あきゅん「ＳＥ：se乗物_改造バイク_エンジンふかす01」
	CreateSE("SE01","se乗物_改造バイク_エンジンふかす01");
	MusicStart("SE01",0,700,0,1000,null,false);}
The bike loudly bellows as if it knows what I'm thinking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/2000190a01">
"&.&.&.Let's go&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/2000200b12">
"Roger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_スピン01");//あきゅん「ＳＥ：se乗物_改造バイク_スピン01」
	CreateSE("SE02","se乗物_改造バイク_急加速01");//あきゅん「ＳＥ：se乗物_改造バイク_急加速01」

	CreateTextureSP("絵ズーム1", 2000, -512, -288, "cg/bg/l/bg304061_5_東江タワー階段_l.jpg");
	CreateTextureSP("絵ズームst01", 2001, Center, -312, "cg/st/l/st悪島_戦闘ハイパー_normal_l.png");
	CreateTextureEX("絵ズームst02", 2001, Center, -105, "cg/st/l/st悪島_戦闘ハイパー_shock_l.png");
	Request("絵ズームst01",Smoothing);
	Zoom("絵ズーム1", 0, 500, 500, null, true);
	Zoom("絵ズームst01", 0, 500, 500, null, true);
	CreateMovie("ムービー１", 2002, Center, Middle, true, true, "dx/mv0003集中線01_白.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("ムービー１", 0, 1000, null, false);
	Zoom("絵ズーム1", 275, 1000, 1000, Dxl1, false);
	Zoom("絵ズームst01", 275, 1000, 1000, Dxl1, false);
	Move("絵ズーム1", 300, @0, -74, null, false);
	Move("絵ズームst01", 300, @0, -105, null, true);
	Fade("ムービー１", 100, 0, null, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
We race straight towards Akushima&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵ズームst02", 100, 1000, null, true);
	Fade("絵ズームst01", 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000210b08">
"Hah!? Hah!? Wh-Whaaa!?!?!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE01", 250, 0, null);
	SetVolumeEX("SE02", 250, 0, null);

//あきゅん「ＳＥ：se戦闘_動作_跳躍高01」
	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I nearly crash into the struggling Akushima&, but jump off 
the bike just in time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ずだん！と蒼葉が悪島を床に押さえつける
	CreateSE("SE01","se人体_衝撃_転倒01");

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Delete("絵ズーム*");

	CreatePlainSP("絵板写衝撃", 20);
	Move("絵板写衝撃", 0, 220, -285, null, true);
	Request("絵板写衝撃", Smoothing);
	Zoom("絵板写衝撃", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 100, null, true);

	CreateSE("SE02","se人体_足音_一歩02");
	MusicStart("SE02",0,700,0,1000,null,false);

{	Fw("fw悪島_通常ハイパーメガホンなし_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000220b08">
"Oh!?!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
I topple the flustered Akushima over and pin him to the 
ground&, my eyes stuck on his&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSEEF("SEL01","se人体_心臓_鼓動01L");
	SetFrequency("@SEL01*", 0, 800, null);
	MusicStartEF("SEL01",6000,500,0,800,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
I focus as hard as I can&.

I won't&.&.&.<?>
{	Wait(300);}
Fail&.<k>
It will go perfectly&. Perfectly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//SetVolumeEX("@dm*", 0, 350, null);
	SetVolumeEX("@dm008", 0, 350, null);
	SetVolumeEX("SEL01*", 1000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
For the team members that put their trust in me&.
For the Ren I promised to fix&.

And&.&.&.
{
	SetVolumeEX("@dm008", 0, 250, null);
	//SetVolumeEX("@dm*", 0, 250, null);
	SetVolumeEX("SEL01*", 1000, 900, null);
}
For Mink&, who's reaching for his goal right now&.

It's not anyone's order&.
No one asked me to do this&.

On my own account&.&.&.

&.&.&.I'll use my power&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateColorSPadd("絵色赤", 4000, FFFF99);
	Wait(300);
	FadeDelete("絵色赤", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
Akushima points his weapon at me&.
The mouth of the megaphone starts to light up&.

Right now&, there's nothing that could break my 
concentration&.

{
	SetVolumeEX("@dm008", 0, 150, null);
	//SetVolumeEX("@dm*", 0, 150, null);
	SetVolumeEX("SEL01*", 1000, 1100, null);
}
Just a little more&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw悪島_戦闘ハイパー_laugh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000230b08">
"Ahahahahaha&, you thought that'd work!? How disappointing!
 This is goodbyyyeeeeee!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);
	SetVolumeEX("SE*", 500, 0, null);
	SetVolumeEF("@SEL01",500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
&.&.&.&.&.Now!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：蒼葉の力発動汎用」
	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreateSE("SE01","se擬音_効果_力クリア01");
	MusicStart("SE01",0,500,0,1500,null,false);
	SetVolumeEX("SE01", 2000, 1200, null);
	SetFrequency("SE01", 2000, 1470, null);
	Fade("絵色白", 2000, 500, Axl2, true);
	SetVolumeEX("SE01", 600, 0, null);
	Wait(100);
	FadeDelete("絵色白", 1000, null, true);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/2000240a01">
"&.&.&.Don't move&."

{	FwPro("fw悪島_戦闘ハイパー_laugh",3600,"fw悪島_戦闘ハイパー_shock");}
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000250b08">
"Ahaahahahahahahaha&.&.&. Ah?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉が悪島の頭の中へ入っていく
	CreateSE("SE01","se人体_心臓_鼓動01");
	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵板写2", 5000);
	Request("絵板写", Smoothing);
	SetBlur("絵板写", true, 2, 500, 1000, false);

	Zoom("絵板写", 30000, 1500, 1500, null, false);

	Zoom("絵板写2", 500, 1100, 1100, Dxl1, false);
	FadeDelete("絵板写2", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/2000260b08">
"Ahhhhhhhhhhhhhhhh!?!?!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：精神世界へ」

	CreateSE("SESCRAPIN11","se擬音_ライム_導入エンカウント01");
	CreateSE("SESCRAPIN12","se擬音_回想_フラッシュバック01");

	CreateColorEX("絵暴露入色黒", 9920, "000000");
	CreateColorEXadd("絵暴露入色白", 9910, "FFFFFF");
	CreatePlainSP("絵暴露入板写", 9909);

	CreateEffectSP("絵暴露入効果一", 9900, 0, 0, 1024, 576, "Plain");
	CreateEffectSP("絵暴露入効果二", 9900, 0, 0, 1024, 576, "Plain");
	CreateEffectSP("絵暴露入効果三", 9900, 0, 0, 1024, 576, "Plain");

	SetVertex("絵暴露入効果一", center, 144);
	SetVertex("絵暴露入効果二", center, 144);
	SetVertex("絵暴露入効果三", center, 144);

	MusicStart("SESCRAPIN11",0,700,0,800,null,false);
	MusicStart("SESCRAPIN12",0,700,0,800,null,false);

	Fade("絵暴露入色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵暴露入色白", 1000, 0, null, true);

	SetBlur("絵暴露入効果一", true, 4, 500, 300, false);
	SetBlur("絵暴露入効果二", true, 4, 500, 300, false);
	SetBlur("絵暴露入効果三", true, 4, 500, 300, false);

	Fade("絵暴露入板写", 2000, 0, null, false);
	Zoom("絵暴露入効果一", 4000, 1100, 1100, Axl2, false);
	Zoom("絵暴露入効果一", 4000, 1400, 1400, Axl2, false);
	Zoom("絵暴露入効果一", 4000, 1700, 1700, Axl2, false);
	Fade("絵暴露入色黒", 4000, 1000, Axl3, true);

	SetVolumeEX("SCRAPINSE01", 3000, 0, null);
	Wait(2000);

	DeleteAllSt(0,true);
	Delete("絵暴露入効果*");
	Delete("絵暴露入板写");
	//Delete("絵暴露入色白");
	//FadeDelete("絵暴露入色黒", 2000, null, true);
	//Fade("絵暴露入色黒", 2000, 0, null, true);

/*
	CreateSE("SE01","se擬音_精神_導入01");//あきゅん「ＳＥ：se擬音_精神_導入01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 2000, 1000, null, true);
	Wait(1000);
*/

	SetVolumeEX("SCRAPINSE*", 2000, 0, null);
	ClearFadeAll(2000, true);
	Request("@SEL01*",UnLock);Delete("@SEL01*");
	Wait(0);

//※次ファイル["dm3730_vs.nss"]

}
