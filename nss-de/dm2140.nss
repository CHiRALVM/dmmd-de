//<continuation number="190">
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


scene dm2140.nss_MAIN
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
	#bg302061_5_グリッター階段=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2150.nss";

}


scene dm2140.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

	CreateSE("SE01","se擬音_水_蛇口01L");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.What a weird guy&.
I know he noticed the burn on his mouth&, but what about 
his hand?

{
	SetVolumeEX("SE*", 2000, 0, null);
}
Is he just pretending not to feel the pain or 
something?

If that's the case&, then he's acting like a total kid&.

But&.&.&.

Like yesterday&, it's my fault again&.
Leaving him with injuries&, I'm the worst&.&.&.

Once again filled with guilt&, I look at Noiz standing 
behind the counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000010a01">
"&.&.&.Really&. I'm sorry&. For yesterday&, too&.&.&. I was angry
 because I thought you were doing something bad to Ren&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000020a01">
"But you were removing the worm in Ren&, right?
 &.&.&.Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000030a03">
"I did get rid of it&, but I did it partly because I was
 interested in your Allmate&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000040a01">
"Interested?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000050a03">
"I was wondering how you beat me&. I ventured a guess that
 there was something in your Allmate&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000060a01">
"&.&.&.What the hell?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal3");
	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
	FadeStPro("C", 11200, 200);
//	St("C",740, @0,@0,"stノイズ_通常_normal3");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000070a03">
"I just looked inside and took out the worm afterwards&. But in the end all I found out was that it's just an old
 model&. Why're you still using something like that?"

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000080a01">
"&.&.&.It's none of your business&."

{
	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000090a03">
"It might've not been the case when you did Rhyme&, but your Allmate is one of those early models&, right?"

{
	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000100a03">
"When I came to this island and started Rhyme about three&,
 four years ago&, there weren't any guys using anything
 like that&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000110a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000120a03">
"I took the liberty to investigate your Allmate&. I also
 took the worm out without permission&."

{
	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000130a03">
"That's why you don't really have a reason to apologize
 to me&. How good-natured can you be?"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000140a01">
"Ngh&, it doesn't matter&, and could you explain a little
 more before you do these things&.&.&.?"

{
	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000150a03">
"By the way&. Aren't you hungry?"

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000160a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The sudden change in topic catches me off guard&.

{
	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
}
Hungry?
How's that connected to the conversation we just had?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Noiz goes down the stairs without minding me at all&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302061_5_グリッター階段");
	FadeBG(500,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000170a01">
"Hey&, where are you going?"

{
	Fw("fwノイズ_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/4000180a03">
"Outside&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/4000190a01">
"Wait a minute-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,600,0,1000,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I rush down the stairs too&.

Noiz walks out quickly&.

&.&.&.What's going on?

We were just talking about something completely different&.
He's just going on at his own pace&.&.&.

Honestly amazed&, I chase after him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm2150.nss"]

}
