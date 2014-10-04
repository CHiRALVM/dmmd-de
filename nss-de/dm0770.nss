//<continuation number="50">
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


scene dm0770.nss_MAIN
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
	if($DM_ROUTE==5){	$GameName = "dm0775.nss";
	}else {		$GameName = "dm0780.nss";
	}

}


scene dm0770.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);
*/

	Delete("上背景");

//===========================================
//ここから合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreatePlainSP("絵板写", 990);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");
	SetShade("絵背景", MEDIUM);
	CreateTextureSP("絵立絵", 720, Center, Middle, "cg/fu/x/fuタエ_通常_normal_x02.png");
	CreateTextureSP("絵立絵弐", 710, Center, Middle, "cg/fu/x/fuタエ_通常_normal2_x02.png");
	CreateTextureSP("絵立絵参", 700, Center, Middle, "cg/fu/x/fuタエ_通常_smile_x02.png");

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shock3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/7000010a01">
"Granny&.&.&."

{
	DeleteFw();
	Fade("絵立絵", 200, 0, null, true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/7000020b03">
"What?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/7000030a01">
"My head hurts&.&.&."

{
	DeleteFw();
	Fade("絵立絵弐", 200, 0, null, true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/7000040b03">
"Take some medicine later&. We're going home&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/7000050a01">
"Okay&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.We're going home&.

Of course she'd say that&, but just hearing those words 
makes me very happy&.

We're going home&. To our house&.

I'm so glad&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 990);

	Delete("絵立絵*");
	Delete("絵背景*");

	CreateTextureSP("絵背景201", 201, 150, 200, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");
	Zoom("絵背景201", 0, 1500, 1500, null, true);
	Request("絵背景201", Smoothing);

	CreateTextureSP("絵背景200", 200, 150, 270, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	SetShade("絵背景200", MEDIUM);
	Request("絵背景200", Smoothing);

	Move("絵背景201", 1500, 150, 270, Dxl1, false);
	FadeDelete("絵板写", 1500, null, true);


	SetVolumeEX("@dm*", 5000, 0, null);

	FadeDelete("絵背景201", 1500, null, false);
	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1500, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(500);


	DrawTransition("絵黒幕", 2000, 400, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
&.&.&.The power in my body gradually ran out&, and at some 
point or another I lost consciousness&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//※次ファイル["dm0775.nss"]蓮ルートのみ表示
//※次ファイル["dm0780.nss"]

	SetVolumeEX("@dm*", 3000, 0, null);
	ClearFadeAll(0, true);
	Wait(6000);

}
