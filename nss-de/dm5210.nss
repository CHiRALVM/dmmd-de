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


scene dm5210.nss_MAIN
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
	#ev520東江演説a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5220.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm5210.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm019",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSPadd("絵演出", 5000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("絵演出", 0, 300, null, true);

	OnBG(10,"bg304021_5_東江タワー前通りモブ");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ100", 100, -150, -10, "cg/ev/m/ev520東江演説_m.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	FadeDelete("上背景", 500, null, true);
}
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000010b02">
"This event will be open for two days&. The main event is
 tomorrow&. Today is the eve of that&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000020b02">
"Before tomorrow comes&, I would like to display a new 'Joy' for everyone here&.&.&. Now&, here&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Toue calls up the person behind him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev520東江演説a.jpg");
	Fade("絵ＥＶ101", 1000, 1000, null, true);
	Delete("絵ＥＶ100");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000030b02">
"His name is Sei&. He is like a son to me&. I wouldn't be the man I am today if not for him&. He is most precious to me&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000040b02">
"I would like to introduce him to you all for this
 special event&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000050b02">
"He is both my pride and joy&. He is the messenger that will bring happiness to peoples' hearts&. I would greatly
 appreciate it if you could give him your blessings&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The crowd goes crazy&, yelling out to the young youth&, Sei&, with inquisitive gazes&.

Sei raises his head&, it now being displayed on the giant 
monitors&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ102", 102, -883, -174, "cg/ev/l/ev520東江演説a_l.jpg");
	Move("絵ＥＶ102", 1000, -1024, -224, Dxl1, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);
	Delete("絵ＥＶ101");

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 8000, -384, -357, "cg/ev/l/ev515うずくまるセイa_l.jpg");

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/1000060a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
That's&.&.&.!

Isn't he the person I ran into&, the one sitting in the 
alley&, while I was looking for Ren&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※びりっと電流が走る
//覇：セイの力
	Sei(2000,1500,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/1000070a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
&.&.&.That again&.

The same as when I met his eyes in the alley&.&.&.
The sensation of electricity going through me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
But this time it's different&.

His face on the monitor&.&.&.
I couldn't take my gaze off of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ1504", 1504, -1642, -98, "cg/ev/l/ev520東江演説a_l.jpg");
	Request("絵ＥＶ1504", Smoothing);
	SetShade("絵ＥＶ1504", LIGHT);

	CreateTextureEX("絵ＥＶ1503", 1503, -1642, -98, "cg/ev/l/ev520東江演説a_l.jpg");
	Request("絵ＥＶ1503", Smoothing);
	Zoom("絵ＥＶ1503", 0, 2000, 2000, null, true);
	Zoom("絵ＥＶ1504", 0, 2000, 2000, null, true);

	Fade("絵ＥＶ1503", 5000, 1000, null, false);
	Fade("絵ＥＶ1504", 10000, 500, null, false);
	MoveFTP3("@絵ＥＶ1504",15000,15,10);

	CreateSE("SE01","se人体_心臓_鼓動02L");
	MusicStart("SE01",10000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The look in his eyes&.&.&. flickered in my head countless 
times&.

Like he was all the way inside of me&.&.&.
Flickering over and over&.

His clear eyes are looking right at me&.

Going deep&, deep inside of me&.&.&.

Inside&.&.&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演出*");
	Delete("絵ＥＶ*");

	FadeDelete("絵板写", 200, null, true);

$HALevel=3;
	HAFade(2000, 0,false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/1000080a01">
"Ow&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Suddenly&, I feel a strong headache coming on&, the feeling 
similar to when I woke up from my earlier dream&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/1000090a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
My head is pounding&.

What's going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/1000100e23">
"Ahh&.&.&. Sei&, you're so amazing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm女性B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm52/1000110e25">
"Sei-sama&.&.&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/1000120a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
The people who were only minutes ago cheering for Toue are now staring in awe at Sei's face&, as if possessed&.

Sei's eyes slowly twinkle on the screen&.

What&.&.&.?

What's going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000130b02">
"Thank you&. I'm very grateful for all of your blessings&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/1000140b02">
"I believe that this entire island&, not only Platinum Jail&, will be able to enjoy tomorrow's main event&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5220.nss"]

}
