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


scene dm4332.nss_MAIN
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
	$GameName = "dm4340lv.nss";

}


scene dm4332.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	St("C",740, @0,@0,"buクリア_正面マスクなし_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//「何か怖いのか？」の場合
//===========================================

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/3200010a01">
"&.&.&.Are you worried about something?"

{
	St("C",740, @0,@0,"buクリア_正面マスクなし_normal2");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/3200020a04">
"Worried?"

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/3200030a01">
"It sounds like you're really afraid of something to me&."

{
	St("C",740, @0,@0,"buクリア_正面マスクなし_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/3200040a04">
"Afraid? Me? It's not that&. I'm not afraid&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/3200050a01">
"Then why did you ask me something like that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4340lv.nss"]

}
