//<continuation number="2300">
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


scene dm1550h.nss_MAIN
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
	#ev155蒼葉の手を握る紅雀=true;

	#dm1550h_Add1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1551h.nss";

}


scene dm1550h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	$ftime=500;if($RECRIB_PLAY==1){$ftime=1000;}//回想時
	FadeDelete("上背景", $ftime, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ren is curled up asleep on his favorite cushion in the 
corner of my room&.

Koujaku heads over to the veranda&.
A smoke after a meal&, huh&.

I reach for the ashtray&, but for some reason Koujaku 
doesn't open the window and comes back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000010a01">
"Not going to smoke?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000020a02">
"I'm fine for today&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000030a01">
"Oh&, really?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Maybe it's a mood thing?

{
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 2, 500, null, true);
	Delete("絵板写");
}
I sit down on the bed&, and Koujaku comes over and sits 
next to me&.

What?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Just as I thought he'd start a childish conversation like 
the usual&, Koujaku stares at his feet and is silent&.

I look to my feet thinking there might've been something 
on the floor&, but there's nothing&.

&.&.&.What? What's with this atmosphere?
It's hard to bring up a conversation&.

Time passes uncomfortably and I glance at Koujaku&.

Is it my imagination&, or is Koujaku sitting a little far 
away?

Am I thinking too much?
But I get more fidgety as time keeps passing&.

&.&.&.Why isn't he saying anything?

Maybe he's here to talk about something really serious?

Then I want him to say it quickly already&.
This is bad for my heart&.

My thoughts start going off on their own&. and I'm unable 
to calm down&.

Whatever's fine&.
Some topic&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※演出：台詞の同時２列表記

	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//※同時
//【蒼葉】
//<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000040a01">
"H-Hey-"{WaitAddText2();}
<BR>

//※同時
//【紅雀】
//<voice name="紅雀" class="紅雀" src="voice/dm15/5000050a02">
//「……あのな」

</PRE>
	SetText();
	AddText(1,""H-Hey-"","蒼葉","dm15/5000040a01",true,true,1000);
	AddText(2,""H-Hey-"","紅雀","dm15/5000050a02",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000060a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_worry2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000070a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
We open our mouths at the same time&, and then close them&.

It's so awkward now&.
I have such horrible timing&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000080a02">
"Sorry&, I cut you off&. Go ahead&."

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000090a01">
"Ah&, no&. Well&, I&, uh&.&.&. Do you want me to get you something to drink?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000100a02">
"Ah&, no&. I'm fine&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000110a01">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.&.&.

&.&.&.The conversation ended&.

That's not good&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000120a01">
"&.&.&.Anyway&, it might just be my imagination&, but&.&.&. aren't
 you a little far away?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000130a02">
"Far away?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000140a01">
"No&, well&, this distance&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I point out the sizeable distance between Koujaku and I&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000150a02">
"Hm? It doesn't really mean anything&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000160a01">
"&.&.&.I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
&.&.&.&.&.

What is this?

What&.&.&. what is this?

It feels like I'm thinking way too hard about this&.

&.&.&.This is irritating&.

{
	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
I get up and reseat myself closer to Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_worry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000170a02">
"&.&.&.Uh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Koujaku throws that cryptic message in&, and for some 
reason turns his face away&.

Seriously&, this atmosphere&.&.&.

I get a little irritated and Koujaku mutters something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"bu紅雀_通常_worry2");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000180a02">
"&.&.&.Uh&, I'm sorry&."

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000190a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000200a02">
"For a lot of things&.&.&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000210a01">
"Ah&, no&, it's fine&.&.&. really&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000220a02">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_worry2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000230a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
&.&.&.It's so awkward&.

Rather than out of anger&, I have this weird tension and my heart is beating&.&.&. I want to run away&.

{
	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);
}
My emotions pile up&, and Koujaku looks my way&.
His expression is earnest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000240a02">
"&.&.&.Can I say something?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000250a02">
"It's about Platinum Jail&, so you might not want to
 remember it&, though&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000260a01">
"&.&.&.It's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000270a02">
"All right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Koujaku lets out a sigh of relief&.

I was thinking that I wanted to talk about Platinum Jail 
too&.

So I sat there quietly&, waiting for him to speak&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//cono「演出：BGM後ほど調整」
//	SoundPlay("@dm013",0,450,true);

	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000280a02">
"It was when I found out Ryuuhou was in Platinum Jail&. I
 was going to chase him to the end of the earth&, and didn't want to drag anyone else into it&."

{
	St("C",740, @0,@0,"bu紅雀_通常_cool");
	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);
	FadeStPro("C", 4500, 200);
//	St("C",740, @0,@0,"bu紅雀_通常_think");
//	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000290a02">
"You or my comrades&, I didn't want to drag anyone&. Well&.&.
 it turned out to be me alone in the end&, though&."

{
	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000300a02">
"Like&, this&, I guess? It's weirdly embarrassing to say&.&.&.
 but do you remember how I told you that your smile was my
 emotional support?"

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000310a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000320a02">
"When I came back to the island and saw you again&, that was when I decided&. That I didn't want to hurt anyone
 anymore&.&.&."

{
	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	St("C",740, @0,@0,"bu紅雀_通常_think2");
	FadeSt("C",200,true);
	FadeStPro("C", 6200, 200);
//	St("C",740, @0,@0,"bu紅雀_通常_cool2");
//	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000330a02">
"No matter what would've happened&, I'd protect you&. That's
 what I thought&. But then I double-crossed you&. I regret it
 even now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Koujaku casts his gaze down&, as if to apologize&.
But it felt a little different to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000340a01">
"&.&.&.I didn't know&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000350a02">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000360a01">
"That you thought that way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000370a02">
"Of course you wouldn't&, especially if I didn't tell you&.
 And I never did&. I didn't plan to&."

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000380a01">
"You kept secrets from me&, and I always&.&.&. I always thought about myself&. It was awful&.&.&."

{
	St("C",740, @0,@0,"bu紅雀_通常_cry");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000390a02">
"That's fine&. We both know that we've changed&."

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000400a01">
"Yeah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_sad3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000410a02">
"It was when you came into my head&. Remembering it now&, it
 felt more like a dream&. I had remembered some things from
 the past&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000420a02">
"When we'd play and laugh together all the time&, and fight
 sometimes&. We weren't together for long&, but it's always
 been a precious memory to me&."

{
	St("C",740, @0,@0,"bu紅雀_通常_happy");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000430a02">
"Didn't you tell me that you had a dream about the past&,
 too? It might've just been a coincidence&, but I thought it was a little interesting&."

Koujaku flashes his old smile&. Like it was contagious&, my 
tight expression loosens a little&, too&.

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000440a01">
"I thought that we'd be completely different people when we became adults&. But that didn't happen with us&. We're still like we were as kids&."

{
	St("C",740, @0,@0,"bu紅雀_通常_normal");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000450a02">
"That's right&. Nothing changed&. We're still snotty brats&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000460a02">
"&.&.&.Yeah&. I've been thinking about a lot from when I came
 back to the island until today&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000470a01">
"Yeah&."

{
	St("C",740, @0,@0,"bu紅雀_通常_cry2");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000480a02">
"And you've always been filling up my thoughts&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000490a02">
"&.&.&.You might not like to remember this&, but it's about
 when I lost my sense at Glitter&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000500a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_think2");
	St("C",740, @0,@0,"bu紅雀_通常_cry2");
	FadeSt("C",200,true);
	FadeStPro("C", 6000, 200);
//	St("C",740, @0,@0,"bu紅雀_通常_think2");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000510a02">
"I don't remember much of it&, and feel really sorry for it&.
 &.&.&.But I remember a part of it dimly&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000520a02">
"I didn't mean to touch you in that way&.&.&. I guess I
 remember some of the sensations&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000530a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000540a02">
"I usually think girls are cute&, I like girls&. That's why
 I'd never try to touch you like that&, and&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
Koujaku looks troubled and messses with his bangs&, turning his face away&. His ears are a little red&.

For some reason&.&.&. I feel a little embarrassed too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ100", 1100, 196, 43, "cg/ev/l/ev155蒼葉の手を握る紅雀_l.jpg");
	Zoom("絵ＥＶ100", 0, 1200, 1200, null, true);
	Request("絵ＥＶ100", Smoothing);
	Move("絵ＥＶ100", 1000, 40, 43, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000550a02">
"I've known you for a long time&, and always thought of you
 as an important friend&. That's why I've always been
 serious when it comes to you&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000560a02">
"But&, since Platinum Jail and up until today&.&.&. Yeah&, until today&. I've been thinking about you&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000570a02">
"And I even said this before&, but when you sleep in your
 room listening to music&, I once came in without you
 knowing about it&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000580a02">
"Since then I couldn't get your expression out of my head&.&.
 Don't get angry at what I'm about to say&, okay?"

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000590a01">
"What&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000600a02">
"It's kind of&.&.&. indecent&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000610a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000620a02">
"To think of a friend like that is weird&, right?"

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000630a01">
"&.&.&.What about girls? Do you still play around?"

{
	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000640a02">
"Not once since I came back here&. I never felt like it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000650a01">
"I- see&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
This&.&.&.

How should I answer?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ101", 1101, 124, 97, "cg/ev/l/ev155蒼葉の手を握る紅雀_l.jpg");
	Zoom("絵ＥＶ101", 0, 1400, 1400, null, true);
	Request("絵ＥＶ101", Smoothing);
	Move("絵ＥＶ101", 800, 74, 97, Dxl1, false);
	Fade("絵ＥＶ101", 800, 1000, null, true);

	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000660a02">
"&.&.&.Well&, honestly&, I had come to a conclusion&. Just&.&.&. I
 turned away from it&, trying as much as I could not to
 notice&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000670a02">
"You're a male friend&, so&.&.&. so I tried to kill it off in
 my mind&. But I can't&. It won't go away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000680a02">
"I realized that the feeling was so strong that I couldn't
 kill it&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000690a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
Koujaku turns away again&, and his ears are even more red 
than before&.

&.&.&.What do I do&.

I feel another streak of awkwardness&.

If the conversation goes on for any longer&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000700a02">
"&.&.&.And&, uh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ102", 1102, -168, -362, "cg/ev/l/ev155蒼葉の手を握る紅雀_l.jpg");
	Move("絵ＥＶ102", 1500, -324, -362, Dxl3, false);
	Fade("絵ＥＶ102", 1500, 1000, null, true);

	Delete("絵ＥＶ101");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
Koujaku's hand slowly slips on top of mine&.

The moment it touches&, my heart beats out of my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ103", 1103, -174, -106, "cg/ev/m/ev155蒼葉の手を握る紅雀_m.jpg");
	Move("絵ＥＶ103", 1000, -174, -42, Dxl1, false);
	Fade("絵ＥＶ103", 1000, 1000, null, true);

	Delete("絵ＥＶ102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000710a02">
"&.&.&.I&, how should I&.&.&. it looks like I've fallen for you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000720a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
&.&.&.My ears and face are probably as red as Koujaku's&.

I can feel my body temperature rise all the way from my 
toes to my face&.

Koujaku grasps my fingers tightly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0204]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000730a02">
"&.&.&.I love you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000740a02">
"Ever since we were kids&. I've loved you&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000750a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
A warm feeling burns up in my chest&, and I let out an 
excited breath&.

What do I&.&.&.
My chest feels tight&, and it hurts to breathe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000760a02">
"&.&.&.Aoba&, what about you?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000770a02">
"How do you feel about me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ104", 1104, -489, -284, "cg/ev/l/ev155蒼葉の手を握る紅雀_l.jpg");
	Move("絵ＥＶ104", 1000, -652, -284, Dxl1, false);
	Fade("絵ＥＶ104", 1000, 1000, null, true);

	Delete("絵ＥＶ103");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0213]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000780a01">
"&.&.&.I&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
My lips turn dry&, and I run my tongue over them&.

How do I feel about Koujaku?

A precious friend?
An amiable guy&.

&.&.&.No&.

I reached my answer when Koujaku was speaking&.

If I didn't&, then my heart wouldn't be going crazy like 
this&.

My face&.&.&. wouldn't be turning so hot&, either&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ104", 800, -652, -159, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000790a01">
"&.&.&.Me too&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000800a01">
"I feel the same way&. Probably&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000810a02">
"The same?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ105", 1105, Center, Middle, "cg/ev/ev155蒼葉の手を握る紅雀.jpg");
	Move("絵ＥＶ104", 1000, -552, -159, Dxl3, false);
	Fade("絵ＥＶ105", 1000, 1000, null, true);

	Delete("絵ＥＶ104");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000820a01">
"I thought you were an important childhood friend&. An
 important friend&. But&, that's wrong&. At some point&, I
 probably&, felt the same way&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000830a01">
"&.&.&.I think- I love you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5000840a02">
"&.&.&.Aoba&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5000850a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
I grab his hand&, and move closer to his face&.

{
	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1400,null,false);
}
I reflexively close my eyes&.&.&.
And our lips touch&.

An electric shock runs throughout my body&.

From now on&.&.&. from now on&, things will be different&.

Between me and Koujaku&.

If there was an invisible line&, we've crossed it&.

With everything we've done&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1551h.nss"]

}