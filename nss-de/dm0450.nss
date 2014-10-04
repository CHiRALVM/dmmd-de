//<continuation number="210">
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


scene dm0450.nss_MAIN
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
	#bg101021_5_旧住民区通り裏路地01モルヒネ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0460.nss";

}


scene dm0450.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
While making ourselves very noticable&, I start to feel 
that something is wrong when we get close to their turf&.

Dry Juice members would always hang around in this area&, 
but there's no one here&.<k> Not a single person&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000010a01">
"It's like a ghost town&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000020a02">
"Do you think they moved to another place?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000030a01">
"I didn't hear anything about that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I feel a horrible premonition&.

I quicken my pace and hurry on my way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg101021_5_旧住民区通り裏路地01モルヒネ");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 105, -1024, Middle, "cg/bg/bg101021_5_旧住民区通り裏路地01モルヒネ.jpg");
	CreateTextureSP("絵背景弐", 100, Center, 0, "cg/bg/m/bg101021_5_旧住民区通り裏路地01モルヒネ_m.jpg");

	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I go into the alleyway where they usually hang out&.
And of course&, no one's there either&.

Koujaku stops and grabs onto my arm as I attempt to hurry  through the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000040a02">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock",1600,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000050a01">
"What&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	Move("絵背景", 1000, @100, @0, Dxl1, false);
	CreateColorEX("絵色黒", 1000, "000000");
	Fade("絵色黒", 800, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I look to the same place Koujaku is&, and I freeze up&.

&.&.&.It's gone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateColorEXsub("絵色黒弐", 5000, "WHITE");
	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateTextureEX("絵窓/絵演出", 1500, Center, Middle, "cg/ef/eflドライジュース.jpg");
	Fade("絵窓/絵演出", 500, 1000, null, true);

	Wait(500);

	CreatePlainSP("絵板写", 5000);

	DrawTransition("絵窓/絵演出", 0, 1000, 350, 100, null, "cg/data/effect_01_00_0.png", true);
	Fade("絵色黒弐", 0, 300, Dxl1, true);

//	FadeDelete("絵板写", 1000, null, true);
	DrawDelete("絵板写", 500, 100, Dxl1, "slide_03_00_1", true);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
The Dry Juice tag art on the wall&.&.&.
It's been painted out pitch black&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000060a01">
"Why&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
No way&.&.&. Were they defeated?

But by whom? What team?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DrawTransition("絵窓/絵演出", 500, 350, 0, 100, Dxl1, "cg/data/effect_01_00_0.png", true);
	Delete("絵窓/絵*");
	Delete("絵窓*");
	Delete("絵色黒弐");

	Fw("fw紅雀_通常_angry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000070a02">
"Aoba&, look at that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵背景", 0, 0, null, true);
	Move("絵背景", 0, -280, @0, null, true);

	Move("絵背景弐", 0, @-100, @0, Dxl1, true);
	Move("絵背景弐", 500, @50, @0, Dxl1, false);
	FadeDelete("絵色黒", 500, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
On the wall&, there's a different picture painted&.
It's not Dry Juice's&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演出", 1000, Center, Middle, "cg/ef/eflロゴモルヒネ.jpg");
	Fade("絵演出", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Robot-like wings&.&.&. and a halo around a heart&.

That tag belongs to&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000080a01">
"Morphine&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
That can't be&.&.&.

Morphine took out Dry Juice&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_worry");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000090a02">
"'Mysterious disappearances'&, my ass&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Koujaku mutters something and my heart skips a beat&.

Yeah&.&.&. their 'mysterious disappearances'&.
I thought they were just an urban legend&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演出", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.No&, this might just be a prank or something&.

Dry Juice is the largest team in Rib&.

There might've been some people who didn't find it fun 
anymore&, so they might have done this and fled&.

So they must be trying to blame it on Morphine to get 
away&.&.&.

That's just as realistic if not more than them being 
abducted&.

&.&.&.Really&.
Is there really no one left here?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000100a01">
"&.&.&.Gh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※１人_軽く走る（蒼葉、走り出す）
	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景弐");

	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/bg101022_5_旧住民区通り裏路地02.jpg");
	Rotate("絵背景101", 0, @0, @180, 360, null, true);
	Fade("絵背景101", 0, 1000, null, true);

	Wait(500);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_01_01_1", true);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000110a01">
"Hey! Is anyone here!? Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se戦闘_動作_走る01a");
//	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景101", 101, Center, Middle, "cg/bg/bg101022_5_旧住民区通り裏路地02.jpg");

	Wait(500);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_01_01_1", true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
While running&, my shouts echo in the empty space&.

But no one answers me&.

Shit&.&.&.!
What's going on&.&.&.!?

I go towards the other alleyway where Mizuki would always 
be&.

There would definitely be a bunch of members there with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景101");
	Fade("絵背景", 0, 1000, null, true);

	DrawDelete("絵黒幕", 200, 100, Dxl2, "slide_01_01_1", true);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 350, 5, 5, 0, 0, 500, Dxl2, ture);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000120a01">
"&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I enter the other alleyway&.&.&.
I saw it coming&, but I still felt disappointed&.

As I predicted&, no one was there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 1500, 0, @0, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
And in the inner part of the alleyway&, the tag art of 
Rib's largest team was&, of course&, blacked out&.

What the hell is going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景過去", 1000, 0, Middle, "cg/bg/bg101021_5_旧住民区通り裏路地01ドライジュース.jpg");

	CreateColor("絵過去", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵過去","絵過去");
	Request("絵過去", OverlayRender);

	CreateTextureSPmul("絵過去効果", 2002, Center, Middle, "cg/ef/effi回想01.jpg");

	St("C",1500, @0,@0,"stミズキ_通常_smile");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Mizuki would always lean on the wall&, next to that tag&.

And whenever I came&, he'd greet me with a smile&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/wave_01_00_0.png", true);

	DeleteSt("C", 0,true);
	Delete("絵背景過去");
	Delete("絵過去*");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
Feeling as if everything important to me has been torn 
apart&, I turn my head away from the horrible sight&.

{	FadeDelete("絵黒幕", 500, null, true);}

But I look right back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵背景中", 300, 0, Middle, "cg/bg/m/bg101021_5_旧住民区通り裏路地01モルヒネ_m.jpg");
	Fade("絵背景中", 1000, 1000, null, true);

	Wait(1000);
	SetVolumeEX("SE*", 200, 0, null);

	Wait(1300);


//※足音_１人_駆け寄る
	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",800,700,0,800,null,false);

	Wait(1500);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,800,null,false);


	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000130a02">
"Aoba&, there's no one on the other side either&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
Koujaku came running into the alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw紅雀_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000140a02">
"It's bad here too&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000150a01">
"&.&.&.Hey&, this-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景大", 1000, 0, -526, "cg/bg/l/bg101021_5_旧住民区通り裏路地01モルヒネ_l.jpg");

	DeleteSt("C", 0,true);

	Delete("絵背景中");

	Move("絵背景大", 1000, @0, @-50, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(1000);

	FwPro("fw紅雀_通常_normal2",950,"fw紅雀_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000160a02">
"What&.&.&.!? This&.&.&. blood!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000170a01">
"It looks like it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
There are skid marks from shoes&, and blood is scattered 
eveywhere&. It looks fresh&.

When I take a more careful look&, there's evidence of trash being kicked around and fighting&.

The more I look&, the more it seems likely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

'Mysterious disappearances&.'
Morphine's work&.

People in Rib would always be fighting one another&, but 
the worst they would do would be to beat up each other and 
scribble over their tag&.

This isn't one of those situations&.
This is obviously more than just a petty fight&.

It looks like the opposing team didn't even think of 
holding themselves back&. They certainly got their message 
through&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000180a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵背景大", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
What&.&.&. happened here?

It should be bustling with Dry Juice members&.

Everyone got along&, and you could forget about your 
loneliness here&.

That's why I think people joined&.

You're not alone here&. There'd be numbers of people you'd  spend time with&.

Even if it was temporary&, the bonds between the members 
were as tight as family&.

For that&.&.&. to come to this&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_pain");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000190a02">
"Shit&, I can't get through to Mizuki&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Koujaku clicked his tongue while using his Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/5000200a02">
"What's going on? What kind of monster went through here?
 Is this Morphine's work?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/5000210a01">
"Mizuki&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※次ファイル["dm0460.nss"]

}
