//<continuation number="180">
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


scene dm4390.nss_MAIN
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
	$GameName = "dm4390sl.nss";

}


scene dm4390.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	St("C",740, @0,@0,"stクリア_正面マスクなし_pinch");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fwクリアα_通常マスクなし_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000010b18">
"My my&, you've really done it now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The one that was singing shrugs his shoulders and lets out a disappointed sigh&.

Thankfully I was able to hold on to my consciousness 
because the singing had stopped&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);
	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -607, -572, "cg/bg/l/bg301031_5_プラチナジェイル通り路地01_l.jpg");
	Move("絵背景100", 700, -859, -572, AxlDxl, false);
	Fade("絵背景100", 700, 1000, null, true);

	CreateSE("SE02","se人体_足音_一歩01");
	MusicStart("SE02",0,700,0,1300,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Clear holds onto one of his arms&, staggering backwards&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_worry4",2050,"fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/9000020a01">
"Clear! &.&.&.!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/9000030a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	DeleteFw();

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I get up&, pressing onto Ren's back for support&, and run up to Clear&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	St("C",740, @0,@0,"buクリア_正面マスクなし_sad");
	FadeSt("C",200,true);
}
I take Clear as he unsteadily wobbles around and prop him 
up with both of my hands&.

&.&.&.The right arm of his coat is burnt and ripped&.

I really wasn't imagining those sparks&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/9000040a01">
"Clear&, are you okay!?"

{	St("C",740, @0,@0,"buクリア_正面マスクなし_normal2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/9000050a04">
"Master&, I'm sorry&. I'm fine&."

{	Fw("fwクリアα_通常マスクなし_normal");}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000060b18">
"Hey you&, do you know what you just did?"

{	St("C",740, @0,@0,"buクリア_通常マスクなし_serious");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/9000070a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Clear's eyes warp with intense fury&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000080b18">
"I'm sure you realize what happened to your body without me
 telling you&. What're you going to do&, now that you can't
 stop it? You're really stupid&. Hahaha!"

{	St("C",740, @0,@0,"buクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/9000090a04">
"It doesn't matter because I was able to save Master from
 your song&."

{	Fw("fwクリアα_通常マスクなし_pride");}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000100b18">
"Idiot&. You're completely broken&. It'd be bad if you try
 that again&. Haha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
He laughs with something like his singing voice and goes 
back to the side of the other Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	St("MR",740, @0,@0,"stクリアα_通常マスクなし_pride");
	FadeAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000110b18">
"Well&, there's no reason to collect and repair you now&, so
 we'll be leaving&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	St("MR",740, @0,@0,"stクリアα_通常マスクなし_pride");
	FadeAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000120b18">
"We'll definitely dye the brain of your fake master over
 there when the event opens&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/9000130a01">
"Event&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
The event Granny talked about&.&.&.?

They're going to use Grand Music there&.&.&.?
What other things will they do?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	St("MR",740, @0,@0,"stクリアα_通常マスクなし_normal");
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/9000140b18">
"Once all of you humans are dyed&, you'll be our servants&.
 I'm looking forward to it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※たたっと立ち去るクリアα２人組
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,900,null,false);
	SetPan("SE01", 0, -600, Dxl3);
	Wait(50);
	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetPan("SE02", 0, 600, Dxl3);
	DeleteAllSt(300,true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/9000150a01">
"Hey&, wait!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The two Clears with the same face glance over before 
unhurriedly running out of the alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/9000160a06">
"Aoba&, do we go after them?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/9000170a01">
"No&, it's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
They disappear in the blink of an eye&, and I look over to 
Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_正面マスクなし_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Clear is covering up his wounded arm and looks at me with 
a complicated expression on his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);

	CreateColorSP("絵血色黒", 1000, "000000");
	CreateTextureSP("絵血", 1500, Center, Middle, "cg/ef/efx03血液垂れる01a.png");
	CreateTextureEX("絵血弐", 1500, Center, Middle, "cg/ef/efx03血液垂れる01b.png");
	CreateTextureEX("絵血参", 1500, Center, Middle, "cg/ef/efx03血液垂れる01e.png");

	CreateSE("SE01","se戦闘_血_垂れる01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 500, Dxl1, true);

	Wait(300);

	CreateSE("SE01","se戦闘_血_垂れる01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵血弐", 200, 1000, Dxl1, true);

	Wait(50);

	CreateSE("SE01","se戦闘_血_垂れる01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵血参", 200, 1000, Dxl1, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
I look at his arm and something startles me&.
There's something dripping from his fingertips&.

&.&.&.It's blood&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵血*");

	St("C",740, @0,@0,"buクリア_正面マスクなし_normal");
	FadeSt("C",200,true);

	FadeDelete("絵板写", 500, Dxl1, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/9000180a01">
"You're&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1400,null,false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I reach out my hand&, but Clear pulls away from me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4390sl.nss"]

}
