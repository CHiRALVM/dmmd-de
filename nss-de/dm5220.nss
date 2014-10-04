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


scene dm5220.nss_MAIN
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
	#ev520東江演説a=true;
	#evf05洗脳にかかる旧人民区=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5230.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm5220.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm019",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304021_5_東江タワー前通りモブ");
	FadeBG(0,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The huge image of Sei changes to something else&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The next picture was of&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSPadd("絵演出", 4000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("絵演出", 0, 300, null, true);

	CreateTextureSP("絵背景100", 100, -738, 0, "cg/bg/l/bg101011_1_旧住民区通り表_l.jpg");

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000010a01">
"Oi&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
That's&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景100", 2000, -738, -443, Dxl1, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
The Old Resident District?!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/2000020b02">
"Due to Platinum Jail's construction&, I'm sad to say that
 this district does not share our enthusiasm; the islanders
 still live here and there&, uncooperative&."

//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/2000030b02">
"That fact has always been looming over us&, but now they
 have been coming towards us and showing a sign of
 compromise&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101, 46, 52, "cg/bg/bg101011_1_旧住民区通り表.jpg");
	Request("絵背景101", Smoothing);
	Zoom("絵背景101", 0, 1150, 1150, null, true);
	Fade("絵背景101", 500, 1000, null, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/2000040b02">
"I will now show you an image of the Old Resident District
 for this event&. Please take a look at their conditions&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The sound of clapping and cheers gushed out of the plaza&.

My mouth opens like an idiot as I stared at the monitor&, 
having completely forgotten about my headache&.

These are the streets I know all too well&.
But they seem so unfamiliar&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	dm5220_TV_pro(1000,1);
	Delete("絵背景101");

	FadeDelete("絵板写", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Residents of the Old Resident District were wholeheartedly looking at the TV&, without any confusion around them&.

What was on the TV screen was this event&.

There were people walking outside&, stopping at the 
monitors to watch&, and even people in shops did the same&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000050a01">
"&.&.&.This can't be true&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Toue just said that "they have been coming towards us and 
showing a sign of compromise&."

But that can't be right&.

There are an overwhelming amount of people who don't 
really know what Toue has done&.

And the customers who've been coming into Heibon recently 
have been complaining about Toue&. In fact&, most of the 
people in the Old Resident District hate him&.

So there's no way they turned over a new leaf in such a 
short time&.

I felt like I was watching a play on the monitor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ3000", 3000, -1024, -266, "cg/ev/l/evf05洗脳にかかる旧人民区_l.jpg");
	Move("絵ＥＶ3000", 2000, -423, -266, Dxl1, false);
	Fade("絵ＥＶ3000", 2000, 1000, null, true);
	FadeDelete("絵ＥＶ3000", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.Everyone is acting kind of strange&.

Their faces all seem artificial&. Their eyes don't seem to 
be focusing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 4100, Center, Middle, "cg/bg/bg402051_1_立ち入り禁止区域裏通り.jpg");

	St("C",4200, @0,@0,"buミズキ_洗脳_normal");
	FadeSt("C",0,true);

	EfRecoIn2(500);

	Wait(500);

	EfRecoOut1(100);

	Delete("絵効果背景");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
&.&.&.This reminds me of something&.

When Mizuki was being controlled by Morphine&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("@プロ*");
	Delete("@Ⅲ*");

	Delete("絵演出");
	Delete("絵背景*");
	Delete("絵ＥＶ*");

	Delete("@Prosennou*");
	Delete("@Ⅱ*");

	FadeDelete("絵板写", 200, null, true);

//頭痛エフェクト(0)
	HAFade(2000, 0,false);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000060a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Another pain in my head causes it to throb&.
But&, more importantly&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000070a01">
"Hey&, Ren&.&.&. this looks dangerous&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
I talk to Ren&, his head sticking out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000080a06">
"Yeah&. This isn't a normal situation&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000090a01">
"Are they being controlled&.&.&.?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000100a06">
"The possibility is exceedingly high&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
It's just as Granny said&.

How Toue was planning to control all the people on the 
island&. And the people in the Old Resident District too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.That's right&. Is Granny okay?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
And Koujaku&, Noiz&, Mink&, and Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Haga-san&, Yoshie-san&, and the brats&.&.&.
Everyone&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSPadd("絵演出", 1200, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("絵演出", 0, 300, null, true);

	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev520東江演説a.jpg");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//※加工：大モニター
//【東江】
<voice name="東江" class="東江" src="voice/dm52/2000110b02">
"They too will reach paradise sooner or later&. I would like you all to welcome them in and get along&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵ＥＶ*");
	Delete("絵演出");

//※東江の言葉に広場の群衆が大歓声を上げる※収録
	CreateSE("SE01","se環境_ガヤ_歓声03");
	MusicStart("SE01",1000,700,0,1000,null,true);

	CreateTextureSP("絵背景110", 110, -506, -205, "cg/bg/l/bg304021_5_東江タワー前通りモブ_l.jpg");
	Move("絵背景110", 1000, -506, -538, Dxl1, false);

	Move("絵背景110", 1000, -506, -538, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
The crowd raises their volume even higher to Toue's words&.

{	SetVolumeEX("SE*", 5000, 0, null);}
&.&.&.All of these people here have no idea&.

They have no idea of reality&, and no desire to; they're 
just dancing along in Toue's palm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
It's not because Toue researched how to control peoples' 
hearts&.

But rather because all the people here blindly follow him&.

They go along with him because it's a lot more fun to just not think&.

{
	CreateTextureEXmul("絵ＥＶ120", 120, Center, Middle, "cg/ev/m/evf07プラチナジェイル笑顔_m.jpg");
	MoveFTP4("@絵ＥＶ120",30000,30,40);
	Fade("絵ＥＶ120", 3000, 800, null, false);
}

A world with no pain&, no anger&, no suffering&.

Toue may call that joy&, but he's completely wrong&.

Although all the people here don't doubt a word he says&, 
they're just swallowing it all up&.

&.&.&.This is fucking ridiculous&.

Everything is so wrong&, but they don't notice&.&.&.

How could they think that way&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 990);

	Delete("絵ＥＶ120");
	Delete("絵背景110");

	FadeDelete("絵板写", 500, null, true);

	Fw("fwmチンピラC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/2000120e23">
"Cheers to the Old Resident District!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
A man next to me exclaimed&.

His thoughtless yell pissed me off and I scowled at him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/2000130e23">
"Cheers to The Old Resident District and Toue-san&.&.&.!"

{
	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_hard2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000140a01">
"Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
I impulsively grab the man by the collar&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/2000150e23">
"Wh-What's with you?"

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000160a01">
"Shut your fucking face&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/2000170e23">
"Why're you angry? Didn't Toue-san say it? That we should
 open our minds to be as happy as&.&.&."

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000180a01">
"Shut up!!!"

{
	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwmチンピラC_通常_normal");
}
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/2000190e23">
"Eek!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000200a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
I raise a fist into the air just before Ren's voice 
reaches my ears&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000210a06">
"Calm down&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000220a01">
"&.&.&.!"

{	Fw("fwmチンピラC_通常_normal");}
//【男性客Ｂ】
<voice name="男性客Ｂ" class="男性客Ｂ" src="voice/dm52/2000230e23">
"Eeeek!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	DeleteFw();

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
I relax the hand gripping his collar&, and the man escapes 
into the excited crowd&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000240a01">
"&.&.&.Shit!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
I'm so pissed&.&.&.!

At those people who act carefree after seeing the Old 
Resident District&. And I'm even more stirred up by Toue&.

And&, even more&.&.&.

I'm angry at how I can't do a single thing even though I'm right here&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000250a06">
"If you start acting up we won't be able to make any
 moves&."

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000260a01">
"I know&, I know that&, but&.&.&.!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000270a06">
"One of your bad points has always been that you can't
 control your temper&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000280a01">
"Well I can't help it after he said something like that!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000290a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I lashed out on Ren&.

What am I doing&.&.&.?

My headache has been intolerable for the past few minutes&.&.&.

&.&.&.But that's just an excuse&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000300a06">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/2000310a01">
"&.&.&.Sorry&. I&.&.&. It's a really bad habit&. I'm sorry&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/2000320a06">
"No&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5230.nss"]

}
