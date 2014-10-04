//※加工：モニター//<continuation number="220">
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


scene dm5200.nss_MAIN
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
	#ev520東江演説=true;
	#bg304021_5_東江タワー前通りモブ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5210.nss";

}


scene dm5200.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg301011_5_プラチナジェイル大通り");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, Center, -379, "cg/bg/l/bg301011_5_プラチナジェイル大通り_l.jpg");

	SoundPlay("@dm001",0,450,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I head out of Glitter with Main Street in mind&.

It's bizzare how feverish the streets are: the parade 
with a band&, people in costume&, dancers waving around 
while marching along&.

The dancers would slip into the crowds and dance around&, 
making the crowd even larger&. It was even more gaudy than 
the display I saw on TV&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE10","se環境_ガヤ_ざわつき01L");
	MusicStart("SE10",3000,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景100");

	OnBG(10,"bg304021_5_東江タワー前通りモブ");
	FadeBG(0,true);

	CreateTextureSP("絵背景101", 101, -506, -205, "cg/bg/l/bg304021_5_東江タワー前通りモブ_l.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Move("絵背景101", 2000, -506, -538, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I slowly made my way to the tower through the throngs of 
people&.

People were overflowing&, pushing each other around in the 
plaza in front of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/0000010a01">
"Well&, fuck&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どんっと後ろからぶつかられる

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ25");
	MusicStart("SE03",0,600,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/0000020a01">
"Whoa!"

{	Fw("fwm若者C_通常_normal");}
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/0000030e23">
"Cheers to Platinum Jail!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se人体_動作_衣擦れ26");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ01");
	MusicStart("SE03",0,500,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Some guy I don't know crashes into me from behind and 
hugs me all of a sudden&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/0000040a01">
"Let go&.&.&.!"

{
	Fw("fwm若者C_通常_normal");
}
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/0000050e23">
"Uhaha&, Toue-san's the best!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,600,0,1200,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	FadeDelete("絵背景101", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I push him off and get away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/0000060a01">
"What the hell&, a bunch of drunks?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
And right after I thought that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm女性A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm52/0000070e25">
"Toue-san&, you're amazing!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/0000080a01">
"W-Wait!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreateTextureEX("絵背景102", 102, -233, -517, "cg/bg/l/bg304021_5_東江タワー前通りモブ_l.jpg");
	Move("絵背景102", 500, -54, -517, Dxl1, false);
	Fade("絵背景102", 500, 1000, null, true); 

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
This time a girl grabs onto me&, pushing me outside of the 
crowd of people&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(500,300,20,2,0,0,1000,null,false);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/0000090a01">
"Ouch&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
It's no use&. I'll be completely pushed away by the crowd 
if I stand here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
But&.&.&. As I hold on desperately&, all the people around me 
are smiling&.

It's really creepy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE10", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	Move("絵背景102", 500, @-100, @0, Dxl1, false);
	FadeDelete("絵背景102", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
As I stand there alone and in a panic&, the public 
advertisements on the large monitors around me turn into 
something like a sandstorm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_ガヤ_歓声01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se環境_ガヤ_歓声03");
	MusicStart("SE02",3000,700,0,1000,null,true);

	CreateTextureEX("絵背景103", 103, -506, -205, "cg/bg/l/bg304021_5_東江タワー前通りモブ_l.jpg");
	Move("絵背景103", 1000, -506, -538, Dxl1, false);
	Fade("絵背景103", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The monitor quickly changes pictures&, and roars echo 
throughout the plaza&.

&.&.&.It's 1PM&.

It's going to begin soon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※加工：大モニター
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm52/0000100e07">
"And so&, everyone&, we have left you waiting&. The
 representative&, the great Toue&, will now be administering
 his greetings&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_ガヤ_歓声01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 3000, 400, null);

	FadeDelete("絵背景103", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
The cheers of joy and clapping grow to the point where it 
pounds my ears&. Someone comes onto the tower balcony&.

The monitors focus&.

In the middle is Toue&. And there is a single guard on each side of him&, as well as another person slightly behind him&.

His head is facing downwards&, so it's hard to see his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE02", 3000, 0, null);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSPadd("絵演出", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("絵演出", 0, 300, null, true);

	CreateTextureSP("絵ＥＶ500", 500, Center, Middle, "cg/ev/ev520東江演説.jpg");

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000110b02">
"&.&.&.Everyone&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
With one word from Toue into his mic&, the entire crowd 
went unbelievably quiet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Everyone's face is plastered with anticipation for Toue's 
next words&.

He takes a moment and calmly looks down to the people in 
the plaza with a small grin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

	CreateTextureEX("絵ＥＶ501", 501, -150, -50, "cg/ev/l/ev520東江演説_l.jpg");
	Fade("絵ＥＶ501", 500, 1000, null, true);
	Move("絵ＥＶ501", 10000, -415, -50, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000120b02">
"On this occassion&, I would like to thank you all for
 coming to this Special Commemoration Event&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000130b02">
"I would like to celebrate this day&, the 10th anniversary
 of the opening of Platinum Jail&. It certainly has been a
 while&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000140b02">
"Yes&. Time will not stop for us&. And for this reason&, I
 believe that everyone should spend their limited time here
 as happy as they can be&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000150b02">
"But what is happiness? I've always wondered&. Happiness is
 not something so easily obtained&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000160b02">
"But I also believe that anyone can seize it&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ501", 500, @0, @-100, Dxl1, false);
	FadeDelete("絵ＥＶ501", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000170b02">
"No matter the setting&, people can find a way to be able to
 laugh from the bottom of their hearts&, find delight&, and
 obtain a sense of tranquility&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000180b02">
"And if everyone were to be able to achieve this&, there
 would be no need for fighting&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000190b02">
"Anger and sadness are the fruits of adulthood&. That
 argument is plausible&. However&, everyone suffers from
 the two throughout their daily lives&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000200b02">
"I would want them to forget their ordinary lives and live
 happily within the moment&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000210b02">
"And I would also want this place to become their second
 home&. I'm always wishing for that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/0000220b02">
"Always wishing for happiness to trickle down from person
 to person&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Toue puts his hand on his chest and quietly tilts his head downwards&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_ガヤ_歓声01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE02","se環境_ガヤ_歓声03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 8000, 0, null);

	CreatePlainSP("絵板写", 5000);

	Delete("絵ＥＶ*");
	Delete("絵演出");

	FadeDelete("絵板写", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
After a moment of silence&, a thunderous voice came down&.

Everyone raises their hands into the air as it rings&, the 
sound of Toue's voice moving through their fingers&.

I clapped along to keep with the crowd&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
But&.&.&. this wild event is like a meeting for a cult with 
devout believers&.

Toue looked at his praising followers with satisfaction&, 
and opened his mouth once again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5210.nss"]

}
