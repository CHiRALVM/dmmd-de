//<continuation number="130">
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


scene dm2160.nss_MAIN
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
	#bg301031_5_プラチナジェイル通り路地01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2170.nss";

}


scene dm2160.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301011_5_プラチナジェイル大通り2ゲーセン");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I did wonder if he went off to buy something again&, but I  don't see him anywhere&.

I leave the bustling main street and head to a small alley with fewer people&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	CreateSE("SEガヤ","se環境_戦闘_乱闘01L");
	MusicStart("SEガヤ",2000,200,0,900,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
As I walk to the back&, I hear loud noises coming from in 
front of me&.

At the end of the road I see some sort of commotion&.

A fight?
I've got a bad feeling about this&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 300, null);
	SoundPlay("@dm009",0,450,true);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm21/6000010e42">
"You asshole!"

{
	Fw("fwmチンピラB_通常_normal");
}
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm21/6000020e43">
"Geh&, dammit!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
As I approach&, the unpleasant feeling changes into 
conviction&.

&.&.&.Just like I thought&.

In the middle of the small alley&, several men are crowded  together&, fighting&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(16);

	CreateSE("SE02","se戦闘_打撃_風切り低01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵マスク中枠", 110, 0, 0, "cg/mask/ciスラッシュ_03_01z.png");

	CreateMask("絵マスク中", 100, 0, 0, "cg/mask/ciスラッシュ_03_01.png", true);
	SetAlias("絵マスク中","絵マスク中");
	CreateTextureSP("絵マスク中/絵画像", 100, 0, 0, "cg/ev/ev920ノイズ突進.jpg");

	DrawDelete("絵板写", 200, 100, null, "beam_03_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
And in the center of it all&.&.&. is Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEガヤ", 3000, 0, null);

	Wait(16);
	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク中*");
	DrawDelete("絵板写", 200, 100, null, "beam_03_00_1", true);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm21/6000030e42">
"Uargh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Noiz strikes down one of the men and he grunts 
in pain as he falls on his back&.

Two of them were already on the ground&. They're all wearingsuits&.

Unless I'm mistaken&, it looks like they're a bunch of suits
and ties duking it out&.

&.&.&.Hey&, no&, no&, no&, hold on a second&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/6000040a01">
"Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,1000,null,false);

//cono「演出：完成背景到着後要調整」
	CreateTextureEX("絵背景100", 100, -245, -394, "cg/bg/l/bg301031_5_プラチナジェイル通り路地01_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I rush over to the fray and everyone stops to look at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fwmチンピラB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm21/6000050e43">
"Who're you? His friend?"

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/6000060a01">
"Ah&, well&, something like that&."

{
	Fw("fwmチンピラA_通常_normal");
}
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm21/6000070e42">
"Well this little shit went on a fucking rampage&.&.&. What
 are you gonna do about this little sight here&, huh?"

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/6000080a01">
"I'm really sorry&. He's just a kid so he goes overboard
 sometimes&. I'm truly sorry&. I'll apologize&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I bow repeatedly while inching closer to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_fake",5000,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/6000090a01">
"Sorry&, sorry&. I'm sorry&, really&.&.&. &.&.&.Let's run!"

{
	St("C",740, @0,@0,"buノイズ_通常_shock");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/6000100a03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE10","se人体_動作_掴む01");
	MusicStart("SE10",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");

	CreateSE("SE11","se人体_足音_走る03");
	MusicStart("SE11",0,600,0,1200,null,false);
	CreateSE("SE12","se人体_足音_走る03");
	MusicStart("SE12",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
In a situation like this&, you can only win by running away&.
I grab Noiz's arm and make a break for it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm21/6000110e43">
"Hey&, wait!"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/6000120a03">
"Ugh&, let go of me!"


{
	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/6000130a01">
"Shut up and run!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_走る03");
	MusicStart("SE11",0,600,0,1200,null,false);
	CreateSE("SE12","se人体_足音_走る03");
	MusicStart("SE12",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg301011_5_プラチナジェイル大通り2ゲーセン");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I hold a tight grip on Noiz's arm and we enter the main 
street again&.

If we can just disappear into the crowd&, then&.&.&.!

I slow down and walk calmly&, trying to mix with the 
passerby&.

{
	SetVolumeEX("@dm*", 2000, 0, null);
}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Wait(1300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
&.&.&.After walking for a while&, I casually look behind me&.

It doesn't look like they're following us&.

{
	Fw("fw蒼葉_通常_sigh3");
	SoundPlay("@dm004",0,450,true);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/6000160a01">
"Whew&.&.&."

{
	Fw("fwノイズ_通常_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/6000150a03">
"&.&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
We somehow made it out of there&.&.&.

That was a close one&.

What the hell was Noiz even doing?

I force him to follow me back to Glitter&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm2170.nss"]

}
