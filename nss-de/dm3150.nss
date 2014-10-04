//<continuation number="290">
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


scene dm3150.nss_MAIN
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
	#ev315蒼葉発情状態=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3160h.nss";

}


scene dm3150.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/l/bg303021_5_娯楽施設クラブフロア_l.jpg");
	//Fade("絵背景", 0, 1000, null, true);


//ライト準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "FF88CC");
	CreateColorEXadd("絵色ライト3", 1109, "CC2266");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトナット透明度 = 500;
	$ライトタイム = 500;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("プロセスライト１","プロセスライト１");


	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("プロセス洗脳レーザー",150,true,false,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg);

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	Request("絵Suf", Smoothing);
	Zoom("絵Suf", 0, 3000, 3000, null, true);
	Rotate("絵Suf", 0, @0, @0, 70, null,true);
	Move("絵Suf", 0, 100, @0, null, true);

	SetSurface("プロセス洗脳*","絵Suf");
	Request("@プロセス洗脳*", Smoothing);

	//SetBlur("絵Suf", true, 3, 200, 230, false);

	GoLoopFade("@プロセス洗脳光",300);
	GoLoopFade2("@プロセス洗脳レーザー",220);
	Request("@プロセスライト１", Start);

	Lens_Set("レンズ１",5000,-300,-300,1600,1600);
	Lens_Start(3500);
	//MoveFFP1("@絵Suf",20000);

	Delete("上背景");


	CreateSE("SE55","se人体_心臓_鼓動01L");
	MusicStart("SE55",5000,500,0,700,null,true);


	DrawTransition("絵色黒", 2000, 1000, 400, 300, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	Zoom("絵Suf", 2000, 2100, 2100, AxlDxl, false);
	DrawTransition("絵色黒", 2000, 400, 0, 300, AxlDxl, "cg/data/slide_05_00_0.png", false);
	Fade("絵色黒", 2000, 0, null, true);
	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.

&.&.&.
&.&.&.&.&.

&.&.&.&.&.&.&.Huh?

I see a bunch of feet in front of me&.
All noisy and restlessly moving around the dim room&.

I&.&.&.

Did I collapse?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//※加工：悪酔い
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/5000010a06">
"Aoba&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Ren's voice slips into my ears along with the sound of the pounding music&.

As if it's coming closer&, the music turns into a single 
rhythm&.

With my face on the floor&, the low bass directly shakes 
me&. The vibration jolts my brain&.

The high pitched electronic sounds sound like the shriek 
of a drill drilling into my head&.

The bass and my heartbeat pile up&, crushing my heart to 
bits&.

Red and pink lights flash onto the floor&.
It might be the music&, but I can hear heavy breathing&.

Red lights&.
Pink lights&.

A lovely voice&. The low bass&.
The piercing shrieks&.

Repeating over and over&.&.&.

The sight of blood soaks my vision&, with my brain feeling 
as if it's been blown out&.

Over and over&.&.&.

Inside of me&.&.&.

My insides&.&.&.

Penetrating&.&.&.

&.&.&.Me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：ここで少し間を開ける（蒼葉が光麻薬に悪酔いした）

	CreateColorEX("絵色黒", 15000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Zoom("絵Suf", 0, 1100, 1100, null, true);
	Rotate("絵Suf", 0, @0, @0, 0, null,true);
	Move("絵Suf", 0, 0, 0, null, true);

	Request("@プロセスライト１", Stop);
	Delete("@プロセスライト１");
	Delete("レンズ*");
	Delete("絵Suf*");
	Delete("絵背景");
	Delete("絵色ライト*");
	DeleteLoopFade("プロセス洗脳光");
	DeleteLoopFade2("プロセス洗脳レーザー");
	//DrawEffect("絵Suf", 0, "Ripple", 100, 100, null);
	Wait(1000);

	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

//ライト準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "448800");
	CreateColorEXadd("絵色ライト3", 1109, "005588");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトナット透明度 = 500;
	$ライトタイム = 500;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("プロセスライト１","プロセスライト１");


	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("プロセス洗脳レーザー",150,true,false,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg);

	CreateTextureEX("点滅", 700, 0, 0, "cg/bg/bg303022_5_娯楽施設クラブフロア.jpg");
	Fade("プロセス洗脳点滅", 0, 1000, null, true);

	CreateTextureSP("プロセス洗脳絵背景", 100, Center, Middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");

	CreateBlink("点滅");

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("プロセス洗脳*","絵Suf");
	Request("絵Suf", Smoothing);
	Request("点滅", Smoothing);

	GoLoopFade("@プロセス洗脳光",100);
	GoLoopFade2("@プロセス洗脳レーザー",71);
	Request("@プロセスライト１", Start);

	SoundPlay("@dm022",3000,450,true);

//	SetVolumeEX("@dm*", 3000, 450, null);
	SetVolumeEX("@SE55", 3000, 0, null);


	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000020a05">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(200);
	CreateSE("SE01","se人体_動作_叩く02");
	MusicStart("SE01",0,1000,0,1400,null,false);

	Wait(200);

	CreateSE("SE01","se人体_動作_叩く02");
	MusicStart("SE01",0,1000,0,1400,null,false);

	Wait(500);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",0,true);



	FadeDelete("絵色黒", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Something hits my face and I open my eyes&.

I see Mink&, his face covered in wild shades of pink and 
red by the light&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//頭痛エフェクト(0)

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.My head hurts&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
{	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000030a05">
"Get up&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Mink pulls me up by the arm and stands me up&.

But my feet won't carry me&.
It's like I've become a flimsy sponge&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
{	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000040a05">
"Tch&. What're you doing&, get up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I hear him click his tongue as he puts his large arm 
around my back&. He pulls me up by my shoulders&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000050a01">
"&.&.&.My medicine&."

{	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000060a05">
"Ah?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000070a01">
"I just&.&.&. took my meds&.&.&. but it's not working&.&.&.
 my head&.&.&."

{	St("C",740, @0,@0,"buミンク_通常_angry4");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000080a05">
"Start walking&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Mink starts to move forward&.

{
	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,800,0,800,null,false);
}
Unable to move my own legs&, Mink pulls me along like a 
puppet&. I slide across the floor&.

Dragged along&.

Just dragging&.

&.&.&.This is ridiculous&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_trip");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000090a01">
"Heh&, huahahahahaha!"

{	St("C",740, @0,@0,"buミンク_通常_angry");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000100a05">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_trip");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000110a01">
"Aha&, Ahahahahaha!"

{	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000120a05">
"&.&.&.An overdose?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
For some reason&, I feel weird&.
An unbearable strangeness&. My head hurts&.

{
	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,800,0,800,null,false);
}
Mink keeps forcibly pulling me along as I keep laughing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
{	Fw("fwmギャルB_ドライ_normal");}
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm31/5000130e24">
"Oh now&, is that kid okay? He's completely stoned!"

{	St("C",740, @0,@0,"buミンク_通常_angry");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000140a05">
"&.&.&.&.&."

{	Fw("fwmギャルB_ドライ_normal");}
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm31/5000150e24">
"And you hottie with the hard-to-see faaace&. I like
 youuuu&. Let's plaaay!" 

{	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000160a05">
"Move&."

{
	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwmギャルB_ドライ_normal");}
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm31/5000170e24">
"Kya!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
He coldheartedly shoves the following girl away and 
silently continues on&.

We make it to the door&, and then stop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000180a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Why&.&.&.

I'm about to stumble over and fall&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
{	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000190a05">
"What are you doing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Mink tightens his grip and speaks to me in an irritated 
tone&.

{
	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,1000,0,1000,null,false);
}
I find myself stangely amused again&, and throw my arms 
over Mink's neck&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_trip");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000200a01">
"Ahehe&, aha!"

{
	Fw("fwミンク_通常_shout");
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000210a05">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	SetVolumeEX("SE*", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Mink grips my shoulder and pushes me away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
At that moment&, a bolt of lightning flashes&.

&.&.&.I want to be ruined&.

I want to destroy&. I want to destroy&.
Everything&.

I want to be broken&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※相手の胸に頭を預ける
//	Wait(500);
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵ＥＶ100", 1100, Center, Middle, "cg/ev/l/ev315蒼葉発情状態_l.jpg");
	CreateTextureEX("絵ＥＶ200", 1100, Center, Middle, "cg/ev/ev315蒼葉発情状態.jpg");

	//CreateSE("SE01","ＳＥダミー");//あきゅん「ＳＥ：se人体_動作_衣擦れ03」
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵ＥＶ100", 1000, @150, @0, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(500);

//	Fw("fw蒼葉_通常_trip");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000220a01">
"&.&.&.Ha&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Taking a hot breath&, I press my head to Mink's chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000230a05">
"Cut it out&."

//{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000240a01">
"&.&.&.Let me do it&."

//{	Fw("fwミンク_通常_angry2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000250a05">
"&.&.&.Huh?"

//{	Fw("fw蒼葉_通常_trip");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000260a01">
"Destroy me&. I want you to wreck me&."

//{	Fw("fw蒼葉_通常_smile");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000270a01">
"In pieces&, recklessly&, sloppily&.&.&. anything's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶ200", 1000, 1000, null, true);

	Wait(500);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/5000280a01">
"Right here&, right now&.&.&. Ruin me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
As I speak to him&, the lights and sounds violate me&.

But that's not enough&.
I want to feel something more direct&.

I want to feel it so much&.&.&. so much that I can't think 
anymore&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/5000290a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("絵ＥＶ100");
	FadeDelete("絵ＥＶ200", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Mink is silent for a little while&. Eventually&, he starts 
to walk and pull me along&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(500);

//※次ファイル["dm3160h.nss"]

}
