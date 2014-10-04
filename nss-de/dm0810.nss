//<continuation number="1070">
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


scene dm0810.nss_MAIN
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
	$GameName = "dm0820.nss";

}


scene dm0810.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000010b03">
"Toue has always been doing neural research&. To put it
 simply&, I worked with the brain's plasticity&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000020b03">
"We tested how some drugs could affect brains that had lost their functionality&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000030b03">
"I was hoping to find the solution to be able to save
 people who had damaged brains; I always believed that it
 was an amazing thing to study&."

{
	Fw("fwタエ_通常_sad");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000040b03">
"But&, it didn't turn out to be that way&."

{
	Fw("fwタエ_通常_shock");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000050b03">
"Toue's real objective was to find a way to manipulate
 people in any and every way possible&. That's what the
 research was for&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000060b03">
"I believe that they often designed secretive programs&, and
 the issues grew over time&. When I looked into it&, you
 could see it in their documents&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000070b03">
"In there I read that they had perfectly substitued a
 person's consciousness successfully&."

{
	Fw("fwタエ_通常_sad");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000080b03">
"When I saw that&, I felt like I was dead&. I did it all to
 save people&, and in the end it backfired&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000090b03">
"After that I stopped all of my research and quit&. I
 decided that I'd return to this island&, my hometown&,
 and live  the rest my life in peace&, without Toue in it&."

{
	Fw("fwタエ_通常_normal2");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000100b03">
"But&, a little while ago I got a message&. From Toue&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000110a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000120b03">
"He wrote that there was an emergency at the research
 center and requested that I return&. But I kept refusing&.
 I never want to associate myself with him ever again&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000130b03">
"He must've gotten furious at me&. Then they took serious
 action&. That's what Morphine is&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000140a01">
"But&, then why was Mizuki&.&.&. Why was Dry Juice caught up in it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000150b03">
"Recently&, haven't young people all around on this island
 been disappearing? They drug them up&, cause them to lose
 their senses&, and make them their patients&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000160b03">
"I think those are Toue's victims&. They coax them into
 Morphine and release them into the city&, just so they
 can be monitored for progress&."

{
	Fw("fwタエ_通常_normal2");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000170b03">
"Otherwise they wouldn't have released failed subjects&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000180a01">
"Failed subjects&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000190b03">
"The ones who can't handle it and break down&. Their minds
 are destroyed and they become invalids&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/1000200a02">
"Then what happens to the successful ones?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000210b03">
"They're retrieved and are subjected to even more
 experiments&. Like when I spoke of the people with
 substituted consciousness&.&.&. They've lost their
 freedom by then&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000220b03">
"Didn't you see it when you looked at Mizuki? He stepped
 all over me because I was caught unprepared&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000230a01">
"What's Toue trying to do with the research? What's going
 to happen to the island now?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000240b03">
"Most likely to rid all people on this island of their
 minds&. That way Toue will be able to rule unopposed over
 his 'Kingdom'&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000250b03">
"If the method to break a person's mind is found quickly
 enough&, he'll also be able to buy other countries&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000260a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000270b03">
"Toue has his hands deep in this Old Residential District&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000280b03">
"It's been peaceful for several years now&, but&.&.&. his real
 plan may be only beginning now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Then everyone in this district will become like those test subjects?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg101011_1_旧住民区通り表.jpg");
	CreateTextureSP("絵演立絵", 300, Center, InBottom, "cg/st/st羽賀_通常_normal.png");
	CreateTextureSP("絵演立絵弐", 300, Center, InBottom, "cg/st/stヨシエ_通常_normal.png");
	CreateTextureSPmul("絵演回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");
	CreateColor("絵演出色", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵演出色","絵演出色");
	Request("絵演出色", OverlayRender);

	St("C",741, @0,@0,"stミオ_通常_normal");
	St("ML",740, @0,@0,"stキオ_通常_normal");
	St("MR",740, @0,@0,"stナオ_通常_normal");
	FadeAllSt(0,true);
	Move("@StNameC/C*", 0, @0, @50, null, true);
	Move("@StNameML/ML*", 0, @30, @50, null, true);
	Move("@StNameMR/MR*", 0, @-30, @50, null, true);
	Move("絵演立絵", 0, @-131, @40, null, true);
	Move("絵演立絵弐", 0, @131, @40, null, true);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
Haga-san&, the stupid brats&, Yoshie-san&, everyone&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演*");
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000290a01">
"&.&.&.We have to stop him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000300a01">
"I won't let him&. I'll never let that happen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
As I mutter those words&, Granny looks at me with a pained  face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000310b03">
"&.&.&.There's still something I have to say&, Aoba&. It's about you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000320a01">
"Me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000330b03">
"You lost consciousness when you came to save me&, didn't
 you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000340a01">
"Oh&, yeah&. I had a really realistic dream too&.&.&. I talked
 with Mizuki in it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000350b03">
"That wasn't a dream&. What you were seeing was in Mizuki's
 head&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	FwPro("fw蒼葉_通常_shock",1600,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000360a01">
"&.&.&.Huh? &.&.&.In his head?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵立絵", 720, Center, Middle, "cg/fu/x/fuタエ_通常_normal_x02.png");
	CreateTextureSP("絵立絵弐", 710, Center, Middle, "cg/fu/x/fuタエ_通常_normal2_x02.png");

	DeleteSt("C", 200,true);

	CreateTextureSP("絵背景", 100, 50, -160, "cg/bg/l/bg104021_5_蒼葉宅台所_l.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", MEDIUM);

	Zoom("絵背景", 0, 1300, 1300, null, true);

	Move("絵立絵*", 0, @-50, @0, null, true);

	Move("絵背景", 1000, @25, @0, Dxl1, false);
	Move("絵立絵*", 1000, @50, @0, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Granny makes sure of something and looks into my eyes&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵立絵", 200, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000370b03">
"Don't you tell me that it's nothing&."

{
	dm0620_delay_pro();
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000380b03">
"I don't know if you'll believe me so easily&, but&.&.&. You're
 able to mix your consciousness in with other peoples'
 minds&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreatePlainSP("絵板写", 5000);

	Delete("@プロフェード*");
	Delete("@絵立絵*");
	Delete("絵背景");
	Delete("絵立絵*");

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
&.&.&.What?
What did she say?

My own consciousness inside someone else's head?

I don't understand what Granny's saying&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000390b03">
"We called that ability Scrap&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000400a01">
"Scrap&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000410b03">
"In your case&, you can induce Scrap with your voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000420a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000430b03">
"I get over emotional when making speeches sometimes&, but I listen to why people say some things&. Don't you have a lot of those experiences?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev002蒼葉登場.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	Delete("絵効果*");

	CreateMaskSetSPTate("絵窓", 3010);//ナット名、優先度
	CreateTextureSP("絵窓/絵背景", 500, Center, Middle, "cg/bg/m/bg102021_5_平凡地下室_m.jpg");
	CreateTextureSP("絵窓/絵立絵", 1000, Center, Middle, "cg/fu/x/fuAMウサギモドキ_通常_normal_x.png");
	CreateColorSP("絵窓/絵薄黒", 700, "000000");

	SetShade("絵窓/絵背景", MEDIUM);

	Fade("絵窓/絵薄黒", 0, 300, null, true);

	CreateTextureSP("絵効果", 300, Center, Middle, "cg/bg/bg102021_5_平凡地下室.jpg");

	OpenTateMask("絵窓",0, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	CloseTateMask("絵窓",0,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev061全員集合a.jpg");


	EfRecoIn2(500);

	Wait(500);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000440a01">
"&.&.&.I guess you could say that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000450b03">
"Your voice has the power to pull people in&. If you decide
 to put it to use&, you'll be able to gain access to others'
 minds&."

//回想元（"dm4460_vs.nss"）
{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000460b03">
"If you're doing it to someone you know well&, and have a
 deep wish or desire&, you will most likely be able to plant
 that into their consciousness with your own&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000470b03">
"But&, if you use physical contact through the flesh as a
 means of contact&, the other person will be completely
 defenseless&."

{
	Fw("fwタエ_通常_shock");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000480b03">
"When you do that&, as soon as you speak&.&.&. There's a
 possibility that their mind will 'break'&. That's just
 a theory&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000490a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
I was already finding it difficult to understand Granny&, 
but now&.&.&.

If I speak to someone's consciousness&, I can control them?

Being able to face them in their own minds?
Possibily 'breaking' them?

I don't get it all&.

It feels like she's speaking in some language I don't 
understand&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stミンク_通常_normal2");
//	FadeSt("C",200,true);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/1000500a05">
"&.&.&.So that's what it was&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
Mink&, who was in the other room&, walks in at some point&, 
arms folded and leaning on a wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000530b03">
"Scrap is a strong power in your voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev071ミズキ苦しむ.jpg");
	DeleteSt("C", 0,true);

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

//	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000540a01">
"Then that weird place in my dream was actually Mizuki's
 mind&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000550b03">
"I can't say what you saw exactly&. But it probably was&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000560a01">
"I talked to Mizuki back there&. He was like he usually is&,
 and&.&.&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000570a01">
"He told me about how he was in so much pain&, and how he
 worried about Rib and Dry Juice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cranky3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/1000580a02">
"So that's what he was so hung up about&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000590b03">
"&.&.The one you were speaking to was Mizuki's consciousness&.
 It was the real Mizuki&, with no lies&, only complete 
 truths&. How did you answer?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000600a01">
"I&.&.&. For some reason&, I suddenly remembered my past&.&.&.
 I don't understand why I forgot completely about being in
 Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
Koujaku and Noiz look at me&.
So it was like that&.&.&.

It's because I've always refused to participate in Rhyme&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000610a01">
"But&.&.&. when I was talking to the real Mizuki&, it felt
 weird like Rhyme did&.&.&. I can't really describe it&.
 What was it&.&.&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000620a01">
"Mizuki&.&.&. He was telling me something&. That Morphine
 wasn't what we thought it was&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000630a01">
"But before he said that&, he looked like he was in so much
 pain&.&.&."

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm08/1000640a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000650b03">
"Hm&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Deep wrinkles form on Granny's brow&, she snorts&, and 
begins to think&.

There was still the matter at hand to talk about&, but her  silence stays heavy&.

Here&, everyone is listening to Granny's words&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000660b03">
"This is my opinion&, and I'm not trying to condemn you at
 all&. But&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Fw("fwタエ_通常_normal");

//※↓"dm1380.nss"で回想（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000670b03">
"If you had chosen the right words at that time&, Mizuki's
 consciousness might have returned&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000680a01">
"Huh&, you mean&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0144]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000690b03">
"It's a horrible way of saying it&, but you could've taken
 the half-dead Mizuki and drawn out his true feelings&, but
 you left him there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000700b03">
"If you had&, for example&, 'peeled off his outer shell and
 exposed his flesh' in a way&. It's a very delicate thing&."

{
	Fw("fwタエ_通常_normal2");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000710b03">
"So&.&.&. Mizuki's consciousness will never return&. Isn't
 that right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/1000720a02">
"Yeah&, that's what I'm hearing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000730b03">
"Mizuki was strung along in a trap by Toue&. Like when he
 was feeling the pain of his head splitting apart when you
 tried to speak to him&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000740b03">
"When he was dragged out and then left alone&, Toue's trap
 set off&. And that's why his mind has been destroyed&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000750b03">
"If he ever does come back&, it'll be from of his own
 willpower&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000760a01">
"! No way&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, 0, Middle, "cg/bg/bg101021_5_旧住民区通り裏路地01ドライジュース.jpg");

	St("C",1740, @0,@0,"stミズキ_通常_smile");
	FadeSt("C",0,true);

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
Mizuki's mind was destroyed&.&.&. and it was my fault?

{
	CreateColorSP("絵色黒", 10001, "000000");
	DrawTransition("絵色黒", 500, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);
}
&.&.&.My vision goes pitch black&.

My fault&, no&.&.&.&.
Mizuki&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	EfRecoOut1(0);

	Delete("絵効果*");
	DeleteSt("C", 0,true);

	EfRecoIn2(0);

	FadeDelete("絵色黒", 500, null, true);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000770b03">
"Aoba&. Your power is capable of destroying people&. That's
 why you need to be aware of it&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000780b03">
"I've always been thinking about when I should tell you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0156]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000790a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0157]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000800b03">
"I've always been here for you&. I've been able to protect
 you in this cage&. But now that's no good anymore&."

{
	Fw("fwタエ_通常_normal2");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000810b03">
"If you use it to protect me&, it'll just go wild and all
 you'll be met with is misery in the end&. It's why Toue
 found you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000820b03">
"You were one of the first there when Toue began his
 research&. They wanted that power&, and they were willing
 to put their hands on your throat for it&."

{
	Fw("fwタエ_通常_sigh");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000830b03">
"This time they're forcing their way in&, but I don't know
 what Toue is up to right now&. That's why you have to go
 on your own now&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000840a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
Even if you say that&.&.&.
I can't just accept it like that&.

What Granny just said was as much as I could take&.

But&.&.&.

But&, I understand that letting Toue do whatever he wants 
is dangerous&.

If I ignore him&, this island will become his plaything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000850b03">
"A special event is opening in Platinum Jail soon&. It's not
 clear what it'll be about until the day it opens&, but
 they're offering it to the Old Resident District too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/1000870a04">
"Why is the Old Resident District being invited? Isn't it
 usually isolated from Platinum Jail?"

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm08/1000880a03">
"They're opening it to the public&, and testing things out
 by inviting the District&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000890b03">
"Exactly&. The research is still unknown to the public&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000900b03">
"But with this event&, they'll be able to observe the
 results of their experiment&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/1000910a02">
"How are they going to observe them?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000920b03">
"Songs&, speeches&, lights&, videos&.&.&. They want to figure out
 how the people can be broken&, and if they can acquire
 anything new&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0184]
Saying that&, there's nothing we can do before the event&, 
is there&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/1000930a02">
"We'd better get to Platinum Jail as soon as possible&.
 Maybe even tomorrow&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000940a01">
"How are we going to do this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000950b03">
"There's a way to get in before the gates open&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1000960a01">
"There is?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0193]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1000970b03">
"Yes&. But I can't move&. You'll have to depend on someone
 else to help&. Go to Haga-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1001000a01">
"To Haga-san?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1001010b03">
"People that have lived here for a long time pretty much
 all know&. It's not too difficult&. You can ask for even
 more details&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
After saying that&, Granny gives out a pained breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1001020b03">
"Well&.&.&. I've talked a lot&, haven't I&, even though you all
 kept interrupting me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1001030b03">
"It wasn't much&.&.&. but I told you of the truth I saw when I
 was a researcher&. I'm sorry for getting you all caught up
 in this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_椅子_引く01");
	MusicStart("SE01",0,700,0,1200,null,false);

//	CreateSE("SE01","se人体_動作_衣擦れ01");
//	MusicStart("SE01",0,500,0,1400,null,false);
//	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
Granny faces us and lowers her head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/1001040a01">
"Granny&.&.&."

{	Fw("fw紅雀_通常_sad");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/1001050a02">
"Tae-san&, don't&.&.&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/1001060a04">
"Grandmother&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0213]
After lowering her head for a few more seconds&, she looks  at everyone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/1001070b03">
"Now&, you all must be tired now&. You all could do more if
 you'd like&, but it's better to let yourselves rest now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※次ファイル["dm0820.nss"]

}
