//<continuation number="0">
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


scene dm0805.nss_MAIN
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
	$GameName = "dm0810.nss";

}


scene dm0805.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//※以下、蓮ルートのみ入る
//----------------------------------------------

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Granny&.&.&. worked for Toue&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10001,200);

	CreateTextureSP("絵効果背景", 1050, 0, -141, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_l.jpg");

	EfRecoIn2(500);

	Wait(1500);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I recall the time when I fought Toue in Rhyme&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



//----------------------------------------------
//※ここまで

//※次ファイル["dm0810.nss"]


//	ClearFadeAll(1000, true);

}
