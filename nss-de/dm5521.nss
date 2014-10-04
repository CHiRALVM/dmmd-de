//<continuation number="90">
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


scene dm5521.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	$GameName = "dm5522ed.nss";

}


scene dm5521.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SetVolumeEX("@dm*", 1000, 0, null);

	PrintBG("上背景２", 30000);

	OnBG(10,"bg206011_0_暴露蓮");
	FadeBG(0,true);

	DrawDelete("上背景２", 300, 1000, null, "noize_01_00_0", true);

	Wait(500);

//※特殊選択肢：失敗から

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/2100010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
No&.&.&.

Did I lose to Scrap?

When I returned to Ren's field&, I stared at him to confirm the situation&.

He held his head down&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/2100020a01">
"Ren&.&.&.?"

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/2100030a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//おがみ：出さないほうがよいか
//	Fw("fw蓮_通常マントなし_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/2100040a06">
"Grrrr&.&.&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/2100050a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The expression on Ren's face as he lifts his head left me 
terrified&.

A low growl rose from this throat as he stared at me with 
crazed&, bloodshot eyes&.

&.&.&.He licked his lips like a beast who had found its prey&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/2100060a01">
"Ah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Driven by horror&, I tried to retreat&.

Ren slowly took a step forward and closed the distance 
between us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.This isn't Ren&.

This isn't the Ren I know because I lost to Scrap&.

Did I break him?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/2100070a06">
"Graahhhh!"

{	Fw("fw蒼葉_通常_pain");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/2100080a01">
"&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Ren springs at me&.

I can't avoid him&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

//※ＳＥ：どさっと押し倒される音
	CreateSE("SE01","se人体_衝撃_転倒01");
	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/2100090a01">
"&.&.&.Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(3000);

//※次ファイル["dm5522ed.nss"]

}
