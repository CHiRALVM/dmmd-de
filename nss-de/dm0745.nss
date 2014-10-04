//<continuation number="10">
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


scene dm0745.nss_MAIN
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
	#ev900ライム対戦蒼葉VS東江1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0750.nss";

}


scene dm0745.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 10000);

	EfRecoIn1(10001,200);

	CreateTextureSP("絵効果背景1050", 1050, -297, -108, "cg/ev/ev900ライム対戦蒼葉VS東江1.jpg");

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);

	FadeDelete("上背景", 0, null, true);

	EfRecoIn2(500);

//===========================================
//以下、蓮ルートの場合のみ表示
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
After that&, I was pulled into Rhyme again&.&.&.
{
	CreateTextureEX("絵効果背景1051", 1050, 0, -80, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_l.jpg");
	Move("絵効果背景1051", 500, 0, -141, Dxl1, false);
	Fade("絵効果背景1051", 500, 1000, Dxl1, true);
	Delete("絵効果背景1050");
}
Why did Toue come out?

It made no sense&.
We couldn't even lay a hand on them&.

But&, still&, why was Toue&.&.&.?
And he even spoke as if he knew something about me&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

	Wait(500);

	CreateTextureEX("絵背景500", 500, -598, -548, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");
	Move("絵背景500", 1000, -827, -548, Dxl1, false);
	Fade("絵背景500", 1000, 1000, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Feeling incredibly uneasy&, I look at Mizuki who had fallen face down to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/4500010a01">
"Mizuki&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	CreateTextureSP("絵背景501", 501, Center, Middle, "cg/bg/bg402051_1_立ち入り禁止区域裏通り.jpg");

	St("LL",710, @0,@5,"stクリア_通常マスクあり_normal");
	St("ML",730, @30,@0,"st紅雀_通常_cool");
	St("MR",730, @-30,@0,"stミンク_通常_normal");
	St("RR",710, @-15,@5,"stノイズ_通常_normal");
	FadeAllSt(0,true);

	FadeDelete("絵板写", 1000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Koujaku&, Noiz&, Mink&, and Clear are all there too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0750.nss"]

}
