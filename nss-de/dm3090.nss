//<continuation number="40">
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


scene dm3090.nss_MAIN
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
	#bg302051_5_グリッター前通り=true;
	#bg302052_5_グリッター前通りグリッター看板=true;
	#bg302051_5_グリッターエントランス=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3100.nss";

}


scene dm3090.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm004",0,450,true);

	Delete("上背景");
	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We turn a corner into the marked lodging and we came upon 
a palace-like&, single standing house&.

It seems there were various ranks within it&, and our small two story building was at the end of it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/9000010a01">
"Is it here?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Compared to the other buildings&, this one seems a little 
older&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302052_5_グリッター前通りグリッター看板");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Above the door is a plate with the word GLITTER written on it&.

The other buildings have other words written above them&, 
so they must be named individually&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	OnBG(10,"bg302051_5_グリッター前通り");
//	FadeBG(1000,true);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/9000020a05">
"Put your Coil to it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
Mink jerks his chin to the confirmation monitor by the 
door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルをかざし、ＩＤを読み取る
//※ドアを開ける
	Wait(300);

	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I show my Coil up to the monitor&, and the retro-style
doorknob twists open&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");//あきゅん「ＳＥ：se物体_グリッター玄関_扉開く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, -200, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateTextureSP("絵背景弐", 200, Center, 0, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateColorEXadd("絵背景上", 3000, "WHITE");
	Fade("絵背景上", 0, 1000, null, true);

	Move("絵背景弐", 3000, @156, @0, null, false);

	FadeDelete("絵黒幕", 500, null, true);
	FadeDelete("絵背景上", 1000, null, false);

	Wait(2000);

	Move("絵背景", 3000, @-156, @0, null, false);
	FadeDelete("絵背景弐", 500, null, true);

	Wait(2000);

	FadeDelete("絵背景", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
When I go inside&, I'm astonished&.

I thought it looked rather old-fashioned&, and the interior emphasized it even more&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/9000030a05">
"It has an old-fashioned feel to it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Mink comments while looking around the room&.

We had the same opinion&.

With all of the wood everywhere&, it was like I warped into another world&. There's hardly anything like Platinum Jail&.

Everything here looks like it's been repaired to 
mint condition&, and there's a staircase that leads to the 
second floor in the middle&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/9000040a01">
"This is amazing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景", 100, -890, InBottom, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,750,null,false);

	Move("絵背景", 500, @0, @100, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I sit down on the sofa and gaze around the room&.

The sofa is so soft that I can feel myself sink into it&.
It relaxes me&.

When I lean into the sofa&, I let out a deep breath&.

It's been so stressful until now&.&.&.

And to make matters worse&, I'm stuck with Mink here&. 
He's pretty difficult&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 5000);
	SetShade("絵板写", SEMIHEAVY);
	Fade("絵板写", 1000, 1000, null, true);
	Wait(300);
	Fade("絵板写", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I sink further into the sofa and my eyelids gradually
grow heavier and heavier&.

{	Fade("絵板写", 500, 250, null, true);}
Don't fall asleep here&.&.&. crap&.

But I don't feel like I have enough strength to even 
stand&.&.&.

Or rather I can't even try&.&.&.

I was running all the way here&.&.&.

Right now&.&.&. I guess I could sleep a little&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵板写", 500, 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Just a little&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	Fade("絵板写", 1000, 1000, null, true);

	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm3100.nss"]

}
