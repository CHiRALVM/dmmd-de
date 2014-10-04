//<continuation number="330">
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


scene dm0841.nss_MAIN
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
	$GameName = "dm0850.nss";

}


scene dm0841.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//=========================
//紅雀の場合
//=========================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I get out of bed and leave my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg104011_5_蒼葉宅玄関消灯");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/m/bg104011_5_蒼葉宅玄関消灯_m.jpg");

	FadeDelete("絵板写", 1000, null, true);

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I walk down the hallway and see the shadow of someone 
sitting on the staircase below me&.

That's&.&.&.

Before I can speak&, the person turns around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演出", 500, -145, 500, "cg/bg/l/bg104011_5_蒼葉宅玄関消灯_l.jpg");
	Request("絵演出", Smoothing);

	Zoom("絵演出", 0, 2400, 2400, null, true);
	SetShade("絵演出", MEDIUM);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_smile");

	Move("@StNameC/C*", 0, @-30, @0, null, true);
	Move("@StNameC/C*", 1000, @30, @0, Dxl1, false);
	Move("絵演出", 1000, @15, @0, Dxl1, false);

	SetVolumeEX("SE*", 1000, 0, null);

	FadeSt("C",1000,false);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100010a02">
"Yo&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100020a01">
"Koujaku&. What're you doing over there?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100030a02">
"One second&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	Delete("絵演*");

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景", 1000, @0, @-30, null, false);
	FadeDelete("絵板写", 1000, null, true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I walk down the stairs and sit on the step just above 
Koujaku&. The lights aren't on so it's pretty dark&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100040a02">
"I actually felt like taking a walk&, but I'd probably get
 lost around here&. So I'm just sitting here to pass time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100050a01">
"Thinking about things?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw紅雀_通常_normal",2950,"fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100060a02">
"Pretty much&. What about you? Couldn't fall sleep?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100070a01">
"&.&.&.Yeah&. A lot of things happened&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100080a02">
"Anyway&, you're insane&."

{	Fw("fw紅雀_通常_cranky2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100090a02">
"Getting Ruff Rabbit to come out&, a weird gas mask guy got
 attached to you&, and to get the main man from Scratch to
 come out too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100100a01">
"Sorry&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_sad2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100110a02">
"Ah&, no&, my bad&. That's not what I mean&. I'm not trying to
 criticize you&, just&.&.&."

{	Fw("fw紅雀_通常_think");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100120a02">
"Didn't Tae-san just say it earlier too? You make people
 worry about you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100130a01">
"That's true&. I guess I do that a lot&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw紅雀_通常_fake",4850,"fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100140a02">
"Wait&, no&. I don't mean&.&.&. How do I put it- you- I've
 always been taking care of you&. Ever since we were
 little&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100150a02">
"So when I look at you&, I think that just being able to
 talk about stupid little things is fun enough&."

{	Fw("fw紅雀_通常_cry2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100160a02">
"That was a pretty long time ago&, huh? But it's not like
 I'm complaining&."

{	Fw("fw紅雀_通常_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100170a02">
"It really wasn't bad&. You can tell without me saying it&,
 right? That's why I guess I keep talking my mouth off&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100180a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100190a02">
"Don't beat yourself up over what happened to Mizuki&. Then
 again&, it's probably not as easy as it sounds&."

{	Fw("fw紅雀_通常_normal");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100200a02">
"If you feel like it happened because of irresonsibility&,
 you can put it all on me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100210a01">
"&.&.&.Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Koujaku would always encourage me&.

Happy that he feels that way&, I shyly thank him&.

Koujaku glances at me and looks like he wants to say 
something&, but he just silently fondles his bangs with 
his hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw紅雀_通常_think",4500,"fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100220a02">
"Your power&.&.&. Scrap&, right? That too&. If you think it's
 too dangerous or scary&, I still don't&." 

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100230a02">
"I was pretty surprised to find out that you did Rhyme&,
 though&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100240a01">
"I really did forget&, I wasn't trying to hide it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw紅雀_通常_normal2",6300,"fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100250a02">
"I know&. I've been with you so long that I can tell when
 you lie&. But I don't think of it as a bad thing&."

{	Fw("fw紅雀_通常_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100260a02">
"You've never blamed me for anything&, and you're the person who's suffering the most now&. We're going to do whatever   we can&. That's it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100270a01">
"&.&.&.Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I thank Koujaku for his serious talk&.

Koujaku exhales and gives me a small smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100280a02">
"We're going to be infiltrating Platinum Jail now&, you
 know? No doubt something weird'll happen&, and I don't
 even know what to do when it does&."

{	Fw("fw紅雀_通常_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100290a02">
"You should get some sleep too&. You need to give your body
 a rest&, okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_smile2",2600,"fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100300a01">
"Right&, I will&. But you too&. Go get some sleep&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_happy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100310a02">
"Got it&. I will&, so don't worry about me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4100320a01">
"Well&, good night&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/4100330a02">
"Good night&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	DeleteFw();

	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
I stand up and walk back up the stairs to return to my 
room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Talking to Koujaku made me calm down a bit&.

Now I need to think of what to do next&.
I have to concentrate&.

And that means&.&.&.I can't keep thinking about how I 
could've saved Mizuki anymore&.

All I can do now is sleep and give my brain a rest&. I lie 
down on the bed and close my eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	ClearFadeAll(3000, true);

	Wait(3000);

//※次ファイル["dm0850.nss"]

}
