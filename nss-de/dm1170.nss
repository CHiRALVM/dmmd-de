//<continuation number="250">
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


scene dm1170.nss_MAIN
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

//演出消去===========================================================
	Request("@絵色ライト*", UnLock);
	Request("@プロセスライト１", UnLock);
	Request("@dm1160_プロセス洗脳*", UnLock);
	Request("dm1160_プロセス洗脳*", UnLock);
	Request("dm1160_プロセス洗脳光", UnLock);
	Request("dm1160_プロセス洗脳レーザー", UnLock);

	Request("@プロセスライト１", Stop);
	Delete("@プロセスライト１");
	Delete("@絵Suf*");
	Delete("@絵色ライト*");
	Delete("@dm1160_プロセス洗脳*");
//演出消去===========================================================

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev117紅雀、蒼葉をおんぶ=true;

	#bg390011_5_プラチナジェイル汎用空=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1180.nss";

}


scene dm1170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	//おがみ：BGM：切ない系
	SoundPlay("@dm012",0,450,true);

	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

//マクロ・プロセス始動：スキップ対応用==========================
	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("@dm1160_プロセス洗脳*","絵Suf");
	SetBlur("絵Suf", true, 3, 50, 500, false);
	Fade("@dm1160_プロセス洗脳絵背景", 0, 1000, null, true);

	Request("@絵色ライト*", UnLock);
	Request("@プロセスライト１", UnLock);
	Request("@dm1160_プロセス洗脳*", UnLock);
	Request("dm1160_プロセス洗脳*", UnLock);
	Request("dm1160_プロセス洗脳光", UnLock);
	Request("dm1160_プロセス洗脳レーザー", UnLock);

	GoLoopFade("@dm1160_プロセス洗脳光",100);
	GoLoopFade2("@dm1160_プロセス洗脳レーザー",137);
	Request("@プロセスライト１", Start);

	Delete("上背景");
//マクロ・プロセス始動：スキップ対応用==========================

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000010a01">
"Sorry&.&.&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000020a02">
"It's fine&. Stay like this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,600,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
He says that&, turns his back to me&, and crouches down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000021a02">
"C'mere&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000030a01">
"Eh?"

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000040a02">
"Hurry up&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000050a01">
"What are&.&.&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000060a02">
"Piggy back&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000070a01">
"&.&.&.Huh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000080a02">
"Come on already&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000090a01">
"What are you&.&.&. this is a joke&, right?"

{	Fw("fw紅雀_通常_cool");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000100a02">
"It's not&. How are we going to get home if you can't walk?
 We'll be bothering the club&. Get on&."

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000110a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
He has a point&. I swallow my next words&.

In a corner&, an employee starts to sweep; all of the 
earlier dancing guests look at us with sour faces&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000120a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I somewhat get myself up and unwillingly climb onto 
Koujaku&.

I quietly move my body weight to his back&.

I'm really too old for something like this&.&.&.

But I can't let myself cause anymore trouble&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000130a02">
"I'm gonna stand up now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	Move("絵Suf", 150, @0, @-10, Dxl1, true);
//	Move("絵Suf", 150, @0, @10, AxlDxl, true);

//	Wait(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Koujaku holds up my thighs and carefully stands up&. I clingto his neck&, feeling weightless&.

I haven't had a piggy back ride since I was a kid&, so I 
feel just a tinge of fear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000140a02">
"Well&, please excuse us for this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000150a01">
"I'm sorry&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Request("@プロセスライト１", Stop);
	Delete("@プロセスライト１");
	Delete("@絵Suf*");
	Delete("@絵色ライト*");
	Delete("@dm1160_プロセス洗脳*");

	OnBG(10,"bg303011_5_娯楽施設外観入り口レッド");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Koujaku bows his head to the janitors&, and we walk far awayfrom the floor so we won't cause anymore trouble&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
The lights&, the music&, the perfume&, the stench of sweat&. 
All of them were mixed together in that room&.

When we reach outside&, the air feels so refreshing&.

Koujaku silently keeps walking&, readjusting his hold on me from time to time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301021_5_プラチナジェイル中通り1赤");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
At first I was embarrassed to see people watch me be 
carried&, but I quickly gave into it&.

The heat of Koujaku's back felt nice&. Some of the sickness faded away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000160a01">
"&.&.&.Koujaku&."

{	Fw("fw紅雀_通常_cool");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000170a02">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_紅雀おんぶ歩くゆっくり01L");
	MusicStart("SE11",1000,500,0,1000,null,true);

	CreateTextureEX("絵ＥＶBG", 200, Center, Middle, "cg/bg/bg390011_5_プラチナジェイル汎用空.jpg");
	CreateTextureEX("絵ＥＶ", 200, Center, Middle, "cg/ev/ev117紅雀、蒼葉をおんぶ.jpg");
	CreateTextureEX("絵ＥＶＬ", 100, -220, -120, "cg/ev/m/ev117紅雀、蒼葉をおんぶ_m.jpg");
	MoveFTP1("@絵ＥＶＬ",5000,5,10);

	Fade("絵ＥＶＬ", 1000, 1000, null, false);

	Wait(1500);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000180a01">
"&.&.&.I'm sorry&. For ruining your kimono&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000190a02">
"Don't sweat it&, I can always wash it later&. Isn't this how we've always been?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000200a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
His words stab me in the heart&.
Koujaku's kindness can hurt sometimes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000210a02">
"For now&, just be quiet&. You never know when you might
 start feeling sick again&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000220a01">
"&.&.&.Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 3000, 300, null);
	Fade("絵ＥＶ", 800, 1000, null, true);
	Delete("絵ＥＶＬ");
	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Koujaku has always taken care of me&, and that hurts even 
more&.

Koujaku&, he&.&.&. helped me even when I ruined his clothes&.

He's kind&, and he's good with taking care of others&.

I guess this is why girls fawn over him so much&.&.&.

A different thought pops into my head&, and I go back to my suspicions about Koujaku&.

I might have been too sensitive over it&, but he's doing 
something in secret for sure&.

Being the awful person that I am&, I ignore his kindness 
and my honest satisfaction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶBG", 0, 1000, null, true);
	Move("絵ＥＶBG", 30000, @0, 0, null, false);

	FadeDelete("絵ＥＶ", 1000, null, true);

//あきゅん「演出：以降は互いに表情見えないほうが良いかな」
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000230a01">
"Koujaku&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/7000240a02">
"Hm?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/7000250a01">
"&.&.&.Nevermind&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Maybe I should just give up on it&.
Or maybe I should just pretend&.

&.&.&.I don't know&.

It's still hard for me to understand him even though he's 
been my friend since we were kids&. 

I can't tell how close we really are&.

While silently thinking to myself&, I start to feel a 
heaviness throughout my body&.

Koujaku's rhythm of walking feels nice&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
My eyelids gradually feel heavier and heavier&, and I fall 
asleep onto Koujaku's back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 2000, 300, null);

	Wait(1000);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(100, true);
	Wait(1000);

//※次ファイル["dm1180.nss"]

}
