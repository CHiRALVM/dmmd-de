//<continuation number="60">
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


scene dm0730.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	if($DM_ROUTE==5){	$GameName = "dm0745.nss";
	}else {		$GameName = "dm0740.nss";
	}

}


scene dm0730.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);
	//Zoom("@OnBG*", 0, 1500, 1500, null, true);
	//Move("@OnBG*", 0, -120, -90, null, true);
	//Request("@OnBG*", Smoothing);

	if($PreGameName == "dm0725_vs.nss"){

	CreatePlainSP("絵板写", 100);
	SetShade("絵板写", HEAVY);
	FadeDelete("@上背景", 1000, null, true);
	Wait(500);
	FadeDelete("絵板写", 1000, null, true);
	}else{
	FadeDelete("@上背景", 0, null, true);
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/3000010b03">
"You're finally awake&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/3000020a01">
"Eh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Huh?

That voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, Center, -50, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");
	CreateTextureSP("絵立絵", 700, Center, Middle, "cg/fu/x/fuタエ_通常_normal_x02.png");
	CreateTextureSP("絵立絵弐", 600, Center, Middle, "cg/fu/x/fuタエ_通常_normal2_x02.png");

	SetShade("絵背景", MEDIUM);

	Move("絵立絵*", 0, @0, @-25, null, true);

	Move("絵立絵*", 1000, @0, @25, null, false);
	Move("絵背景", 1000, @0, @50, null, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/3000030a01">
"&.&.&.Granny!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Why is Granny here&.&.&.!?

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
When I try to get up&, I realize I was resting on Granny's 
lap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/3000040a01">
"Granny&, why&, how- Huh?"

{
	DeleteFw();
	Fade("絵立絵", 200, 0, null, true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/3000050b03">
"It's been chaos ever since you got here&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/3000060a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/ev/ev069ミズキ人質を取る.jpg");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.That's right&.

I think of how I stopped Mizuki's people from loading 
Granny into their car&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0745.nss"]蓮ルートのみ表示
//※次ファイル["dm0740.nss"]

}
