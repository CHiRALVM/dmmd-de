//<continuation number="180">
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


scene dm3680lv.nss_MAIN
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
	
	#bg304053_5_東江タワー研究エリア廊下03=true;
	#bg304131_5_東江タワー東江の間前廊下=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3690.nss";

	//▼頭痛レベル設定
	$HALevel=4;

}


scene dm3680lv.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//※演出：前後の繋がりで背景要確認
	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);

	//おがみ：手前のシーンから時間経過しているようなので曲無し
	//SoundPlay("@dm008",0,450,true);

	Wait(1000);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The stairs go on forever&, but Mink finally makes it 
to the designated floor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：前後の繋がりで背景要確認

/*
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(500,true);

	Wait(500);
*/

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	SetVolumeEX("SE*", 2000, 0, null);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000010a01">
"Hck&, hah&, hah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：４
$HALevel=4;
	HAFade(2000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
My head hurts&.

The sweat drips down my forehead&, my vision blurry 
with pain&.

It's like being pierced by huge needles&.&.&.
It must be because I used my power&.

{
	CreateSE("SE32","se物体_物_漁る01");
	MusicStart("SE32",0,1000,0,1000,null,false);
}
I pull out my medicine from my bag and put what's left of 
it in my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000020a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Mink looks at me to see how I am&.

I don't want to make it seem like I made the wrong choice 
of coming along&.

I hold in the agonizing pain and started to run&.

{	DeleteAllSt(200,true);}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	Wait(300);

//※演出：前後の繋がりで背景要確認
	OnBG(10,"bg304131_5_東江タワー東江の間前廊下");
	FadeBG(500,true);

	Wait(300);
*/

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304131_5_東江タワー東江の間前廊下");
	FadeBG(0,true);

	SetVolumeEX("SE*", 2000, 0, null);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Down the hallway&, a red door catches my attention&.

A vivd color in this white&, long hallway makes it an 
obvious sight&.

Mink suddenly comes to a stop and I accidently bump into 
him&, distracted by my headache&.

{	CreateSE("SE01","se乗物_改造前バイク_走り去る");
	MusicStart("SE01",0,300,0,1000,null,false);}
//※ＳＥ：バイクのマフラー音_遠く
I was going to apologize&.&.&. but a sound took my mind away 
from that&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000030a01">
"! Wha&.&.&.?"

{	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000040a05">
"They must have finished cleaning up downstairs&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※ＳＥ：バイクのマフラー音_近づいてきて停止
	CreateSE("SE02","se乗物_改造前バイク_走行01L");
	CreateSE("SE03","se乗物_改造前バイク_急ブレーキ01");
	MusicStart("SE02",2000,700,0,1000,null,false);

	Wait(1000);
	SetFrequency("SE02", 1500, 500, Axl1);
	Wait(1000);

	MusicStart("SE03",0,700,0,1000,null,false);

	SetVolumeEX("SE01", 1000, 0, null);
	SetVolumeEX("SE02", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The brakes screech to a standstill&.

Mink looks over to me from his shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);


	St("C",740, @0,@0,"stミンク_通常正面_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000050a05">
"I'm sending you back&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000060a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Mink&, sitting on the bike&, demands with his eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000070a05">
"You'll just be bothering me from here on&. You're in
 the way&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
His voice has no emotion to it&.

&.&.&.This again&.
He's saying these kinds of things again&.

The same as before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 400, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
If I went back now&, Mink would just go on with nothing but his objective in his mind&.

To go carry out his revenge on Toue&.

And then&.&.&. he'll die&.

If I stop here&, then&.&.&.

It would be the same as me letting him commit suicide&.

But all Mink is thinking about is his revenge&. He can't 
see any other way&.

Mink doesn't want me to stop him&.

&.&.&.But is it really all right to leave him alone?

I need to stop him&.

No matter what result comes from it&, I need to save Mink&.

Even if it goes against Mink's deepest wishes&, I can't let him die&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(0);

	Fade("絵色黒", 500, 0, null, false);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000080a05">
"&.&.&.What an ugly mug&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The same words he said to me in Scrap come out of his 
mouth&.

The headache continues to relentlessly pound and I look at Mink's face&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000090a01">
"&.&.&.I don't want you to die&."

{	St("C",740, @0,@0,"stミンク_通常_angry4");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000100a05">
"I'm already dead&. I have been&, ever since my family was
 killed&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Mink turns his gaze away from me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000110a01">
"That's not&.&.&. true&. You're alive&. Right now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//※ＳＥ：腕を掴む
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
A violent emotion rampages through me as I say that&, and 
I grab Mink's arm&.

{	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",200,true);}
Mink just scowls and looks at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000120a01">
"I can touch you like this&, and you're even breathing&. So
 you're&.&.&. You're alive&."

{	St("C",740, @0,@0,"buミンク_通常正面_serious");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000130a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,800,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Mink lightly pushes off my hand from him&.

He doesn't reply&.
But I already know&.

That his intention was as hard as iron&, and no matter how 
much I argue&, my words won't reach him&.

Mink slowly turns his back to me&, looking over his 
shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/8000140a05">
"&.&.&.I'm sorry for dragging you along&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000150a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
And with those words&, Mink dashes off&.

And I couldn't say a word&.&.&.

I can only watch Mink leave through the door&.

The lingering scent of cinnamon reaches my nose&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//頭痛エフェクト(0)
	HAFade(2000, 0,false);

//	Wait(1000);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000160a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
My headache gets worse&.

As if to punish me for letting Mink go&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
&.&.&.It was futile in the end&.
I couldn't stop him&.

But&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000170a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Surging waves of regret pushed down on me&, and I fell 
right to my knees&.

I'm getting dizzy&. And nauseous&.
Heaps of sweat flow&.

Was it better to have attempted to stop him even if it was impossible?

Even if&.&.&. I were to use my voice&.

Even if Mink didn't want me to?

Living in torment&, unable to reach what you wanted&, and 
ultimately ending that&.

Which choice is the right one?

And which one would make someone happy?

&.&.&.I don't know&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//おがみ：フラッシュバック的な何かを入れたい

	CreateColorSP("絵色黒２", 500, "000000");
	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",0,true);


	Fade("絵色黒", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
But even if I was able to stop him now&.&.&.

He would go back to whichever road took him to his final 
purpose&.

That's how firm his will is&.&.&.

That's the only road he could take&.

&.&.&.So I have to come to a decision&.
On which road I'll take&.

I'll choose my own way&.
Without anyone else's hand helping me along&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 1000, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("絵色黒２");
	Wait(200);
	FadeDelete("絵色黒", 500, null, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/8000180a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

/*
	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(1000,true);

	Wait(500);


	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
I slowly get up onto my feet and head towards the bike&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
The door Mink disappeared through&.&.&.

I didn't take a single glance at&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	ClearFadeAll(1500, true);
	Wait(1500);

//※次ファイル["dm3690.nss"]

}
