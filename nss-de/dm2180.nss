//<continuation number="540">
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


scene dm2180.nss_MAIN
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
	#ev218ノイズディープキス=true;
	#ev218ノイズディープキスa=true;
	#ev218ノイズディープキスb=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2190h.nss";

}


scene dm2180.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵背景90", 90, -757, -534, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");}
I sit on the sofa and lean on the backrest&, feeling 
exhausted&.

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000010a01">
"&.&.&.Don't be so reckless&. It makes me nervous&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I say it with a joking tone on purpose&.
But I'm actually quite serious about it&.

I'd be afraid to see him get really hurt&.

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000020a01">
"Anyway&, we have to start collecting information
 about Toue&.&.&."

{	Fw("fwノイズ_通常_angry2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000030a03">
"I don't get you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Interrupting my words&, Noiz opens his mouth&.

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000040a03">
"Is this supposed to mean something?"


{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000050a01">
"&.&.&.What?"

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000060a03">
"This&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Noiz stretches out his hand which had the bandaid&.

{
	SoundPlay("@dm007a",0,450,true);
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000070a03">
"Is there some merit to this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000080a01">
"Huh? Merit?"

{
	Fw("fwノイズ_通常_pride2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000090a03">
"&.&.&.Ahh&. So there is&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Noiz added some mockery at the end&.

{
	Fw("fwノイズ_通常_pride");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000100a03">
"If you have me&, the future'll be a breeze&. As long as
 I'm useful it's enough&."

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000110a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I know he's been thinking this since yesterday&, but&.&.&.

What the heck is he talking about?

I'm the one who doesn't understand&.

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000120a01">
"&.&.&.Do you even know what you're saying?"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000130a03">
"You wouldn't normally do things like this without a
 purpose&. I'm a total stranger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Noiz shakes his injured hand&.

{
	Fw("fwノイズ_通常_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000140a03">
"Like helping others&. There's nothing to gain from it&, it's inefficient&, and it won't give you any benefits&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000150a01">
"So you're saying I have ulterior motives&, and want
 something from you in return?"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000160a03">
"Am I wrong?"

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000170a01">
"You are!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The bottom of my stomach hurts&.

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000180a01">
"You're wrong&. You can want to help people out of worry&, or other things like that&."

{
//	Fw("fwノイズ_通常_angry3");
	FwPro("fwノイズ_通常_angry3",6200,"fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000190a03">
"I don't understand&. I can't understand at all&. &.&.&.Oh&,
 or maybe&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,800,null,false);

	Fade("絵背景90", 250, 0, null, true);

	St("C",740, @0,@0,"buノイズ_通常帽子なし_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Noiz violently rips off his hat and comes around the sofa 
to stand in front of me&.

What&, is he going to hit me?

I try to stand up to prepare myself&.

{
	SetVolumeEX("@dm*", 500, 0, null);
}
&.&.&.But&.

Noiz's actions&.&.&. are far beyond what I'd imagined&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,500,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(500);

	Fade("絵背景90", 1000, 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se人体_動作_キス01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000200a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ100", 100, -258, -73, "cg/ev/m/ev218ノイズディープキス_m.jpg");
	Move("絵ＥＶ100", 1000, -258, -125, Dxl3, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000210a03">
"Something like this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.!?

&.&.&.No no no no!!

What!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,1200,null,false);

	Move("絵ＥＶ100", 250, @0, @-80, Dxl3, false);
	Fade("絵ＥＶ100", 250, 0, null, true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000220a01">
"W-Wha&, What are you doing!? That's weird!"

{
	Fw("fwノイズ_通常帽子なし_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000230a03">
"What is?"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000240a01">
"Kissing me like that!"

{
	Fw("fwノイズ_通常帽子なし_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000250a03">
"There's no other purpose to use me other than this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000260a01">
"Then what is 'this'!?"

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000270a03">
"You were going for me&."

{
	Fw("fw蒼葉_通常_shout2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000280a01">
"Whaa!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Seriously&. Really&.
Is he serious?

How the heck did he get to that conclusion!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/m/ev218ノイズディープキス_m.jpg");
	Move("絵ＥＶ100", 500, @0, @50, Dxl1, false);
	Fade("絵ＥＶ100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Right when I stop that train of thought&, Noiz brings his 
face closer again&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000290a01">
"Hey&, wait a minute&, you brat! Wait!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000300a03">
"Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間天井");
	FadeBG(0,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵ＥＶ100", 250, @80, @0, Dxl1, false);
	FadeDelete("絵ＥＶ100", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000310a01">
"Mmh&.&.&. Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
My head is drawn near to him and my lips are stopped by 
force&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000320a01">
"Ngh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 2000, 0, null);
//	SoundPlay("@dm012",0,450,true);

	CreateTextureEX("絵ＥＶ102", 102, Center, Middle, "cg/ev/ev218ノイズディープキスb.jpg");
	CreateTextureEX("絵ＥＶ101", 101, -510, -281, "cg/ev/m/ev218ノイズディープキスa_m.jpg");
	Move("絵ＥＶ101", 1000, -333, -127, Dxl1, false);
	Fade("絵ＥＶ101", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I try to push him away with both hands&, but he catches my 
jaw and forcibly opens my mouth&.

He puts in his tongue&.&.&. and a light numbness runs down my spine&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000340a01">
"&.&.&.Ngh&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
	SoundPlay("@dm012",0,450,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000330a03">
"&.&.&.&.&.&, Nhh&.&.&."

Noiz's tongue rubs my palate and entwines with my own&.

This is kinda dangerous&.&.&.

Wait a sec&, this is&.&.&.

Whenever Noiz's tongue wriggles in my confused mouth&, 
something hits my tooth&, making a ticking noise&.

What's that sound&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	Move("絵ＥＶ101", 500, -259, -76, Dxl1, false);
	Fade("絵ＥＶ102", 500, 1000, null, true);
	Delete("絵ＥＶ101");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000350a01">
"Hu&.&.&. u&.&.&. uh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
But before I can think any more about it&, I feel something strange in my lower body&.

Shit&.&.&.

His kissing isn't especially good&, but&.&.&.

It's been a long time since I've felt anything like this&, 
and&.&.&.

&.&.&.I'm too much into it&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000360a03">
"&.&.&. What&. Are you hard?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000370a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 500, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
Noiz pulls out his tongue and pushes his knee up into 
my crotch&.

Him doing that actually makes me react a little bit&.

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000380a01">
"Only because you started doing weird things&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常帽子なし_normal2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000390a03">
"But you got hard from just kissing&, right?"

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000400a01">
"&.&.&.Uh&.&.&."

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000410a03">
"What are you gonna do about this? Handle it alone?"

{
	Fw("fw蒼葉_通常_shy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000420a01">
"Ngh&, I can't help it! It's a physiological reaction!"

{
	Fw("fwノイズ_通常帽子なし_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000430a03">
"I'll do it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000440a01">
"Wha!?"

{
	Fw("fwノイズ_通常帽子なし_normal2");
	SoundPlay("@dm005",0,450,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000450a03">
"In return&, do mine&."

{
	Fw("fw蒼葉_通常_shy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000460a01">
"No no no no&, wait! Stop saying weird things!"

{
	Fw("fwノイズ_通常帽子なし_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000470a03">
"How?"

{
	Fw("fw蒼葉_通常_shy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000480a01">
"You doing mine&, me doing yours&.&.&. That's just weird!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常帽子なし_normal3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000490a03">
"Listen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
Noiz lets out a tired sigh&.

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000500a03">
"You're overreacting&. We're both guys&, nothing to be
 ashamed about&. Plus&, you just said it yourself: it's
 a physiological reaction&."

{
	FwPro("fwノイズ_通常帽子なし_normal3",8600,"fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/8000510a03">
"We're just talking about getting rid of a physiological
 reaction&, right? Wouldn't it be more efficient to just do
 it at the same time?"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000520a01">
"No&, no&, no&, no!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
I don't understand why and how it would be efficient!

What's he going on about? Is he one of those "new age" 
guys?

Is this what the younger people are like now?

But we aren't that many years apart&.&.&.

So maybe he's just weird?!

{
	FwPro("fw蒼葉_通常_fake",7000,"fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000530a01">
"Anyway&, I think I'll have to decline&, so let me&.&.&.
 Hey&, wai&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1300,null,false);

	FadeDelete("絵背景90", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
Noiz suddenly pulls on my arm&. 

{
	CreateSE("SE02","se人体_足音_歩く06");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se人体_足音_歩く06");
	MusicStart("SE03",0,700,0,1500,null,false);
}
I stand up reluctantly&, and Noiz forces me to walk with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
The destination&.&.&.
Noiz's room&. For sure&.

{
	FwPro("fw蒼葉_通常_shout2",2300,"fw蒼葉_通常_pain");
//	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/8000540a01">
"Hey&, Noiz! &.&.&.Hey&, uwah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm2190h.nss"]

}
