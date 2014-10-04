//<continuation number="140">
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


scene dm1120.nss_MAIN
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
	$GameName = "dm1130.nss";

}


scene dm1120.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//覇：下記消灯差分あるなら差し替え
//	OnBG(10,"bg302011_5_グリッター部屋01消灯");
//	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");
	CreateTextureEXmul("絵背景上", 101, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");
	CreateColorEX("絵色黒", 4000, "000000");


	Fade("絵背景上", 0, 500, null, true);
	Fade("絵色黒", 0, 600, null, true);
	DrawTransition("絵色黒", 0, 0, 300, 1000, null, "cg/data/circle_02_01_1.png", true);


	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,300,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("上背景", 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I woke up early the next morning&.

More like something woke me up&.

Some sounds did&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：がたんと１階から物音
	CreateSE("SE01","se物体_グリッター玄関_扉開く01");
	MusicStart("SE01",0,150,0,800,null,false);

	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I can hear something from downstairs on the first floor&.

First floor&.&.&. the entryway?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景*");
	Delete("絵色黒");

	OnBG(10,"bg302061_5_グリッター階段");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I get up&, leave my room&, and peek down the staircase&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The entryway door was shut closed&.

That must've been Koujaku leaving&.

I look at my Coil&, and realize that it's extremely early 
in the morning&.

Koujaku&.&.&.

My suspicion towards him grows bigger&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000020a01">
"&.&.&.Ren&. Where do you think Koujaku went?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I call out to Ren&, who is still inside my bedroom&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/2000030a06">
"It is unknown&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000040a01">
"I'm going to suggest something very bad&, is that okay?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/2000050a06">
"What is it?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000060a01">
"Let's follow Koujaku&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/2000070a06">
"I won't say whether that's good or bad&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000080a01">
"I mean&, it's obvious something's up&. There's no way he
 knows anyone in Platinum Jail either&. He might just be
 sneaking around or something&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/2000090a06">
"There is the possibility&.&.&."

{
	FwPro("fw蒼葉_通常_normal2",4850,"fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000100a01">
"If he's just going out to buy some breakfast&, that's fine
 too&. Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);



	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	Wait(500);
	CreateSE("SE01","se物体_ドア木_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

	SoundPlay("@dm004",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I put Ren in my bag and quickly make my way out of Glitter&.

I feel awkward doing this&.
It's not as if I've lost all my bearings&, but&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/2000110a06">
"Aoba&, this way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
I turn my head just as Ren says&, and see a man in casual 
red clothing some distance away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000120a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
He really doesn't look like he's out to get food or 
anything&.&.&.

And where is he going?
On a walk? Or&.&.&.

To that girl from yesterday's place?

No way&.&.&. didn't I tell him to be careful just last night?

&.&.&.Looks like he didn't listen at all&.

I'm not clear on where exactly he's heading&, but I try to 
decide quickly&.

&.&.&.Which is what I wanted to do&, but I'm not able to calm 
my suspicions at all&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/2000130a06">
"Aoba&, you're thinking too hard again&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/2000140a01">
"&.&.&.I know&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I wonder what Koujaku could be thinking&. All I can do is 
wait and believe in him&.

I can't just follow him around like this all day&, I need 
to get more information on Toue&.

&.&.&.But&.

I can't get my mind off Koujaku either&. Where is he going?

More than suspecting him&.&.&. I just want to know where 
he's heading to so I can feel at ease&.

I'm drowning in guilt&, and start to chase after Koujaku&, 
hoping I won't get caught&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm1130.nss"]

}
