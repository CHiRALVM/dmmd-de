//<continuation number="20">
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


scene dm0740.nss_MAIN
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
	$GameName = "dm0750.nss";

}


scene dm0740.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);


	EfRecoOut1(0);

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);

*/

	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵立絵", 740, Center, Middle, "cg/fu/x/fuタエ_通常_normal_x02.png");
	CreateTextureSP("絵立絵弐", 700, Center, Middle, "cg/fu/x/fuタエ_通常_normal2_x02.png");

	FadeDelete("上背景", 0, null, true);

	EfRecoIn2(500);

//===========================================
//以下、蓮ルート以外で表示
//===========================================

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/4000010a01">
"Mizuki&.&.&."

{
	DeleteFw();
	Fade("絵立絵", 200, 0, null, true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/4000020b03">
"He's over there&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	Delete("絵立絵*");

	CreateTextureSP("絵背景500", 500, -598, -548, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");

	Move("絵背景500", 1000, -827, -548, Dxl1, false);
	FadeDelete("絵板写", 1000, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I follow where Granny points and see Mizuki is lying face  down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
//	CreateTextureSP("絵背景501", 501, Center, Middle, "cg/bg/bg402051_1_立ち入り禁止区域裏通り.jpg");

	St("LL",710, @0,@5,"stクリア_通常マスクあり_normal");
	St("ML",730, @30,@0,"st紅雀_通常_cool");
	St("MR",730, @-30,@0,"stミンク_通常_normal");
	St("RR",710, @-15,@5,"stノイズ_通常_normal");
	FadeAllSt(0,true);

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Koujaku&, Noiz&, Mink&, and Clear are all there too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0750.nss"]

}
