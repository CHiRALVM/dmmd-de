//cono「演出：BGM後ほど調整」//<continuation number="2010">
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


scene dm2550h.nss_MAIN
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
	$GameName = "dm2551h.nss";

}


scene dm2550h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg107011_1_病院個室");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg107021_1_病院病室前.jpg");

	$ftime=0;if($RECRIB_PLAY==1){$ftime=1000;}//回想時
	FadeDelete("上背景", $ftime, null, true);

	CreateSE("SE01","se物体_蒼葉自室窓_開閉01");
	MusicStart("SE01",0,1000,0,800,null,false);

	DrawDelete("絵背景100", 500, 100, null, "slide_01_00_1", true);

	SetVolumeEX("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I open the door&, I see Noiz laying on the bed&, sittingup and reading a magazine&.

He's wearing the simple hospital robe&, but is covered from head to toe in white bandages that are painful to even lookat&.

But he actually seems to be in a sort of good condition&.

{
	CreateSE("SE01","se擬音_紙_袋漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);
}
I stepped up to the edge of the bed&, pulled out a package 
from my bag&, and put it on the sidetable&.

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000010a01">
"I brought Granny's doughnuts today&. Have some&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I took off my jacket&, put my bag on the floor&, and sat on 
a round stool&.

Noiz put down the magazine onto his lap and blankly looked around&.

{
	Fw("fwノイズ_通常病院着_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000020a03">
"Ahh&.&.&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000030a01">
"What&, don't want any?"

{
	Fw("fwノイズ_通常病院着_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000040a03">
"&.&.&.I'll have some&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Noiz's awkward gaze moves back to me&.

Compared to when we first met&, he's a lot more obedient 
now&. Frankly&, it's pretty great&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,1000,null,false);

	SetVolumeEX("SE*", 800, 0, null);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000060a01">
"Here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
When I take a doughnut out of the bag and offer it to him&, Noiz makes an unwilling look&.

Man&, I know he loves these&.
That's kind of cute&.

I bite into it without any hesitation&.

It was really good; work at Heibon today was super busy&, 
so I had to miss lunch&.

The new parts that just came in have been really popular&, 
so it's been a fight over orders between customers lately&. 
Thanks to that&, we're completely sold out&.

I'm happy the shop is keeping profits up&, but the internet and phone orders have been hectic to take care of&.

But it's good to be busy once in a while&.

{
	Fw("fw蒼葉_通常_cheese2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000070a01">
"Granny said that you should come over to eat when you get
 discharged&. I think she meant you absolutely had to come
 over though&."

{
	Fw("fwノイズ_通常病院着_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000080a03">
"Sure&, I guess I'll come&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000090a01">
"How much longer before you're discharged?"

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000100a03">
"The doctor said a quick two weeks but another month after
 that&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000110a01">
"It's taking some time&."

{
	Fw("fwノイズ_通常病院着_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000120a03">
"Well&, I still have a lot of scans left to do&, too&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000130a01">
"&.&.&.How's your body? Like&, your senses&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000140a03">
"Ah&, they checked that out&, but it looks like it's all
 back&."

{
	Fw("fw蒼葉_通常_cheese2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000150a01">
"Is that so? So things like the IV and injections must've
 surprised you when they hurt&."

{
	Fw("fwノイズ_通常病院着_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000160a03">
"Nah&. But it was kind of interesting to feel the sting of a
 needle&, I've never felt it before&."

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000170a01">
"Interesting&, really?"

{
FwPro("fwノイズ_通常病院着_serious",3000,"fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000180a03">
"Yeah&.&.&. Oh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,450,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Noiz took the last bite of my doughnut and plopped back 
onto the bed&.

Crumbs of it fell off and rolled down onto his stomach&.

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000190a01">
"Jeez&, you're a weird kid&."

{
	Fw("fwノイズ_通常病院着_angry3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000200a03">
"Shut up&. Have some pity&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000210a01">
"Alrighty then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_椅子_引く01");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreateTextureEX("絵背景100", 100, -153, -182, "cg/bg/m/bg107011_1_病院個室_m.jpg");
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I get up from the stool and reach out my hand to pick up 
the remnants of the doughnut&.

{
	FwPro("fw蒼葉_通常_normal",1500,"fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000220a01">
"It's all off&. &.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,400,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 3, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwノイズ_通常病院着_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000230a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Noiz grabs my arm before I sit back down on the stool&. I 
look at him&, surprised&.

It looks like he wanted to say something&.

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000240a01">
"What?"

{
	Fw("fwノイズ_通常病院着_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000250a03">
"&.&.&.I've been thinking about some things ever since my
 senses came back&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
He must've been thinking hard while he spoke&, because his 
words were only puttering out of his mouth&.

&.&.&.What?

The atmosphere feels different now&.

{
	Fw("fwノイズ_通常病院着_serious");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000260a03">
"Can we talk about something?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000270a01">
"&.&.&.Sure&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_normal3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000280a03">
"Uh&.&.&. I've always been pushed away by my parents and other people&, so this had never happened to me before&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000290a03">
"I thought it was obvious that I was meant to live alone&."

{
	Fw("fwノイズ_通常病院着_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000300a03">
"I couldn't understand why people interfered with others&,
 and anyone who tried to interfere with me was only after
 my money for themselves&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000310a03">
"I had trouble acknowledging peoples' existences&, so when
 you forced your way into my life&, it was so annoying at
 first and I couldn't do anything about it&. I just
 didn't understand why&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000320a03">
"But you did a lot of things for me and told me things&,
 so I thought I'd try to figure you out&."

{
	FwPro("fwノイズ_通常病院着_normal2",8200,"fwノイズ_通常病院着_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000340a03">
"And&, uh&, I'm like this all because of you now&. I sort of
 came to understand that this world wasn't all that bad
 like you said&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000350a01">
"&.&.&.&.&."

{
	FwPro("fwノイズ_通常病院着_normal3",15000,"fwノイズ_通常病院着_normal2");
//	Fw("fwノイズ_通常病院着_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000360a03">
"If it weren't for you&, I'd probably be dead right now&. I
 wouldn't have cared&. Even now&, I can say I still feel that
 way&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000370a03">
"I learned what pain was&, so what it felt like in your body and in your heart&.&.&. I felt it all when you saved me&."

{
	FwPro("fwノイズ_通常病院着_angry2",6500,"fwノイズ_通常病院着_angry3");
//	Fw("fwノイズ_通常病院着_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000380a03">
"I definitely didn't want you to die&, so I thought it'd
 have been better for me to die instead&. It was amazing&,
 it gave me a rush that took my breath away&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000390a01">
"Noiz&.&.&."

{
	FwPro("fwノイズ_通常病院着_angry3",8500,"fwノイズ_通常病院着_normal3");
//	Fw("fwノイズ_通常病院着_angry3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000400a03">
"So I want to&.&.&. thank you&. And now&, I&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Noiz stops talking and bites his lip&.

I tense up&, waiting to hear what he'll say next&. 

My heart feels like it's about to burst right out of my 
chest because of that little speech he just gave&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000410a03">
"&.&.&.I want to touch you again&."

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000420a01">
"Eh?"

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000430a03">
"I want to touch you&.&.&. now that I can feel things again&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000440a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Noiz slides his hand down from my arm to the back of my 
hand&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,600,0,800,null,false);
}
And like that&, he slowly grips my hand&.

{
	Fw("fwノイズ_通常病院着_serious");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000450a03">
"What about you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Noiz's eyes gaze straight into my own&.

I&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Move("絵背景200", 500, @0, @-30, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
I thought Noiz was a dangerous and odd guy at the start&, 
but not someone I'd ever want to leave alone&.

But&.&.&. when I started to learn more about him&, I learned 
about all the things he was fighting inside&.

I saw him as a little kid in a man's body&, finding his 
actions cute at times&. It's the same now&.

It was only because I wanted to take care of him&, though&.&.&.

I'm sure I've seen the depths of him&.

I can feel it&.

And this here means&.&.&.

That I should've been a little self-aware&.

{
	FadeDelete("絵背景200", 1000, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝返り");
	MusicStart("SE02",0,500,0,1000,null,false);
}
I turn around my hand that Noiz was holding and intertwine 
our fingers&.

{
	Fw("fwノイズ_通常病院着_shock");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000460a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Noiz blinked with a slight look of confusion on his face&.

That probably showed him my answer&, but&.&.&.

I could feel my face heating up&.

I could hear my heart pounding and could feel the sweat 
seeping out of my palms&.

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000470a03">
"&.&.&.I can take this as a yes&, right?"

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000480a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("絵背景100", 500, @20, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Noiz pulls my hand to his mouth and kisses it&.

My shoulders shuddered to the feeling&, but he strengthened his grip and pulled harder on my hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000490a01">
"Whoah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	Wait(1000);

	CreateSE("SE02","se物体_紙_落ちる雑誌01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
My body lurches over and hangs over Noiz&.

I hear the magazine fall to the floor&.

Well then&.&.&.

I see a strange&, feverish look in Noiz's eyes&.

No&, does that mean&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000500a01">
"R-Right here&, right now?"

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000510a03">
"Don't want to?"

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000520a01">
"Not that I&.&.&. don't want to&, but&, we're in a hospital&.
 Won't someone come in?"

{
	Fw("fwノイズ_通常病院着_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000530a03">
"No one comes around this time&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000540a01">
"Really?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000550a03">
"Yeah&."

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000560a01">
"&.&.&.Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2551h.nss"]

}
