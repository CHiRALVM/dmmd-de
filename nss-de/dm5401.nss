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


scene dm5401.nss_MAIN
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
	if($ウイトリ選択肢>1){	$GameName = "dm5411.nss";
	}else {		$GameName = "dm5420.nss";
	}

}


scene dm5401.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeAllSt(0,true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 800, null, true);

	FadeDelete("上背景", 0, null, true);

	Wait(300);

	Fade("絵色黒", 3000, 1000, null, false);
//===========================================
//「もう抵抗する気力もない」の場合
//===========================================
	Wait(500);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/0100010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
It's frustrating to admit&, but&.&.&.

This could be the end of it all&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
	DeleteAllSt(0,true);

//※ウイトリBAD ENDへ
//※次ファイル["dm5411.nss"]
//※次ファイル["dm5420.nss"]

}
