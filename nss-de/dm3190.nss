//<continuation number="100">
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


scene dm3190.nss_MAIN
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
	$GameName = "dm3200.nss";

}


scene dm3190.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01.jpg");

	FadeDelete("上背景", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The next day&.

When I wake up&, it's just past noon&.

It's still night&, as usual in Platinum Jail&, so I had to 
check my Coil to tell&.

I get up from the bed&, start up Ren&, and head out into 
the corridor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景", 500, null, true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/9000010a01">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I can hear someone talking in the living room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Mink is sitting on the sofa&. He looks like he's talking to 
someone on his Coil&.

He has his pipe in hand&, sometimes puffing out smoke&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/9000020a05">
"&.&.&.Yeah&, I see&. Got it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
When I nervously walk up&, Mink just ends his call and 
looks at me&.

The white smoke emitting from his lips disappears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se人体_動作_衣擦れ15");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateSE("SE04","se人体_動作_衣擦れ01");
	MusicStart("SE04",0,600,0,900,null,false);

//	Wait(500);
//	CreateSE("SE01","se戦闘_打撃_風切り低01");
//	MusicStart("SE01",0,700,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
He stands up and throws something my way&.

{
	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,450,0,800,null,false);
}
I catch it&, flustered&, and I see it's a round piece of 
bread&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/9000030a05">
"We're going out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.So he's telling me to eat this now?
I alternate my gaze between Mink and the bread&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/9000040a01">
"Where?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/9000050a05">
"For minor business&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,700,0,1100,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
With that&, Mink goes down the staircase&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/9000060a01">
"Minor business&.&.&. What does that even mean?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/9000070a06">
"There's no choice but to follow him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/9000080a01">
"I guess so&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm31/9000090b12">
"We'll leave you if you don't hurry up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se動物_動作_羽ばたき去る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
With the sound of his wings flapping overhead&, Tori circles
us and flies down to the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/9000100a01">
"&.&.&.This makes no sense&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Because of yesterday&, I've been unable to decide how I 
could face Mink&.

Yesterday&, I&.&.&. Because of those drugging lights or 
whatever&, something strange happened to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
And&.&.&. I said some unthinkable things to Mink&.

But&, why did Mink accept it?

He's the kind of guy who would beat me down to the floor 
without batting an eye&.
Then&, why&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
&.&.&.Even if I ask him&, he wouldn't reply anyway&.

But there's one thing that's clear&.

Mink's objective is Toue&.

The same as mine&, so I have a reason to work with him&.

Looking on it&, I couldn't do it alone&.

That's why&.&.&. I have to go with him&.

I murmur that just so I can convince myself&.

I stuff the bread into my mouth&, go back into my room to 
get ready&, and leave down the stairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//※次ファイル["dm3200.nss"]

}
