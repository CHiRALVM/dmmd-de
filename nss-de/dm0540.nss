//<continuation number="160">
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


scene dm0540.nss_MAIN
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
	#ev054ミンクぶん殴る=true;
	#ev054ミンクぶん殴るa=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0550.nss";

	//▼頭痛レベル設定
	$HALevel=1;

}


scene dm0540.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg106011_5_廃ビル広間");
	FadeBG(0,true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 1000, null, true);

	Delete("上背景");

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Mink drags me and the man out of the room&.

The rest of the members in the hallway are all staring at  us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se物体_ドア鉄_扉開く強く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
We go through an open door at the end of the hallway&, and  enter the room I was taken to the first time&.

Even more members followed us in&, adding to the ones 
already in the room&, and it went dead silent inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/m/bg106011_5_廃ビル広間_m.jpg");
	CreateTextureSP("絵背景裏", 100, Center, Middle, "cg/bg/bg106011_5_廃ビル広間.jpg");

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 300, @0, @-150, Axl2, false);
	FadeDelete("絵板写", 300, Dxl1, true);
	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(500,200,0,10,0,0,1000,Dxl1,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/4000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetPan("SE01", 300, 300, Dxl3);
	FadeDelete("絵背景", 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Mink violently thrashes my arm away&, grabs the guy by the 
neck and throws him down to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/4000020e01">
"! Mi-Mink-san&, forgive me- forgive me&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The man&, his face completely pale&, looks up to Mink and 
then falls back on his butt and crawls away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SoundPlay("@dm008",0,450,true);

	CreateTextureEX("絵ＥＶ101", 101, Center, 0, "cg/ev/ev054ミンクぶん殴るa.jpg");
	CreateTextureEX("絵ＥＶ100", 100, Center, 0, "cg/ev/ev054ミンクぶん殴る.jpg");

	Move("絵ＥＶ100", 1000, @0, @-50, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(500);

//※ミンク紹介演出
//voice/ex/0000080c06
	Profile("ミンク", "ex/0000080c06");

	Fw("fwmミンクチームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm05/4000030e45">
"Is it time for his punishment?"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm05/4000040e46">
"Guess so&. But what'd he do?"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm05/4000050e45">
"Who knows? Must've been something really bad&. Mink-san is
 pissed&."

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm05/4000060e46">
"And that one over there&, isn't that guy he brought gonna
 get it too?"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm05/4000070e45">
"Don't think so&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);
//	SoundPlay("@dm008",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The surrounding men sit on the floor and stare at us while whispering amongst themselves&.

Punishment&.&.&.?

That can't mean anything good&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateColorEX("絵色黒", 5000, "000000");
	Move("絵ＥＶ100", 800, @0, @-100, Dxl1, false);
	Fade("絵色黒", 500, 1000, null, true);

	Wait(300);
	Move("絵ＥＶ100", 0, @0, -652, Dxl1, true);

	Move("絵ＥＶ100", 800, @0, @-100, Dxl1, false);
	Fade("絵色黒", 500, 0, null, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/4000080e01">
"Eek! Forgive me&, please have mercy!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※衣擦れ_ミンクが男の胸倉を掴み上げる
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵ＥＶ101", 800, @0, @-100, Dxl1, false);
	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Mink stares at the begging man&, emotionless&. He then grabs him by the collar without a word&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ごっ！と思い切り殴りつける音（１撃）
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl2, true);
	Delete("絵黒幕");
	Delete("絵ＥＶ100");
	Fade("絵ＥＶ101", 0, 1000, null, true);
	Fade("絵色白", 200, 0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/4000090e01">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ101", 200, @0, @-632, Dxl3, true);
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵ＥＶ101", 300, 0, 10, 0, 0, 500, null, true);
	Move("絵ＥＶ101", 0, @0, @20, Dxl2, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I can hear the sound of each bone breaking one by one&, and the man's face is effortlessly crushed&.

The man begins to shake&, eyes wide open&, and convulses 
violently&.

A puddle of blood pools around his mouth&, and little clumpsof white&, like rice&, guzzle out&.

His teeth were all broken&.

With just one attack&, he was knocked unconcious&.
I was struck&, unable to speak&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵ＥＶ101");

	St("C",740, @0,@0,"stミンク_通常正面_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Soon all of the surrounding spectators' eyes were on me&.

Not the man Mink just broke&, but me&.

All of them have broad grins on their faces&. 

&.&.&.This gives me an awful feeling&. They're not saying that I'm next&, right?

Me being raped or beaten to a pulp isn't funny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(2000, 0,true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/4000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
As if to deliver the final blow&, my head starts to hurt 
immensely&.

Shit&.&.&.

I don't have my bag or my pills&, and I'll be caught if I 
even try to run away in this situation&.&.&.

&.&.&.This is the worst case scenario&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06L");
	MusicStart("SE01",0,700,0,800,null,true);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 200, -265, -33, "cg/bg/m/bg106011_5_廃ビル広間_m.jpg");
	SetShade("絵背景", MEDIUM);
	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",0,true);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Mink takes one step foward towards me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/4000110a01">
"Don't fuck with me&.&.&. Go away!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※足音_ミンク_踏み出す（重めのブーツで、ゴツッゴツ）
	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
I try to fall back&, but Mink takes long strides and closes the distance&.

The pool of blood around the man reflects in my eyes&.

I don't want to become like that&.&.&.
I tense up right away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※衣擦れ_ミンク、蒼葉の腕を掴む
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景", 500, 0, 15, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 500, Dxl1, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/4000120a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/4000130a05">
"You're over here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	Delete("絵霞");

	DeleteSt("C", 0,true);

	CreateSE("SE03","se人体_動作_衣擦れ17");
	MusicStart("SE03",0,600,0,1000,null,false);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_足音_歩く06");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("絵板写", 800, Dxl1, true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Instead of the impact I was bracing for&, Mink grabs my arm and begins to walk out&.

We head towards the door we came through earlier&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmミンクチームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm05/4000140e45">
"&.&.&.He's not getting punished? Are you serious?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmミンクチームB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm05/4000150e46">
"Ha? Why? Wasn't that guy our target?"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm05/4000160e45">
"What the fuck&.&.he looked like such a good one to do&, too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
As we pass by&, Mink yells at the members to move out of 
the way&.

He took me to the room where people recieve "Punishment"&, 
so of course they thought I was next&.

I thought so too&.

Everyone around us is talking&, and Mink can hear them&, 
but he doesn't make any responses&.

What is it now&.&.&.?

I get a very bad feeling as Mink pulls me out of the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//※次ファイル["dm0550.nss"]

}
