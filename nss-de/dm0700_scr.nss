//<continuation number="170">
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


scene dm0700_scr.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0710_scr.nss";

}


scene dm0700_scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――


//あきゅん「β１：導入部分は後で調整」

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg105011_1_刺青スタジオロビー");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);
	Wait(500);
	FadeDelete("絵色黒", 2000, null, true);

	Wait(300);

	//SoundPlay("@dm017",5000,450,true);//暴露

//※ミズキの精神世界：
//　場所は旧住民区のミズキの店。
//　ぐちゃぐちゃとたくさんのチームメンバーや客の顔が入り混じり、
//　ぎゅうぎゅうになってクスクス笑いながら噂話をしている。
//　チームメンバーや客の顔はのっぺらぼうで、口だけがついてる状態。

	CreateSE("SEL01","se環境_ガヤ_ざわつき01L");
	MusicStart("SEL01",3000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

&.&.&.&.&.
Wha&.&.&.t&.&.&.?
{	Wait(300);}

This is&.&.&.

This is Mizuki's shop&.

But it's a little different&.

Inside it are countless customers&, more than it's ever had before&.

But every one of them&.&.&.

They're all missing a face&.

Only bright red&, slimy mouths were wriggling with a joyful giggle to them&.

And even more so&, I could hear what everyone was saying&, 
word for word&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【女】※音声加工：テープの早回しのような声
<voice name="女" class="女" src="voice/dm07/0000010e31">
"Eh&, Rib is so out of style!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【男】※音声加工：テープの早回しのような声
<voice name="男" class="男" src="voice/dm07/0000020e34">
"Yeah&, Rhyme is so much better&."

//【女】※音声加工：テープの早回しのような声
<voice name="女" class="女" src="voice/dm07/0000030e31">
"Everyone doing it is dropping dead&."

//【男】※音声加工：テープの早回しのような声
<voice name="男" class="男" src="voice/dm07/0000040e34">
"Yeah&, Rib is gonna be dead soon&, right?"

//【女】※音声加工：テープの早回しのような声
<voice name="女" class="女" src="voice/dm07/0000050e31">
"People are just gonna do Rhyme from now on&."

//【男】※音声加工：テープの早回しのような声
<voice name="男" class="男" src="voice/dm07/0000060e34">
"Rib is gonna be out of the picture&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：↓ここは同時音声にしてＳＥとして流す」
//あきゅん「β１：ここまだ未作業」

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【女】※音声加工：テープの早回しのような声
<voice name="女" class="女" src="voice/dm07/0000070e31">
"Ahahahahahaha!"

//【男】※音声加工：テープの早回しのような声
<voice name="男" class="男" src="voice/dm07/0000080e34">
"Ahahahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/
	CreateVOICE("女","dm07/0000070e31");
	CreateVOICE("男","dm07/0000080e34");
	MusicStart("女",0,1500,-250,1000,null,false);
	MusicStart("男",0,1500,250,1000,null,false);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
All the rustling voices jumble up my mind&. They're so 
unbearably loud&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000100a01">
"Wha- What is this&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
This can't be real&.
Then&, is this a dream? <k>
Am I dreaming&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
But&.&.&. this sensation&.

It's like the time when I was pulled into Rhyme&.

And even&.&.&.

From a long time ago&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000110a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
I try to think of something&, anything to get these voices 
out of my head&.

Shut up&, shut up&.&.&.

My head hurts&.

The voices are giving me a horrible headache&.
Shit&.&.&.!

I'm going to go crazy&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_水_はねるゲル01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "000000");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
I feel an unusual heat in both my hands and ears&, and 
something starts to pour out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000120a01">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
It's a black&, slimy liquid&, like tar&.

In the liquid there were a bunch of katakana and hiragana  characters mixed together&.

Just floating there&.

This&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：↓ここは同時音声にしてＳＥとして流す」
//あきゅん「β１：ここまだ未作業」
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【女】※音声加工：テープの早回しのような声
<voice name="女" class="女" src="voice/dm07/0000130e31">
"Ahahahahahaha!"

//【男】※音声加工：テープの早回しのような声
<voice name="男" class="男" src="voice/dm07/0000140e34">
"Ahahahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateVOICE("女","dm07/0000130e31");
	CreateVOICE("男","dm07/0000140e34");
	MusicStart("女",0,1500,-250,1000,null,false);
	MusicStart("男",0,1500,250,1000,null,false);

	CreateSE("SE01","se擬音_水_はねるゲル01");
	MusicStart("SE01",0,1000,0,180,null,false);
	CreateColorSP("絵色白", 4000, "000000");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000150a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_ライム_紋章発動準備感染者01.ogg");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Some of the words are coming into my mind&.&.&.!?

The black liquid begins to fill my ears&, and they suddenly become heavy&.

All the dead words are squeezing together&, and both of my  ears are overflowing&.&.&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000160a01">
"What's going on&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
If this is a dream&, I want to wake up soon&.

But this feels so real&.

If this was a dream&.&.&.

It doesn't matter&, I have to get out of here or else&.

As I search for the entrance&, I suddenly feel someone's 
gaze on me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Right now&.&.&. Is someone watching me?

When I turn around&, I pass a familiar face&.

&.&.&.A face&. They have a face&.

Although it was featureless&, this one had a face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/0000170a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
I start running after him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateSE("SE03","se人体_動作_衣擦れ10");
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
The man with the featureless face suddenly stops speaking&, and I push through the crowd with both hands towards the 
inside of the shop&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}

This place is a tattoo parlor&. 

I open the door and enter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0710_scr.nss"]

}
