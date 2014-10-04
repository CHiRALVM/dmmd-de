//<continuation number="280">
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


scene dm1190.nss_MAIN
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
	#ev118紅雀の刺青=true;
	#bg302031_5_グリッターバーカウンター=true;
	#bg302011_5_グリッター部屋01ベッド角=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1200.nss";

}


scene dm1190.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//あきゅん「演出：瞬き演出」
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	DrawTransition("絵色黒", 500, 1000, 800, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("絵色黒", 500, 800, 1000, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
	DrawTransition("絵色黒", 1500, 1000, 0, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);

	Wait(1000);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Blinking slowly&, I stare up at the ceiling&.

Looks like I've been out for some time&.

I'm not sure how long I was asleep&, but my body feels much better than before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, -17, -207, "cg/bg/m/bg302011_5_グリッター部屋01_m.jpg");
	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	Move("絵背景", 0, @0, @-50, Dxl1, true);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景", 1000, @0, @50, Dxl1, false);
	FadeDelete("絵板写", 1000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I carefully get up from the bed&, making sure not to throw 
off Ren by accident&.

The nausea has faded away&, and I feel pretty good as a 
whole&.

{
	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景", 500, null, true);
}
I get off the bed and drink the glass of water on the 
table in one sip&.

I was a lot more thirsty than I thought&.

I leave the room&, wanting more to drink&.

I feel just a little dizzy&, but I keep walking anyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg302031_5_グリッターバーカウンター");
	FadeBG(0,true);

	Delete("絵背景");

	FadeDelete("絵板写", 1000, Dxl1, true);


	CreateSE("SE11","se擬音_水_シャワー01");
	MusicStart("SE11",2000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I go over to the bar counter and pour myself some more 
water&. I hear some sounds come from downstairs&.

The dim sound of water&. Koujaku?

&.&.&.I should go apologize for before&.
It would be bad if I just left it&.

I want to speak with Koujaku&.
There's even more we need to discuss&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 500, null);
	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(800,true);
	Wait(500);
	SetVolumeEX("SE11", 500, 700, null);
	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
I go downstairs and head towards the bathroom&.

I walk down the hallway and stand in front of the door 
where the sound is coming from&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev118紅雀の刺青.jpg");
	CreateTextureSP("絵ＥＶ上", 1101, Center, Middle, "cg/ev/ev118紅雀の刺青.jpg");

	Move("絵ＥＶ*", 0, @10, @0, null, true);
	Move("絵ＥＶ上", 0, @8, @0, null, true);

	CreateColorSP("絵色黒", 4000, "000000");
	DrawTransition("絵色黒", 0, 1000, 950, 15, null, "cg/data/slide_06_00_0.png", true);

	Request("絵ＥＶ上", OverlayRender);
	SetShade("絵ＥＶ上", MEDIUM);

	SetVolumeEX("SE11", 1000, 0, null);
	FadeDelete("絵板写", 1000, null, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I open it a little&, but stop myself&.

I peek through the small gap of the door&, and see some 
bright colors&. It's not the red of his kimono&.

What is that&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SoundPlay("@dm015",0,450,true);

	Move("絵ＥＶ*", 1000, @-25, @0, null, false);
	FadeDelete("絵ＥＶ上", 1000, Dxl1, false);
	DrawTransition("絵色黒", 1000, 900, 700, 50, null, "cg/data/slide_06_00_0.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I control my beathing and push on the knob just a little 
bit so I can see better&.

Inside is Koujaku&, he looks like he's washing his kimono 
in the sink&. I can hear the sound of water running and the 
squelch of fabric being rubbed&.

He doesn't notice me with his back turned to me&.

My eyes are locked onto the vivid display on his back&.

&.&.&.A tattoo&.

Sprawled across his back were beautiful&, blooming red 
flowers&.

I can tell from the vibrant and fresh colors that it's the real deal&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreateTextureEX("絵一枚絵", 5000, Center, Middle, "cg/ev/m/ev118紅雀の刺青_m.Jpg");

	Move("絵一枚絵", 2000, @0, @-100, Dxl1, false);
	Fade("絵一枚絵", 2000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Seeing such a marverlous tattoo puts me into a sort of 
shock&.

Not just the tattoo&. Koujaku is covered in scars&. This is 
the first time I've ever seen them&.

When Koujaku returned to the island&, all I ever saw were 
the scars on his face and hands&.

He would just avoid the subject and smile away without 
saying any more about it&.

The scars on his chest were easily from his childhood&, but I couldn't think of the reason for getting a tattoo all    over his body&.

The Koujaku I see now only has faint traces of scars&. 
They've been there for some time&.

What would you have to go through to get that many scars?

The tattoo and the scars must've all happened when he went to the mainland&.

&.&.&.This is the Koujaku I don't know&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵一枚絵", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
If I had never seen this&, I never would've known&.

What happened to Koujaku when he was off the island&.&.&.?

It wasn't as if it was just for a little while&, though&. I 
thought I knew everything about Koujaku after he came back home&.

All I know is the old Koujaku from my past&.

The Koujaku I see here now&.&.&. I don't know who he is&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒弐", 5000, "000000");
	Fade("絵色黒弐", 1000, 1000, null, true);
	PrintGO("上背景", 20000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);


	FadeDelete("上背景", 500, null, true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
I step back from the door&, wondering how close I actually 
am to him&.

I realize that I had been holding my breath for some time&, and quietly breathe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

	Wait(500);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(1000,true);

	Wait(500);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
I stumble my way back up the stairs and into my bed&.

The tattoo on his back&. The countless scars&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
I couldn't count how many things were swirling around in 
my mind from then on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I close my eyes and calm down&, and then the door to my 
room opens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_normal");
	FadeSt("C",0,true);

	FadeDelete("絵色黒", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
&.&.&.It's Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_グリッター部屋01ベッド角");
	FadeBG(0,true);

	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I turn over right away towards the wall&, away from him&.

I don't want to let Koujaku&, who's tense enough&, see my 
face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：以降は紅雀の顔表示なし」

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000040a02">
"The bathroom dryer really helped me out&. It works really
 quick&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
He speaks with his usual tone&.

So I'll respond by being casual as well&.

Like nothing is wrong&.

But&.&.&.

I can't bring myself to do that&.

Still facing the wall&, I open my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000050a01">
"&.&.&.Koujaku&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000060a02">
"Hm?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000070a01">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000080a02">
"What is it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000090a01">
"What are you hiding from me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000100a02">
"&.&.&.What? Where'd this come from?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000110a01">
"Don't avoid the question&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000120a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000130a01">
"I don't know if I can trust you anymore&. I don't have it
 left in me&. I don't know anything about you anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
&.&.&.No&.
That wasn't what I wanted to say&.

I'm not sure whether to keep on talking&, but I just keep 
my mouth moving&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	FwPro("fw蒼葉_通常_worry",4700,"fw蒼葉_通常_worry4");
	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000140a01">
"I don't know about the time when you were off Midorijima&.
 I want to&, but I don't know how I can come to know&.&.&."

{
	FwPro("fw蒼葉_通常_worry4",9000,"fw蒼葉_通常_worry");
//	FwPro2("fw蒼葉_通常_think",6100,"fw蒼葉_通常_worry",3400,"fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000150a01">
"Right now&, I need to figure things out so I can get to
 Toue&. I can't horse around&. But&.&.&."

{
//	FwPro("fw蒼葉_通常_sad",3200,"fw蒼葉_通常_pain2");
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000160a01">
"&.&.&.I don't have it in me to trust you anymore&. You're not
 giving me any reason to&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000170a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000180a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	PrintGO("上背景", 20000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_think");
	FadeSt("C",0,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,900,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("上背景", 300, Dxl1, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
I think on what I just said&, and get up to look at Koujaku&.

Koujaku has a stern look on his face&, and just stares at 
his feet&.

Regret pools up inside me when I look at his face&.

Right as I find another thing to say&, Koujaku opens his 
mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_think2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000190a02">
"No matter-"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000200a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st紅雀_通常太刀なし_think2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000210a02">
"No matter what&.&.&. I can't tell you&. I'm sorry&, Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
He looks at me with a painful and anxious expression&, 
giving me the same refusal as last time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_cry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000220a02">
"If I tell you&, I'll just be causing you more pain&. Enough
 that I'd want to hurt myself&. If you can't believe in me&.&.
 Then that's how it is&."

{	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000230a02">
"But the fact that I want to help you isn't a lie&."

{
	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000231a02">
"So at least believe in that&. It's hard for me to say this
 but&.&.&. Please&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000240a01">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000241a01">
"&.&.&.I understand&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
I couldn't answer&.&.&. any other way&.

No matter how much we talk&, I won't reach Koujaku&. Nothing has or will change&.

I can only gently brush against him&, and our distance 
stays the same&.

If he tells me that he won't say anything&, it's not worth 
it for me to keep trying to pry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_sad2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000250a02">
"I'm sorry for making you feel so awful&. You should sleep
 some more&. I'll be here&, so call me if you need anything&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000260a01">
"&.&.&.Okay&."

{	St("C",740, @0,@0,"st紅雀_通常太刀なし_sad3");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/9000270a02">
"&.&.&.Night&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Wait(500);

//※ＳＥ：静かにドアを閉める音
	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Koujaku leaves the room&.

He carefully closes the door&, and the faint sound of it 
shutting reaches my ears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
I shut my eyes close and throw my face into the bed&.

Koujaku was worried about me&, and I wanted to trust him&, 
but&.&.&.

I thought we felt the same way&, but we changed somewhere&.

Why am I acting so impatient&.&.&.?

&.&.This isn't the time to get hung over something like this&.

I need to focus on why I came to Platinum Jail; I can't 
act carefree like this&.

I know that very well&, but it's hard for me to think 
straight&.

Koujaku said some awful things to me&, but aren't I the one who's getting off track here?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/9000280a01">
"&.&.&.God damn it&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
I can't rid myself of the anger that's boiling over&, and 
waves of regret and self hatred once again hit me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm1200.nss"]

	ClearFadeAll(2000, true);
	Wait(1000);

}
