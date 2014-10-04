//<continuation number="320">
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


scene dm0330.nss_MAIN
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
	#ev033婆ちゃんをおんぶ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0340.nss";

}


scene dm0330.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg101022_5_旧住民区通り裏路地02_m.jpg");

	SetShade("絵背景", MEDIUM);
	Rotate("絵背景", 0, @0, @0, @5, null,true);
	Request("絵背景", Smoothing);
	Move("絵背景", 0, -425, @0, null, true);

	Wait(1000);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//	DrawDelete("上背景", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("上背景", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("上背景", 500, 100, Dxl3, "slide_01_02_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Granny had fallen down&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
After I hang up the phone call from Yoshie-san&, I explain 
the situation to Mizuki and hurry out to Delivery Works&.

She fell down on her way to a patient's house where she was
going to deliver some medicine that she had prescribed&. 
She was then taken to the Delivery Works which happened to 
be nearby&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg101051_5_旧住民区通り裏路地06_m.jpg");

	SetShade("絵背景", MEDIUM);
	Rotate("絵背景", 0, @0, @0, @-5, null,true);
	Request("絵背景", Smoothing);
	Move("絵背景", 0, @0, -200, null, true);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolumeEX("SE*", 3000, 0, null);

//	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_02_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Anyway&.&.&. I ran at full speed&.

My heart felt like it was about to explode and I had no 
breath left&.

My whole body is tense&, my fingers and toes tingling&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg疾走001.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Rotate("絵背景", 0, @0, @0, @-30, null,true);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolumeEX("SE*", 3000, 0, null);

//	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_02_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Granny's collapsed from overwork before&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreatePlainSP("絵板写", 5000);
//	CreateTextureSP("絵青葉", 100, Center, Middle, "cg/ev/ev900昔の荒れてた蒼葉.jpg");
//	CreateColorEXsub("絵青葉黒", 4000, "WHITE");
//	Fade("絵青葉黒", 0, 300, null, true);
//	SetShade("絵青葉", MEDIUM);
//	Wait(16);
//	Delete("絵板写");
//
//	Wait(40);
//
//	CreatePlainSP("絵板写", 5000);
//
//	Delete("絵青葉*");
//	Wait(16);
//	Delete("絵板写");
//
//
//	Wait(500);
//
//	CreatePlainSP("絵板写", 5000);
//	CreateTextureSP("絵青葉", 100, Center, Middle, "cg/ev/ev900白蒼葉化.jpg");
//	CreateColorEXsub("絵青葉黒", 4000, "WHITE");
//	Fade("絵青葉黒", 0, 300, null, true);
//	SetShade("絵青葉", MEDIUM);
//	Wait(16);
//	Delete("絵板写");
//
//	Wait(40);
//
//	CreatePlainSP("絵板写", 5000);
//
//	Delete("絵青葉*");
//	Wait(16);
//	Delete("絵板写");
//
//

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
It was because of&.&.&. me&. 
It was because I made her worry all the time&.

I honestly regret what happened back then&.

When I think of actually losing Granny&, I get so scared it makes me tremble&.

I don't want to think about it ever again&. 
Never again&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	Delete("絵背景");

	OnBG(10,"bg101011_3_旧住民区通り表");
	FadeBG(0,true);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_03_0", true);
//	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_01_0", true);
	DrawDelete("絵黒幕", 500, 100, Dxl3, "slide_01_02_0", true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000010a01">
"&.&.&.Guh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I-I have to get to Granny quickly&.&.&.!

Granny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 5000, "BLACK");
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);
//	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_1.png", true);
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl3, "cg/data/slide_01_02_1.png", true);

	SetVolumeEX("@dm*", 0, 0, null);

	Wait(1500);

	OnBG(10,"bg103011_5_デリバリーワークス店内");
	FadeBG(0,true);

	CreateColorSP("絵薄黒", 2000, "BLACK");
	Fade("絵薄黒", 0, 500, null, true);

//	Wait(500);

//	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000020b03">
"You people are just exaggerating things&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵黒幕", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.That's the first thing I hear&.

When I rush into Delivery Works&, I see Granny leaning back in a chair&.

After seeing that&.&.&. 
I almost collapse on the spot&.

Granny had certainly fallen down&.

It turns out she can't move at all&.&.&. In other words&, she 
dislocated her hip&.

Apparently Yoshie-san who made the call had seen Granny in 
pain and was frightened to death&.

As soon as I enter the shop&, she apologizes earnestly with an "I'm so sorryyyy"&.

Honestly&, I'm a bit disappointed&, but&.&.&. I'm also glad 
it's nothing serious&.

What a relief&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("絵薄黒");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
That said&, Granny can't walk so I have to carry her home&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

//※足音_１人歩く_アスファルト（ゆっくり）
	CreateSE("SE01","se人体_足音_歩く01ゆっくりL");
	MusicStart("SE01",0,600,0,800,null,true);

	Wait(1500);
	CreateTextureSP("絵一枚絵二人", 100, Center, 0, "cg/ev/l/ev033婆ちゃんをおんぶ_l.jpg");
	CreateTextureSP("絵一枚絵二人裏", 50, Center, 0, "cg/ev/m/ev033婆ちゃんをおんぶ_m.jpg");

	Move("絵一枚絵二人", 8000, @50, @0, null, false);
	FadeDelete("絵色黒", 2000, null, true);

	SetVolumeEX("SE*", 5000, 0, null);

	Wait(2000);

	FadeDelete("絵一枚絵二人", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000030b03">
"Really&, you people are just exaggerating things&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);//平穏

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000040a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Granny complains about the same thing as earlier while on 
my back&.

I walk home slowly to avoid moving her too much&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000050a01">
"It can't be helped&. Everyone's worried about you&, Granny&.
 I am too&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000060b03">
"I'm still healthy enough&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000070a01">
"I know that&, but still&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵一枚絵蓮", 200, -974, -480, "cg/ev/l/ev033婆ちゃんをおんぶ_l.jpg");
	CreateTextureSP("絵一枚絵蓮裏", 100, -512, -288, "cg/ev/m/ev033婆ちゃんをおんぶ_m.jpg");

	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Move("絵一枚絵蓮", 8000, @50, @0, null, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(1500);

	FadeDelete("絵一枚絵蓮", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Behind us&, Ren follows&, tapping along with his small legs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("絵板写", 5000);

	Delete("絵一枚*");

	CreateTextureSP("絵一枚絵", 200, Center, 0, "cg/ev/ev033婆ちゃんをおんぶ.jpg");
	CreateTextureSP("絵一枚絵裏", 100, Center, 0, "cg/ev/ev033婆ちゃんをおんぶ.jpg");

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000080b03">
"When I can't move a little you treat me like I'm going to
 die right away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,800,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000090a01">
"Owowow&. Don't kick me&. Anyway&, let's go to the hospital
 tomorrow? Okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Since Granny is quite rowdy for her age&, I'm afraid I 
might drop her&.

And&.&.&. 
She was light&.

I never really thought too much about it&, but was she 
always this small?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
This is the first time I'd ever carried her on my back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く01ゆっくりL");
	MusicStart("SE01",0,600,0,800,null,true);

	CreateTextureEX("絵一枚絵二人", 1000, 0, -70, "cg/ev/l/ev033婆ちゃんをおんぶ_l.jpg");
	Move("絵一枚絵二人", 60000, -540, @0, null, false);
	Fade("絵一枚絵二人", 1000, 1000, null, true);

	SetVolumeEX("SE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000100a01">
"Thinking back&, you used to be the one to carry me around&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000110b03">
"Hmm?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000120a01">
"I was just talking about the past&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000130b03">
"&.&.&.Hmph&. Because you always went off on your own&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000140a01">
"On my own?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000150b03">
"Yes&. I would look away for a moment&, and before I knew it
 you'd be gone&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000160a01">
"Is that so? I can't remember at all&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000170b03">
"I'd get lonely&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000180a01">
"Lonely? Why?"

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000190b03">
"Because you only started to go off on your own once your
 parents were gone&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000200a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
I see&.

My memory of my parents is hazy&.

But I do remember the times when Granny carried me on her 
back&.

It was warm and smelled like her&. I would always calm down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000210b03">
"Well&, that was when you were small&, so I won't blame you&.
 But now you're all grown up and stupid&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000220a01">
"That's just how it is&. At this age it's normal to act
 differently than you did as a kid&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000230b03">
"Nobody said anything about that&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000240a01">
"Granny&, could you carry me on your back like in the old
 days? A challenge&, seeing as we're both healthy enough?"

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000250b03">
"Don't spout nonsense&. Are you trying to kill me?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000260a01">
"I'm just joking&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000270b03">
"Hmph&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵一枚絵二人", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000280a01">
"&.&.&.Granny&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000290b03">
"What is it?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000300a01">
"You're light&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/3000310b03">
"Shut your hole!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※衣擦れor軽く叩かれる
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,800,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(200);

	CreateSE("SE02","se人体_動作_叩く02");
	MusicStart("SE02",0,900,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/3000320a01">
"Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I'm slapped hard on the side of my head&.

But for some reason I begin to feel happy and smile to 
myself&.

I'm so relieved that Granny's safe&.

When I think that someday this noisiness will be gone&, I 
feel lonely&.

I walk silently down the darkening road&, feeling Granny's 
warmth on my back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm0340.nss"]

}
