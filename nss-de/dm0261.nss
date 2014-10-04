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


scene dm0261.nss_MAIN
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
	$GameName = "dm0270.nss";

}


scene dm0261.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景110", 110, 0, -572, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	CreateTextureSP("絵ＥＶ111", 111, -250, -268, "cg/ev/m/ev026蓮メンテ_m.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	FadeDelete("絵ＥＶ111", 250, null, true);
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6100010a01">
"No&, not at all&. I think it suits you&, so it's good&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6100020a06">
"I wonder if I should thank you for that remark&."

{
	Fw("fw蒼葉_通常_smile");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6100030a01">
"You should&. I was complimenting you&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6100040a06">
"Thank you&."

{
	Fw("fw蒼葉_通常_cheese");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6100050a01">
"Ahahaha&.&.&. The pleasure is mine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※次ファイル["dm0270.nss"]

}
