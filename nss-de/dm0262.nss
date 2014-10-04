//<continuation number="100">
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


scene dm0262.nss_MAIN
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


scene dm0262.nss
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

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6200010a01">
"No&, not really&. I just think it's a bit funny&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6200020a06">
"&.&.&.&.&."

{
	FadeDelete("絵ＥＶ*", 500, null, true);

	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6200030a01">
"? What is it?"

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6200040a06">
"I'm grateful to you five million times over&, baby&."

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6200050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6200060a01">
"&.&.&.What the heck?"

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6200070a06">
"I tried to change the wording a little&, how was it?"

{
Fw("fw蒼葉_通常_cheese");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6200080a01">
"&.&.&.Pft&. Ahahaha!"

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6200090a06">
"Aoba?"

{
	Fw("fw蒼葉_通常_cheese");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6200100a01">
"Hahaha&, no&, I'm sorry&. You're better off being how
 you've always been&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※次ファイル["dm0270.nss"]

}
