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


scene dm0191_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	if($PreGameName=="dm0190_vs.nss"){
	}else if($PreGameName=="dm0191_vs.nss"){
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


scene dm0191_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm008",0,450,true);//疾走

	PrintBG("上背景", 30000);

	//OnBG(10,"bg101011_1_旧住民区通り表");
	//FadeBG(0,true);

	CreateTextureSP("絵専", 1310, -512, -302, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Request("絵専", Smoothing);
	Zoom("絵専", 0, 550, 550, Dxl3, false);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「ガードする」を選んだ場合
//==============================================

	CreateSE("SE01","se戦闘_動作_跳躍低01");

	CreateStencil("覆",0,1024,-600,128,"cg/ev/ev950蓮バトル汎用突進a_人物蓮.png",false);
	SetAlias("覆","覆");
	Zoom("覆", 0, 1500, 1500, null, true);

	CreateColorSP("覆/蓮影", 1420, "000000");
	Position("覆", $x1, $y1);
	CreateTextureSP("絵演蓮", 1410, $x1, $y1, "cg/ev/ev950蓮バトル汎用突進a_人物蓮.png");
	Zoom("絵演蓮", 0, 1500, 1500, null, true);
	SetBlur("絵演蓮", true, 3, 500, 60, false);

	CreateTextureEX("絵演蓮背景", 1400, Center, Middle, "cg/ev/ev950蓮バトル汎用突進a_背景.jpg");

	MusicStart("SE01",0,700,0,1250,null,false);
	$MovePosX=-30;
	$MovePosY=-340;
	$MoveT=400;
	Move("絵演蓮", $MoveT, $MovePosX, $MovePosY, Dxl2, false);
	Move("覆", $MoveT, $MovePosX, $MovePosY, Dxl2, false);
	Zoom("絵演蓮", $MoveT, 1000, 1000, Dxl2, false);
	Zoom("覆", $MoveT, 1000, 1000, Dxl2, false);

	Wait(180);
	Fade("絵演蓮背景", 800, 1000, null, false);
	Fade("覆/蓮影", 1400, 0, null, false);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ren jumps in front of me when I miss the chance to 
escape&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 10, Center, InBottom, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");

	CreateSE("SE01a","se戦闘_動作_跳躍低01");
	MusicStart("SE01a",0,700,0,1500,null,false);
	CreatePlainSP("絵板写", 3900);
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

{	Fw("fw蓮_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9100020a06">
"&.&.&.Ngh&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9100030a01">
"Ren&, are you okay!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0200_vs.nss"]

}
