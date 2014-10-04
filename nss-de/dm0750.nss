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


scene dm0750.nss_MAIN
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
	if($DM_ROUTE==5){	$GameName = "dm0765.nss";
	}else {		$GameName = "dm0760.nss";
	}

}


scene dm0750.nss
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

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);
*/

	St("LL",710, @0,@5,"stクリア_通常マスクあり_normal");
	St("ML",730, @30,@0,"st紅雀_通常_cool");
	St("MR",730, @-30,@0,"stミンク_通常_normal");
	St("RR",710, @-15,@5,"stノイズ_通常_normal");
	FadeAllSt(0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//ここから合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_通常_sad");
	FadeSt("C",180,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm07/5000010a02">
"Are you okay&, Aoba?"

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",180,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm07/5000020a04">
"Master!"

{
	SoundPlay("@dm013",0,450,true);

	DeleteAllSt(200,true);
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/5000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0765.nss"]蓮ルートのみ表示
//※次ファイル["dm0760.nss"]



	//ClearFadeAll(1000, true);

}
