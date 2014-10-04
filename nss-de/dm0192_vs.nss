//<continuation number="40">
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


scene dm0192_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	if($PreGameName=="dm0190_vs.nss"){
	}else if($PreGameName=="dm0192_vs.nss"){
	}else{
	CreateTxtinEffect("蓮",4000);
	CreateTxtinEffect("ノイズ",4000);
	RMScaningSet();
	RMScaningCSet("蒼葉");
	RMDefaultStatusSet();
	RMDControlSet();
	}

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
	$GameName = "dm0200_vs.nss";

}


scene dm0192_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm008",0,450,true);//疾走

	PrintBG("上背景", 30000);

	CreateTextureSP("絵専", 1310, -512, -302, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Request("絵専", Smoothing);
	Zoom("絵専", 0, 550, 550, Dxl3, false);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「蓮を庇う」を選んだ場合
//==============================================

	CreateSE("SE01a","se戦闘_動作_跳躍低01");
	MusicStart("SE01a",0,700,0,1500,null,false);
	CreatePlainSP("絵板写", 3900);
	SetBlur("絵板写", true, 3, 500, 80, false);
	Zoom("絵板写", 300, 1500, 1500, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I move my body immediately and jump in front of Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Fw("fw蓮_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9200010a06">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 10, Center, InBottom, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");

	CreateSE("SE01a","se戦闘_動作_跳躍低01");
	MusicStart("SE01a",0,700,0,1500,null,false);
	//CreatePlainSP("絵板写", 3900);
	Zoom("絵板写", 300, 5000, 5000, Axl3, false);
	Wait(200);
	Rotate("絵板写", 300, @0, @0, 1080, Dxl3,false);
	Wait(200);

//※ボカーン！ふっ飛ばされる２人。
	CreateSE("SE01","se戦闘_打撃_ヒット低04");
	MusicStart("SE01",0,850,0,1200,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);

	Fade("絵背景", 0, 1000, null, true);

	Delete("絵専");
	Delete("覆");
	Delete("絵演*");
	Delete("絵板写");
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,800,null,false);
	BGPlainShake(50,300,0,80,0,0,1000,null,true);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9200020a01">
"Gh&.&.&. Guah&.&.&."

{	Fw("fw蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9200030a06">
"Alles in Ordnung&, Aoba?"

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9200040a01">
"Es geht mir gut&.&.&. uhh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0200_vs.nss"]

}


/*
while(1){

	CreateTextureSP("絵背景一", 1100, Center, Middle, "cg/ev/ev950蓮バトル汎用防御【完成01】.jpg");

	WaitKey();

	CreateTextureSPadd("絵演盾", 1200, -211, -287, "cg/ef/efv属性文字_蓮_慶_ラフ03b.png");
	Rotate("絵演盾", 0, @0, -50, @0, null,true);

	CreateTextureSPover("絵背景二", 1110, Center, Middle, "cg/ev/ev950蓮バトル汎用防御【完成02】.jpg");
	Zoom("絵背景二", 0, 1010, 1010, null, true);
	Wait(16);
	//Zoom("絵演盾", 10000, 10000, 10000, null, false);
	//FadeDelete("絵演盾", 200, null, false);
	//FadeDelete("絵背景二", 500, null, true);

while(1){

	Move("絵演盾", 0, -280, -287, null, true);
	Zoom("絵演盾", 0, 1000, 1000, null, true);
	Fade("絵演盾", 0, 1000, null, true);

	Zoom("絵演盾", 200, 1000, 3000, null, false);
	FadeFFR("絵演盾", 0,1000, 100, 0, 0, 30, null, false);
	Fade("絵背景二", 0, 1000, null, true);
	Wait(16);
	Fade("絵演盾", 20, 80, null, false);
	Fade("絵背景二", 100, 0, null, false);

	Wait(150);

}

	WaitKey();

}
*/