//<continuation number="120">
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


scene dm4080.nss_MAIN
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
	#bg301011_5_プラチナジェイル大通り4アクア=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4090.nss";

}


scene dm4080.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSPadd("絵色白", 4000, "FFFFFF");

	OnBG(10,"bg301011_5_プラチナジェイル大通り4アクア");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1500);

	CreateSE("SE02","se物体_ドア鉄_扉開く01a");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("絵色白", 3000, Dxl1, false);
	DrawDelete("絵色黒", 2000, 100, DxlAuto, "slide_06_00_0", true);

	SoundPlay("@dm004",0,450,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Through the door&, we found a mysterious yet magnificent 
scenery&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101,  -503, -375, "cg/bg/l/bg301011_5_プラチナジェイル大通り4アクア_l.jpg");
	Move("絵背景101", 1500, -41, -238, Dxl1, false);
	Fade("絵背景101", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
In front of us stands translucent&, magical buildings 
towering over us&, and thick greenery grows all around&.

When I look up&, I see countless stars glittering in the 
night sky&, something no one could ever see in the Old 
Resident District&.

{	FadeDelete("絵背景101", 500, null, true);}
Platinum Jail's weather and time zones are all controlled&, and it's usually set to night time&.

The idea behind it was so that guests could party any day&, any time&, apparently&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/8000010a04">
"It's all blue&. It's amazing&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/8000020a01">
"I wonder if there are other areas&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/8000030a04">
"Well&, there were five doors&. There must be&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -512, -140, "cg/bg/l/bg301011_5_プラチナジェイル大通り4アクア_l.jpg");
	Move("絵背景100", 1000, -512, -41, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Aside from the stars in the sky&, something else up high 
above me catches my eye&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/8000040a01">
"That's the Oval Tower&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
That tower is the symbol of Platinum Jail&.
I knew the name&, but I'd never seen it before&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/8000050a04">
"Master&, what shall we do first?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Clear looks around restlessly&, and then back to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/8000060a01">
"Actually&, I think the invitation says the name of the
 place where we'll be staying at&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//あきゅん「コイル：ここって素材あるっけか？」
	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//★バンク
	CoilBank04();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I work my Coil and a map pops up from my invitation&.

There's a place marked with a red arrow&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/8000070a01">
"It looks like they left it marked&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm40/8000080a06">
"Yeah&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/8000090a01">
"Well then&, let's go ahead and see for ourselves&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/8000100a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/8000110a01">
"Ren&, I'll leave you to the navigation&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm40/8000120a06">
"Roger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//あきゅん「コイル：ここで画面閉じる」

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
We follow Ren and head towards where we'll be staying&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm4090.nss"]

}
