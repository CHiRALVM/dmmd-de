//<continuation number="30">
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


scene dm0591.nss_MAIN
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
	$GameName = "dm0600.nss";

}


scene dm0591.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm003",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/bg102031_1_平凡前通り.jpg");

	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「先を急ぐ」を選んだ場合
//==============================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
There's no way he could've heard my voice from so far away&.

He's just saying that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/9100010a01">
"'s that so? Let's just head over into the shop&. Isn't that what you came here for?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 300, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
To escape the pressure of Mink's glare&, I grab Clear's 
shoulder and head in the other direction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm05/9100020a04">
"I see&. I understand&."

{
	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",0,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm05/9100030a04">
"Now&, please come inside&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//※次ファイル["dm0600.nss"]

}
