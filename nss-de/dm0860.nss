//<continuation number="250">
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


scene dm0860.nss_MAIN
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
	#bg101021_1_旧住民区通り裏路地01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($DM_ROUTE==1){	$GameName = "dm1010.nss";
	}else if($DM_ROUTE==2){	$GameName = "dm2010.nss";
	}else if($DM_ROUTE==3){	$GameName = "dm3010.nss";
	}else if($DM_ROUTE==4){	$GameName = "dm4010.nss";
	}else if($DM_ROUTE==5){	$GameName = "dm5010.nss";
	}else {	$GameName = "dm0010.nss";
	}

}


scene dm0860.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

	CreateSE("SE01","se物体_蒼葉宅階段_登る強く01");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 2500, 0, null);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I finish changing&, start up Ren&, and quickly go downstairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg104051_5_蒼葉宅居間.jpg");

	Delete("絵背景500");

	St("LL",710, @0,@5,"stクリア_通常マスクあり_normal");
	St("ML",730, @30,@0,"st紅雀_通常_cool");
	St("MR",730, @-30,@0,"stミンク_通常_normal");
	St("RR",710, @-15,@5,"stノイズ_通常_normal");
	FadeAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
In the living room is Granny&, Koujaku&, Noiz&, Clear&, 
Mink&, Haga-san&, and Yoshie-san&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/6000010a02">
"Aoba&.&.&."

{	DeleteAllSt(180,true);}
{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",180,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/6000020a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/6000030a01">
"Granny! There are a bunch of policemen outside&, and he
 called out my name too&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_sigh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/6000040b03">
"This has definitely taken a turn for the worst&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("ML",720, @0,@0,"stヨシエ_通常_worry");
	St("MR",720, @0,@0,"st羽賀_通常_worry");
	FadeAllSt(180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm08/6000050b15">
"Wait&, Aoba-chan! What's going to happen!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm08/6000070b07">
"I finished the preparations for you and came over here&,
 Tae-san&, but&.&.&. it seems like there's bit of a problem&."

{	St("ML",720, @0,@0,"stヨシエ_通常_normal");
	FadeSt("ML",200,true);}
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm08/6000080b15">
"I don't know why they're doing this&, but I'm on your side&, Aoba-chan!"

{	St("MR",720, @0,@0,"st羽賀_通常_smile");
	FadeSt("MR",200,true);}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm08/6000090b07">
"Yes&, me too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_confuse",1850,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/6000100a01">
"Thank you&. But&, I feel only sort of relieved&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"stタエ_通常_sigh");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/6000110b03">
"This is most likely Toue&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/6000120a01">
"Toue&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/6000130b03">
"Yesterday&, Morphine must've reported that you used Scrap&.
 So now he's showing interest&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	SetVolumeEX("@dm007a", 1000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//※加工：拡声器
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm08/6000140b08">
"Hurry up and come oooooooooooooouuut!!! If you don't we'll come in! Okay! All right! Get ready for entryyyy!!"

{
	SoundPlay("@dm009",0,450,true);
	St("C",740, @0,@0,"stタエ_通常_shout");
	FadeSt("C",200,true);}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/6000150b03">
"All of you&, escape through the back door!"

{	DeleteAllSt(180,true);}
{	St("C",740, @0,@0,"st紅雀_通常_angry4");
	FadeSt("C",180,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/6000160a02">
"Those guys are completely serious&."

{	DeleteAllSt(180,true);}
{	St("MR",720, @0,@0,"st羽賀_通常_normal");
	FadeSt("MR",180,true);}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm08/6000170b07">
"We'll do something here&. So please&, Aoba-kun&, get out as
 quickly as you can!"

{	St("ML",720, @0,@0,"stヨシエ_通常_angry");
	FadeSt("ML",200,true);}
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm08/6000180b15">
"Exactly! We'll make sure that those stinky policemen can't take a single step!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/6000190a01">
"Haga-san&, Yoshie-san&.&.&. Granny&, thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//※加工：拡声器
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm08/6000200b08">
"CHAAAAAARRRRRRGEEEEE!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/6000210a02">
"Aoba&, they're coming!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg104001_1_蒼葉宅前通り");
	FadeBG(0,true);

	Delete("絵背景100");

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
We go outside through the back kitchen door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_足音_走る04複数");
	MusicStart("SE02",0,700,0,600,null,false);

	Wait(100);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 8000, 0, 2, 0, 0, 1000, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
As if they had taken our places&, we hear the noise of 
policemen crowding into the house&.

Granny&, Haga-san&, Yoshie-san&.&.&.
Everyone&, I'm sorry&.&.&.!

Please be safe&.&.&.!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 6000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Delete("絵板写");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg101021_1_旧住民区通り裏路地01.jpg");
	Rotate("絵背景100",0,0,180,null,false);
	Move("絵背景100",0,-256,0,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
We follow a narrow road that runs between two walls&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
We pass through it&, and it becomes a bit wider as we hit a different back lane&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/6000220a04">
"There are police over there! I can hear their footsteps!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",2000,700,0,800,null,false);

	CreateSE("SE02","se人体_足音_走る04複数");
	MusicStart("SE02",2000,700,0,600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Just as Clear yells out&, I hear the policemen in front of 
us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 10000, 0, null);

	Fw("fwm警官A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【警官Ａ】
<voice name="警官Ａ" class="警官Ａ" src="voice/dm08/6000230e15a">
"It's them! They're over here!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/6000240a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
They found us&.&.&.!

If they catch us here&, we'll be rounded up like cattle!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/6000250a05">
"Don't huddle together! Separate!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_足音_走る01");
	MusicStart("SE02",0,700,0,1100,null,false);
	CreateSE("SE03","se人体_足音_走る01");
	MusicStart("SE03",0,700,0,900,null,false);
	CreateSE("SE04","se人体_足音_走る01");
	MusicStart("SE04",0,700,0,800,null,false);
	CreateSE("SE04","se人体_足音_走る01");

	SetPan("SE01", 300, -1000, null);
	SetPan("SE02", 1000, 600, null);
	SetPan("SE03", 1000, -600, null);
	SetPan("SE04", 300, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Mink's voice urges us&, and we start running in different 
directions&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(500);

	ClearFadeAll(0, true);

//※次ファイル["dm1010.nss"]紅雀ルート
//※次ファイル["dm2010.nss"]ノイズルート
//※次ファイル["dm3010.nss"]ミンクルート
//※次ファイル["dm4010.nss"]クリアルート
//※次ファイル["dm5010.nss"]蓮ルート
//※次ファイル["dm0010.nss"]保険

}
