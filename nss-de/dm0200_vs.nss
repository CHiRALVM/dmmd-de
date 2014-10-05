//<continuation number="580">
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


scene dm0200_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";


	if($PreGameName=="dm0191_vs.nss"){
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
	#ev950蓮、武器発現=true;
	#ev950蓮の剣砲構えa=true;
	#ev950蓮バトル汎用突進a=true;
	#ev950蓮バトル汎用防御a=true;
	#ev960ウサギモドキ戦闘構え=true;
	#ev960ウサギモドキ戦闘突進=true;
	#ev950蓮バトル汎用防御a_効果=true;
	#bg201023_0_ライムノイズ03=true;


	//▼使用した演出関連の素材を削除
	RMScaningDelete();
	RMDControlDelete();
	TemptationDelete("絵板写");
	EffectTxtinDelete();
	SetLoopPoint("@dm023",1789,93204);
	SetFrequency("@dm006*", 0, 1000, null);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0210.nss";

}


scene dm0200_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――
/*
	//CreateColorSP("絵色黒", 0, "000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/ev950蓮バトル汎用突進a.jpg");
	//RMScaningTest();

	CreateTxtinEffectS(2000,"蓮","慶");

	while(1){

	WaitKey();

	EffectTxtinS(700,"蓮","慶");
	}

	WaitKey();
*/
//==============================================

	SoundPlay("@dm008",0,450,true);//疾走

	PrintBG("上背景", 30000);

	//OnBG(10,"bg201021_0_ライムノイズ01");
	//FadeBG(0,true);

	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

//以下、内容が重複してるので削除してください。
//あきゅん「↑：削除しました10/6」

//※白蒼葉がうごめく予兆

	SetVolumeEX("@dm*", 300, 0, null);

	CreateSE("SE01","se擬音_効果_ノイズ01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateTextureSPsub("絵演効果", 100, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演効果", 0, 1100, 1100, null, true);
	Shake("絵演効果", 300, 20, 30, 0, 0, 500, null, false);
	Wait(100);
	Delete("絵演効果");
	SetVolumeEX("SE01", 100, 0, null);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000090a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写上", 4900);
	SetShade("絵板写上", MEDIUM);
	CreatePlainSP("絵板写", 2000);

//※どくん
//※白蒼葉の幻
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-435,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 800, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	CreateSE("SE01","se人体_心臓_鼓動02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	TemptationAobaIn("絵板写");

	Wait(96);

	Fade("絵板写上", 200, 1000, null, false);
	TemptationAobaOut(200,true);

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",3000,400,0,600,null,true);

	CreateProcessEX("プロセス", "Proc_dm0200_vs_01Act");
	Request("プロセス", Start);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000100a01">
"Nnn&.&.&. Uhh&, Ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※どくん
//※白蒼葉の幻
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-970,-550,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",1500,1500);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se人体_心臓_鼓動02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("絵板写上", 0, 0, null, true);
	SetShade("絵板写上", SEMIHEAVY);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵板写");

	Wait(80);

	Fade("絵板写上", 200, 1000, null, false);
	TemptationAobaOut(200,true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000110a01">
"Mein&, Kopf&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※どくん、どくん
//※白蒼葉の幻
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-1700,-740,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",3000,3000);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se人体_心臓_鼓動02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("絵板写上", 0, 0, null, true);
	SetShade("絵板写上", HEAVY);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵板写");

	Wait(80);

	Fade("絵板写上", 200, 1000, null, false);
	TemptationAobaOut(200,true);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000120a01">
"&.&.&.Nnn&, &.&.&.Uhh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※白蒼葉、口元ニヤリ的な
//蒼葉、半分乗っ取られてるような状態になる。放心状態。
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,190,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",3000,3000);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se人体_心臓_鼓動02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("絵板写上", 0, 0, null, true);
	SetShade("絵板写上", EXTRAHEAVY);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵板写");

	Wait(112);

	Fade("絵板写上", 200, 1000, null, false);
	TemptationAobaOut(200,true);

	SetVolumeEX("SEL01", 2000, 0, null);
	FadeDelete("絵板写上", 2000, null, true);
	Delete("絵演黒蒼葉誘惑黒隠");
	TemptationDelete("絵板写");

	Request("プロセス", Stop);
	Delete("プロセス");

	CreateTextureEX("絵演専", 1110, -790, -676, "cg/ev/l/ev900ライム対戦蒼葉VSウサギ頭_l.jpg");
	CreateSE("SE01","se人体_動作_衣擦れ17");

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演専", 1500, @0, -360, DxlAuto, false);
	Fade("絵演専", 1500, 1000, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000130a01">
"Ren&, 'JUBEL'&, Set&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000131a06">
"Aoba?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000132a01">
"Mach schon&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu蓮_通常_normal");
	FadeSt("C",0,true);}

	Move("絵背景", 0, @0, -1450, null, true);
	FadeDelete("絵演専", 500, null, true);

	Wait(200);

{	St("C",740, @0,@0,"bu蓮_通常_worry");
	FadeSt("C",400,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000133a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//あきゅん「※：ここで蓮の表情を出してないのはわざとです」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000140a06">
"&.&.&.Verstanden&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ノイズ側のフィールド画面
//少し離れたところで蒼葉を見ているノイズ。

	PrintGO("上背景", 19000);
	CreateColorSP("絵色黒", 5000, "000000");
	FadeDelete("上背景", 1000, null, true);

	Wait(500);

	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201022_0_ライムノイズ02.jpg");

	FadeDelete("絵色黒", 1000, null, true);

	SoundPlay("@dm010",0,450,true);//電脳バトル

{	Fw("fwウサギ頭_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000150a03">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演", 1110, -320, 0, "cg/ev/l/ev900ライム対戦蒼葉VSウサギ頭_l.jpg");
	Fade("絵演", 500, 1000, null, false);
	Move("絵演", 3000, -810, -360, DxlAuto, true);

	Position("@絵背景", $x1, $y1);
	RMScaningBG($x1, $y1, "cg/bg/bg201022_0_ライムノイズ02.jpg");

	Position("@絵演", $x1, $y1);
	RMScaningTarget($x1, $y1, "cg/ev/l/ev900ライム対戦蒼葉VSウサギ頭_l.jpg");

	RMScaning(255, 300, "蒼葉", $蒼葉ＨＰ, $蒼葉ＡＰ, $蒼葉ＤＰ);

{	Fw("fwウサギ頭_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000160a03">
"&.&.&.Tch&. Du musst mich verarschen&."

//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000170a03">
"Sein All-Mate ist ein altes Modell ohne Ruestung&. &.&.&.Unterschaetzt er mich?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwAMウサギモドキ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm02/0000180c09">
"Er hat kaum etwas&, er knausert mit uns!"

{	Fw("fwウサギ頭_通常_normal");}
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000190a03">
"&.&.&.Lass uns das einfach beenden&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	RMScaningClose();

	FadeDelete("絵演", 1000, null, true);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演蒼葉", 3740, Center, Middle, "cg/bu/bu蒼葉_通常_happy.png");
	Position("@絵演蒼葉", $x1, $y1);
	CreateStencil("絵覆",0,$x1,$y1,128,"cg/bu/bu蒼葉_通常_happy.png",false);
	SetAlias("絵覆","絵覆");
	CreateColorSP("絵覆/絵色黒", 3745, "000000");
	DrawTransition("絵覆/絵色黒", 1, 0, 250, 100, null, "cg/data/slide_02_00_0.png", true);

	CreateTextureSP("絵演効果背景", 3010, Center, InBottom, "cg/bg/bg201023_0_ライムノイズ03.jpg");
	SetShade("絵演効果背景", SEMIHEAVY);


	FadeDelete("絵板写", 1000, null, true);
	//パッチ：クイックセーブ時ナット残り対応（千代子
	Fade("@EFWIN/キャラ飾り_*", 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000200a01">
"&.&.&.&.&."

{	Fw("fwウサギ頭_通常_normal");}
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000210a03">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 200, 1000, null, true);

	Delete("絵演*");
	Delete("絵覆");

//※蒼葉の攻撃。「慶」セット。蓮の両腕からぐぐっと刃が出てきて、そこにビリッと電流が走る。
//あきゅん「演出：蓮武器錬成素材定義ココカラ↓↓↓」
	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreateTextureEX("絵演専", 1110, -1024, -300, "cg/ev/l/ev950蓮、武器発現_l.jpg");
	//SetBlur("絵演専", true, 2, 300, 90, false);

	CreateTextureEXadd("絵効果紫電一", 1120, 0, 0, "cg/ev/x/ev950蓮、武器発現_効果紫電a.png");
	CreateTextureEXadd("絵効果紫電二", 1120, 0, 0, "cg/ev/x/ev950蓮、武器発現_効果紫電b.png");
	CreateTextureEXadd("絵効果紫電三", 1120, 0, 0, "cg/ev/x/ev950蓮、武器発現_効果紫電c.png");

	CreateSurfaceEX("絵効果サフ", 2000,1000,"@絵演専");
	SetSurface("絵効果紫電一","絵効果サフ");
	SetSurface("絵効果紫電二","絵効果サフ");
	SetSurface("絵効果紫電三","絵効果サフ");

	Fade("絵効果サフ", 0, 1000, null, true);

	CreateProcessEX("プロセス", "SpiralSparc2");

//あきゅん「演出：蓮武器錬成素材定義ココマデ↑↑↑」

//あきゅん「※：ここから動作定義」
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,800,null,false);
	BezierMove("絵演専", 800, (-1024,-300){-400,-350}{-512,0}(-680,-210), DxlAuto, false);
	Fade("絵演専", 0, 1000, null, true);

	FadeDelete("絵色黒", 800, null, true);

	EffectTxtinA("蓮","慶");
	EffectTxtinB("蓮","慶");

	Position("@絵演専", $x1, $y1);
	Move("絵効果紫電*", 0, $x1, $y1, null, true);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,500,null,false);

	CreatePlainEX("絵板写", 2100);
	SetVertex("絵板写", left, bottom);
	//SetBlur("絵板写", true, 2, 300, 300, false);
	Fade("絵板写", 200, 500, null, false);
	Zoom("絵板写", 400, 1200, 1200, Dxl3, false);
	Wait(300);

	CreateSE("SEL21","se擬音_効果_帯電02");
	MusicStart("SEL21",0,700,0,800,null,true);
	SetFrequency("SEL21", 5000, 1000, null);
	Request("プロセス", Start);

	Zoom("絵板写", 10000, 1300, 1300, Dxl3, false);
	Fade("絵板写", 600, 0, null, true);

	Move("絵効果紫電*", 2000, -320, -20, DxlAuto, false);
	Move("絵演専", 2000, -320, -20, DxlAuto, true);

{	Fw("fwウサギ頭_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000220a03">
"&.&.&.Was?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蓮、腕を交差させて電気溜め→敵に向かって腕を開いて放つ。
	CreateSEEX("SE22","se戦闘_蓮_腕武器化01L");//あきゅん「ＳＥ：ダミー未確認」
	MusicStart("SE22",0,700,0,1000,null,true);
	Zoom("絵効果サフ", 4000, 2000, 2000, DxlAuto, false);

	Move("絵効果サフ", 4000, 300, @0, DxlAuto, false);
	Move("絵効果紫電*", 4000, 0, -200, DxlAuto, false);
	Move("絵演専", 4000, 0, -200, DxlAuto, false);

	Wait(1000);
	Fade("絵色白", 2000, 1000, Axl3, true);

	Delete("絵効果紫電*");
	Delete("絵演専");
	Delete("絵背景");
	Delete("絵効果サフ");
	Delete("絵板写");
	Request("プロセス", Stop);

//蓮剣砲素材定義
	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/x/ev950蓮の剣砲構え_効果風圧_x01.png");
	SetVertex("EF1", 514, 435);
	Zoom("EF1", 0, 2300, 2300, null, true);

	CreateTextureEXadd("EF2", 1000, -212, 27, "cg/ef/efx02火花電光01.jpg");
	Zoom("EF2", 0, 1800, 1800, null, true);

	CreateColorEXadd("EF3", 5000, "FFFFFF");
	DrawTransition("EF3", 0, 500, 500, 100, null, "cg/data/beam_03_00_0.png", true);
	Fade("EF3", 0, 0, null, true);

	CreateColorEXadd("EF4", 5000, "FFFFFF");

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_剣撃_地面に刺す01");
	CreateSE("SE05","se擬音_精神_ひび02");
	CreateSE("SE06","se擬音_精神_脱出01");
	CreateSE("SE07","se戦闘_衝撃_破損01a");
	CreateSEEX("SE08","se戦闘_メガ砲_チャージ01");

	CreateMovieEX("絵動画", 2000, 120, 170, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵動画",0,5000,3000,null,true);

	CloudZoomSmokeSet01("稲妻",200,"cg/ev/x/ev950蓮の剣砲構え_効果紫電_x01.png");

	//CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	//SetShade("絵背景", HEAVY);
	//Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEX("蓮攻撃", 100, -250, Middle, "cg/ev/ev950蓮の剣砲構えa.jpg");
	Rotate("蓮攻撃", 1, @0, @0, @50, null,false);
	Zoom("蓮攻撃", 0, 1300, 1300, null, true);
	SetBlur("蓮攻撃", true, 2, 500, 50, false);

	CreateTextureEXadd("光", 100, Center, Middle, "cg/ef/effi暴露成功_ef01.png");
	Move("光", 0, @-250, @50, null, true);
	Zoom("光", 0, 5000, 5000, null, true);

	RotetoLoopOGM02("光プロセス","光",1800,-3600);
	RotetoLoopOGM03("光プロセス2","EF1",34000,-3600);

	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("光", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("蓮攻撃", 10000000, 3, 3, 3, 3, 900, null, false);

	SetVolumeEX("SEL21", 300, 0, null);
	SetVolumeEX("SE22", 300, 0, null);
	FadeDelete("絵色白", 100, null, false);

//蓮剣砲構え
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("絵背景EF02", 100, 1000, null, false);
	Fade("絵背景", 100, 1000, null, false);
	Zoom("絵背景", 650, 2000, 2000, AxlDxl, false);
	BezierMove("絵背景", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
	BezierMove("絵背景EF02", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@150,@-150), null, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 400, -200, 0, Dxl2, false);
	FadeDelete("絵背景EF01", 200, Axl2, false);

	//Wait(100);

	FadeDelete("絵背景EF02", 200, Axl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);

	//Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE08",0,600,0,200,null,true);

	Rotate("蓮攻撃", 300, @0, @0, 0, Dxl2,false);
	Zoom("蓮攻撃", 300, 1100, 1100, Dxl3, false);
	Fade("蓮攻撃", 100, 1000, null, false);
	Move("蓮攻撃", 300, -180, -140, Dxl3, true);
	SetBlur("蓮攻撃", false, 2, 300, 1000, false);

//蓮剣砲チャージ
	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	SetBlur("蓮攻撃", true, 2, 500, 50, false);
	Fade("絵動画", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("光", 3000, 500, null, false);

	Zoom("蓮攻撃", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@蓮攻撃",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);

{	Fw("fwウサギ頭_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000230a03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※どーん。ウサギモドキが何体かやられる。
//蓮剣砲発射
	Shake("EF2", 1000, 10, 21, 0, 0, 1000, null, false);
	Fade("EF2", 0, 1000, null, true);
	Wait(50);

	MoveFTP1stop();
	MoveFTP2stop();

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);
	SetVolumeEX("SE08", 1000, 0, null);

	SetBlur("蓮突進", true, 2, 300, 50, false);
	Move("蓮攻撃", 200, -20, -200, Dxl2, false);
	Fade("EF3", 50, 1000, null, true);

	Shake("蓮攻撃", 1000, 10, 3, 12, 7, 900, null, false);

	Wait(50);

	Fade("EF4", 200, 1000, Axl1, true);

	MusicStart("SE07",0,1000,0,1000,null,false);

	RMDControlLDefault($ノイズＨＰ);//4000
	//SetFont("ＭＳ 明朝", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("Dt1", 15000, 50, 20, 700, 500, $ノイズＨＰ);

	$現ノイズＨＰ=$ノイズＨＰ;
	//CreateText("Dt2", 15000, 50, 40, 700, 500, $現ノイズＨＰ);

	$ダメージ=1200;
	//CreateText("Dt3", 15000, 50, 40, 700, 500, $ダメージ);

	$現ノイズＨＰ=$現ノイズＨＰ-$ダメージ;
	//CreateText("Dt2", 15000, 50, 60, 700, 500, $現ノイズＨＰ);

	RMDControlInL(1000,$現ノイズＨＰ);
	RMDControlOutL(2000);

	PrintGO("上背景", 9990);
	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201022_0_ライムノイズ02.jpg");

	Delete("稲妻*");
	Delete("蓮攻撃");
	Delete("光*");
	Delete("プロセス");
	Delete("EF*");
	FadeDelete("上背景", 1000, null, true);

{	Fw("fwAMウサギモドキ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm02/0000240c09">
"P!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_衝撃_爆発小01");
	CreateSE("SE02","se戦闘_衝撃_爆発小01");
	CreateSE("SE03","se戦闘_衝撃_爆発小01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 300, null, false);
	Wait(100);
	MusicStart("SE02",0,700,-200,1000,null,false);
	Wait(200);
	MusicStart("SE03",0,700,400,1000,null,false);

	WaitAction("@絵色白", null);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000250c10">
"Angriff des Gegners bestaetigt! 3 Verluste! Ausdauer um 12 verringert!"

{	Fw("fwウサギ頭_通常_normal");}
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000260a03">
"&.&.&.Vernichte den Typen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 600, 0, null);
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1500,null,false);

//※蒼葉視点
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("絵背景50", 100, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);

	SoundPlay("@dm023",0,1,true);//疾走２
	SetStream("@dm023", 44700);
	SetVolumeEX("@dm023", 0, 450, null);
	SetLoopPoint("@dm023",44700,93264);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000270a01">
"&.&.&.!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000280a01">
"Erst jetzt&.&.&. Was habe ich&.&.&.?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000290a01">
"Ren&, was war das&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000300a06">
"Du hast mir die Anweisung gegeben anzugreifen&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000310a01">
"Anzugreifen? Wie konnte ich das? Ich kenne keine Attacken&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000320a01">
"Aber gerade eben&.&.&. hat es sich angefuehlt als haette sich mein Mund von selbst 
 bewegt&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000330a06">
"Aoba&, er kommt wieder&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000340a06">
"Anweisungen&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000350a01">
"Selbst wenn du fragst&, Ich&.&.&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000360a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000370a01">
"Aber wenn ich nicht&.&.&, haetten wir ein Problem&, richtig&.&.&.?"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000380a01">
"Ich muss es nur machen wie zuvor&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//SetVolumeEX("@dm*", 500, 200, null);
	SetVolumeEX("@dm023", 500, 200, null);

//※目を閉じる蒼葉。意識を集中。
//※どくん
	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	Wait(500);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000390a01">
"&.&.&.gh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//※どくん
//※白蒼葉の幻
	CreateColorSP("絵色黒下", 2009, "000000");
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",2102);
	TemptationAobaSet("絵演黒蒼葉誘惑",2100,Center,Middle,"cg/ev/ev900もう１人の蒼葉.jpg",1500,1500);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 2110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 650, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_心臓_鼓動02");

	MusicStart("SE01",0,1200,0,1000,null,false);
	TemptationAobaIn("絵黒幕");
	TemptationAobaOut(200,false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000400a01">
"&.&.&.Nngh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",2100,Center,-120,"cg/ev/ev900もう１人の蒼葉.jpg",2000,2000);

//※どくん
//※白蒼葉の幻
	CreateSE("SE01","se人体_心臓_鼓動02");

	MusicStart("SE01",0,1500,0,1000,null,false);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵黒幕");
	TemptationAobaOut(200,true);

	SetVolumeEX("@dm023", 2000, 450, null);

	Wait(300);

	Delete("@絵演黒蒼葉誘惑黒隠");
	TemptationDelete("絵黒幕");
	Wait(16);
	DrawTransition("絵色黒下", 1000, 1000, 0, 100, null, "cg/data/slide_02_00_0.png", true);
	Delete("絵色黒下");

{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000410a01">
"&.&.&.Ren&.&.&. Verteidigung&."

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000420a06">
"Verstanden&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※蒼葉、蓮に透明な盾を発生させてガード。
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,850,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景");

	$絵演専="絵演専";
	CreateTextureSP($絵演専, 1110, -230, -300, "cg/ev/l/ev960ウサギモドキ戦闘構え_l.jpg");
	SetVertex($絵演専, 465, 485);

	CreateTxtinEffectS(2000,"ノイズ","崩");

	Delete("絵背景50");
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000430c10">
"'ZERSTOERUNGS' Set!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm02/0000440c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EffectTxtinS(700,"ノイズ","崩");

//※どん！と衝撃波みたいな音
//※ノイズの攻撃、「崩」セット。ウサギモドキが発光ミサイルになって飛んでくる。

//ウサギ光突進素材生成

	CreateColorSP("絵色黒", 0, "000000");
	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateMaskEX("絵面一", 0, Center, Middle, "cg/data/zzexslide_01_00_1.png", false);
	CreateMovieEX("絵面一/絵演効果線", 2990, Center, -72, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵面一/絵演効果線", 0, 2600, 5000, null, true);

	CreateProcessEX("プロセス", "Proc_dm0200_vs_02Act");
	Request("プロセス", Start);

	$絵演兎突背景="Ｃ/絵演兎突背景";
	CreateTextureEX($絵演兎突背景, 0, Center, Middle, "cg/ev/ev960ウサギモドキ戦闘突進_背景.jpg");
	SetVertex($絵演兎突背景, 400, 110);
	Zoom($絵演兎突背景, 0, 10000, 10000, null, true);

//○○○●○○○
	$絵演兎突一="Ｃ/絵演兎突一";
	CreateTextureEX($絵演兎突一, 304, 30, -150, "cg/ev/ev960ウサギモドキ戦闘突進_人物01.png");
	Request($絵演兎突一, Smoothing);
	Zoom($絵演兎突一, 0, 0, 0, null, true);
	SetBlur($絵演兎突一, true, 2, 500, 80, true);
	$絵演兎突一光=$絵演兎突一+"光";
	Position($絵演兎突一, $x1C, $y1C);
	CreateTextureEXadd($絵演兎突一光, 304, $x1C, $y1C, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物01_xw.png");
	Request($絵演兎突一光, Smoothing);
	Zoom($絵演兎突一光, 0, 0, 0, null, true);
	SetBlur($絵演兎突一光, true, 2, 500, 150, true);

//○○●○○○○
	$絵演兎突二左="Ｃ/絵演兎突二左";
	CreateTextureEX($絵演兎突二左, 203, 253, -10, "cg/ev/ev960ウサギモドキ戦闘突進_人物02.png");
	Request($絵演兎突二左, Smoothing);
	Zoom($絵演兎突二左, 0, 0, 0, null, true);
	SetBlur($絵演兎突二左, true, 2, 500, 80, true);
	$絵演兎突二左光=$絵演兎突二左+"光";
	Position($絵演兎突二左, $x2L, $y2L);
	CreateTextureEXadd($絵演兎突二左光, 203, $x2L, $y2L, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物02_xw.png");
	Request($絵演兎突二左光, Smoothing);
	Zoom($絵演兎突二左光, 0, 0, 0, null, true);
	SetBlur($絵演兎突二左光, true, 2, 500, 150, true);
//○○○○●○○
	$絵演兎突二右="Ｃ/絵演兎突二右";
	CreateTextureEX($絵演兎突二右, 203, 350, 50, "cg/ev/ev960ウサギモドキ戦闘突進_人物03.png");
	Request($絵演兎突二右, Smoothing);
	Zoom($絵演兎突二右, 0, 0, 0, null, true);
	SetBlur($絵演兎突二右, true, 2, 500, 80, true);
	$絵演兎突二右光=$絵演兎突二右+"光";
	Position($絵演兎突二右, $x2R, $y2R);
	CreateTextureEXadd($絵演兎突二右光, 203, $x2R, $y2R, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物03_xw.png");
	Request($絵演兎突二右光, Smoothing);
	Zoom($絵演兎突二右光, 0, 0, 0, null, true);
	SetBlur($絵演兎突二右光, true, 2, 500, 150, true);


//○●○○○○○
	$絵演兎突三左="Ｃ/絵演兎突三左";
	CreateTextureEX($絵演兎突三左, 102, 300, 50, "cg/ev/ev960ウサギモドキ戦闘突進_人物04.png");
	Request($絵演兎突三左, Smoothing);
	Zoom($絵演兎突三左, 0, 0, 0, null, true);
	SetBlur($絵演兎突三左, true, 2, 500, 80, true);
	$絵演兎突三左光=$絵演兎突三左+"光";
	Position($絵演兎突三左, $x3L, $y3L);
	CreateTextureEXadd($絵演兎突三左光, 102, $x3L, $y3L, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物04_xw.png");
	Request($絵演兎突三左光, Smoothing);
	Zoom($絵演兎突三左光, 0, 0, 0, null, true);
	SetBlur($絵演兎突三左光, true, 2, 500, 150, true);
//○○○○○●○
	$絵演兎突三右="Ｃ/絵演兎突三右";
	CreateTextureEX($絵演兎突三右, 102, 370, 60, "cg/ev/ev960ウサギモドキ戦闘突進_人物05.png");
	Request($絵演兎突三右, Smoothing);
	Zoom($絵演兎突三右, 0, 0, 0, null, true);
	SetBlur($絵演兎突三右, true, 2, 500, 80, true);
	$絵演兎突三右光=$絵演兎突三右+"光";
	Position($絵演兎突三右, $x3R, $y3R);
	CreateTextureEXadd($絵演兎突三右光, 102, $x3R, $y3R, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物05_xw.png");
	Request($絵演兎突三右光, Smoothing);
	Zoom($絵演兎突三右光, 0, 0, 0, null, true);
	SetBlur($絵演兎突三右光, true, 2, 500, 150, true);


//●○○○○○○
	$絵演兎突四左="Ｃ/絵演兎突四左";
	CreateTextureEX($絵演兎突四左, 1, 340, 80, "cg/ev/ev960ウサギモドキ戦闘突進_人物06.png");
	Request($絵演兎突四左, Smoothing);
	Zoom($絵演兎突四左, 0, 0, 0, null, true);
	SetBlur($絵演兎突四左, true, 2, 500, 80, true);
	$絵演兎突四左光=$絵演兎突四左+"光";
	Position($絵演兎突四左, $x4L, $y4L);
	CreateTextureEXadd($絵演兎突四左光, 1, $x4L, $y4L, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物06_xw.png");
	Request($絵演兎突四左光, Smoothing);
	Zoom($絵演兎突四左光, 0, 0, 0, null, true);
	SetBlur($絵演兎突四左光, true, 2, 500, 150, true);
//○○○○○○●
	$絵演兎突四右="Ｃ/絵演兎突四右";
	CreateTextureEX($絵演兎突四右, 1, 390, 80, "cg/ev/ev960ウサギモドキ戦闘突進_人物07.png");
	Request($絵演兎突四右, Smoothing);
	Zoom($絵演兎突四右, 0, 0, 0, null, true);
	SetBlur($絵演兎突四右, true, 2, 500, 80, true);
	$絵演兎突四右光=$絵演兎突四右+"光";
	Position($絵演兎突四右, $x4R, $y4R);
	CreateTextureEXadd($絵演兎突四右光, 1, $x4R, $y4R, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物07_xw.png");
	Request($絵演兎突四右光, Smoothing);
	Zoom($絵演兎突四右光, 0, 0, 0, null, true);
	SetBlur($絵演兎突四右光, true, 2, 500, 150, true);

//ウサギ光突進素材生成ここまで↑↑↑

//画面切り替え
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,750,null,false);
	Zoom($絵演専, 900, 100, 100, Dxl1, false);
	Fade($絵演専, 300, 0, null, true);
	Delete($絵演専);

	Wait(300);

//画面に突進
	CreateSE("SE021","se戦闘_動作_跳躍低01");
	CreateSE("SE022L","se戦闘_動作_跳躍低01");
	CreateSE("SE022R","se戦闘_動作_跳躍低01");
	CreateSE("SE023L","se戦闘_動作_跳躍低01");
	CreateSE("SE023R","se戦闘_動作_跳躍低01");
	CreateSE("SE024L","se戦闘_動作_跳躍低01");
	CreateSE("SE024R","se戦闘_動作_跳躍低01");

	Fade("絵面一/絵演効果線", 500, 1000, null, false);
	Zoom($絵演兎突背景, 1200, 1100, 1100, Dxl3, false);
	Fade($絵演兎突背景, 500, 1000, null, true);
	Zoom($絵演兎突背景, 10000, 1100, 1100, null, false);


	MusicStart("SE021",0,900,0,1800,null,false);
	Move($絵演兎突一, 0, @0, @0, null, true);
	Fade($絵演兎突一, 0, 1000, null, false);
	Move($絵演兎突一, 500, 220, 20, Axl3, false);
	Zoom($絵演兎突一, 500, 1000, 1000, Axl3, false);

	Wait(700);

	MusicStart("SE022L",0,900,-250,1800,null,false);
	Move($絵演兎突二左, 0, @0, @0, null, true);
	Fade($絵演兎突二左, 0, 1000, null, false);
	Move($絵演兎突二左, 500, 190, 180, Axl3, false);
	Zoom($絵演兎突二左, 500, 1000, 1000, Axl3, false);
	Wait(150);
	MusicStart("SE022R",0,900,250,1800,null,false);
	Move($絵演兎突二右, 0, @0, @0, null, true);
	Fade($絵演兎突二右, 0, 1000, null, false);
	Move($絵演兎突二右, 500, 610, 160, Axl3, false);
	Zoom($絵演兎突二右, 500, 1000, 1000, Axl3, false);

	Wait(300);

	MusicStart("SE023L",0,900,-500,1800,null,false);
	Move($絵演兎突三左, 0, @0, @0, null, true);
	Fade($絵演兎突三左, 0, 1000, null, false);
	Move($絵演兎突三左, 500, 75, 220, Axl3, false);
	Zoom($絵演兎突三左, 500, 1000, 1000, Axl3, false);
	Wait(150);
	MusicStart("SE023R",0,900,500,1800,null,false);
	Move($絵演兎突三右, 0, @0, @0, null, true);
	Fade($絵演兎突三右, 0, 1000, null, false);
	Move($絵演兎突三右, 500, 760, 120, Axl3, false);
	Zoom($絵演兎突三右, 500, 1000, 1000, Axl3, false);

	Wait(300);

	MusicStart("SE024L",0,900,-700,1800,null,false);
	Move($絵演兎突四左, 0, @0, @0, null, true);
	Fade($絵演兎突四左, 0, 1000, null, false);
	Move($絵演兎突四左, 500, 20, 200, Axl3, false);
	Zoom($絵演兎突四左, 500, 1000, 1000, Axl3, false);
	Wait(150);
	MusicStart("SE024R",0,900,700,1800,null,false);
	Move($絵演兎突四右, 0, @0, @0, null, true);
	Fade($絵演兎突四右, 0, 1000, null, false);
	Move($絵演兎突四右, 500, 890, 80, Axl3, false);
	Zoom($絵演兎突四右, 500, 1000, 1000, Axl3, false);

	Wait(500);

{	Fw("fw蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/0000450a06">
"&.&.&.Ngh&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/0000460a01">
"&.&.&.! Hrgh&, das ist nicht gut!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//ウサギが発光体に
	CreateSE("SE03","se戦闘_ウサギ_光突進準備");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);

	Fade($絵演兎突一, 0, 0, null, true);
	Fade($絵演兎突二左, 0, 0, null, true);
	Fade($絵演兎突二右, 0, 0, null, true);
	Fade($絵演兎突三左, 0, 0, null, true);
	Fade($絵演兎突三右, 0, 0, null, true);
	Fade($絵演兎突四左, 0, 0, null, true);
	Fade($絵演兎突四右, 0, 0, null, true);

	$演出準備対象=$絵演兎突一;
	Position($演出準備対象, $x1C, $y1C);
	$演出準備=$絵演兎突一光;
	Move($演出準備, 0, $x1C, $y1C, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);


	$演出準備対象=$絵演兎突二左;
	Position($演出準備対象, $x2L, $y2L);
	$演出準備=$絵演兎突二左光;
	Move($演出準備, 0, $x2L, $y2L, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);
	$演出準備対象=$絵演兎突二右;
	Position($演出準備対象, $x2R, $y2R);
	$演出準備=$絵演兎突二右光;
	Move($演出準備, 0, $x2R, $y2R, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);

	$演出準備対象=$絵演兎突三左;
	Position($演出準備対象, $x3L, $y3L);
	$演出準備=$絵演兎突三左光;
	Wait(1);
	Move($演出準備, 0, $x3L, $y3L, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);
	$演出準備対象=$絵演兎突三右;
	Position($演出準備対象, $x3R, $y3R);
	$演出準備=$絵演兎突三右光;
	Move($演出準備, 0, $x3R, $y3R, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);


	$演出準備対象=$絵演兎突四左;
	Position($演出準備対象, $x4L, $y4L);
	$演出準備=$絵演兎突四左光;
	Move($演出準備, 0, $x4L, $y4L, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);
	$演出準備対象=$絵演兎突四右;
	Position($演出準備対象, $x4R, $y4R);
	$演出準備=$絵演兎突四右光;
	Move($演出準備, 0, $x4R, $y4R, null, true);
	Fade($演出準備, 0, 1000, null, true);
	Zoom($演出準備, 0, 1000, 1000, null, true);

	FadeDelete("絵色白", 500, null, true);

	Wait(500);

//光突進
	//CreateSE("SE041","se戦闘_ウサギ_光突進01");
	//CreateSE("SE042L","se戦闘_ウサギ_光突進01");
	//CreateSE("SE042R","se戦闘_ウサギ_光突進01");
	CreateSE("SE043L","se戦闘_ウサギ_光突進01");
	CreateSE("SE043R","se戦闘_ウサギ_光突進01");
	//CreateSE("SE044L","se戦闘_ウサギ_光突進01");
	//CreateSE("SE044R","se戦闘_ウサギ_光突進01");
	Fade($絵演兎突背景, 100, 0, null, false);

	Request("プロセス", Stop);
	MoveCamera("Ｃ", 600, @0, 288, 250, Dxl3, false);
	Rotate("Ｃ", 600, @0, 0, 360, Dxl3,false);

	Wait(100);

	MusicStart("SE044L",0,700,-600,1500,null,false);
	$演出準備=$絵演兎突四左光;
	Move($演出準備, 400, -6380, 2600, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);
	MusicStart("SE044R",0,700,600,1500,null,false);
	$演出準備=$絵演兎突四右光;
	Move($演出準備, 400, 10890, 80, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);

	Wait(40);

	MusicStart("SE043L",0,700,-400,1500,null,false);
	$演出準備=$絵演兎突三左光;
	Move($演出準備, 400, -4425, 3620, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);
	MusicStart("SE043R",0,700,400,1500,null,false);
	$演出準備=$絵演兎突三右光;
	Move($演出準備, 400, 8560, 1320, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);

	Wait(40);

	MusicStart("SE042L",0,700,-200,1500,null,false);
	$演出準備=$絵演兎突二左光;
	Move($演出準備, 400, -1070, 3980, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);
	MusicStart("SE042R",0,700,200,1500,null,false);
	$演出準備=$絵演兎突二右光;
	Move($演出準備, 400, 5810, 2360, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);

	Wait(40);

	MusicStart("SE041",0,700,0,1500,null,false);
	$演出準備=$絵演兎突一光;
	Move($演出準備, 400, 4020, 3420, Axl2, false);
	Zoom($演出準備, 400, 2000, 2000, Axl2, false);

	Wait(800);

	Fade("絵面一/絵演効果線", 600, 0, null, true);

//※蒼葉、蓮に透明な盾を発生させてガードするが弾き飛ばされる。

	CreateTxtinEffectS(3900,"蓮","御");

	CreateTextureEX("絵専下", 3110, -210, -120, "cg/ev/ev950蓮バトル汎用防御a_効果.jpg");

	CreateTextureEX("絵専背景効果", 3120, -2000, -440, "cg/ev/l/ev950蓮バトル汎用防御a_効果_l.jpg");
	SetVertex("絵専背景効果", 1453, 830);
	Zoom("絵専背景効果", 0, 1100, 1110, null, true);

	CreateTextureEX("絵専背景", 3110, -2000, -440, "cg/ev/l/ev950蓮バトル汎用防御a_l.jpg");
	Zoom("絵専背景", 0, 1500, 1500, null, true);

	CreateSE("SE51","se戦闘_動作_跳躍低01");
	MusicStart("SE51",0,700,0,800,null,false);

	Position("@絵専背景", $x1, $y1);
	Zoom("絵専背景", 800, 1000, 1000, Dxl3, false);
	BezierMove("絵専背景", 800, ($x1,$y1){-1920,-380}{-1650,-370}(-1170,-490), Dxl3, false);
	Fade("絵専背景", 600, 1000, null, false);

	Wait(600);

	EffectTxtinS(700,"蓮","御");

	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	RMDControlRDefault($蒼葉ＨＰ);//5000
//あきゅん「※：選択肢付近で一撃もらってるのでダメージ状態から」
	$現蒼葉ＨＰ=$蒼葉ＨＰ-300;
	RMDControlInR(0,$現蒼葉ＨＰ);//4700

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("絵色白", 4900, "FFFFFF");
	FadeDelete("絵色白", 1000, null, false);

	Fade("絵専下", 0, 1000, null, true);

	Position("@絵専背景", $x1, $y1);
	Move("絵専背景効果", 0, $x1, $y1, null, true);
	Fade("絵専背景効果", 0, 1000, null, true);
	SetBlur("絵専背景効果", true, 3, 500, 250, false);
	Wait(100);
	Zoom("絵専背景効果", 1000, 1000, 1000, null, false);
	Fade("絵専背景効果", 800, 0, null, false);
	Wait(500);
	Fade("絵専背景", 800, 0, null, true);

	CreateSE("SE11","se戦闘_打撃_ヒット低04");
	CreateSE("SE12","se戦闘_打撃_ヒット低04");
	CreateSE("SE13","se戦闘_打撃_ヒット低04");
	CreateSE("SE14","se戦闘_打撃_ヒット低04");
	CreateSE("SE15","se戦闘_打撃_ヒット低04");
	CreateSE("SE16","se戦闘_衝撃_防壁決壊01");

	CreateMaskEX("覆", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("覆", 0, 2000, 2000, null, true);

	CreateColorEXadd("絵白転", 5000, "FFFFFF");
	CreateColorEXadd("覆/絵色白", 4890, "FFFFFF");

	Fade("覆/絵色白", 0, 1000, null, true);
	Wait(30);

	FadeFFR3("絵専下", 0,1000, 200, 0, 0, 30,null, false);
	Fade("覆/絵色白", 170, 0, null, true);

	$ダメージＲ=500;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Position("絵専下", $x1, $y1);//原点を取得

//ランダムヒットエフェクト01
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE11",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);


	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト02
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=500;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);


	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト03
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=500;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);


	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト04
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=500;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);


//※どかーん！
//※画面が白くなる
	MusicStart("SE15",0,700,0,1000,null,false);
	MusicStart("SE16",0,1000,0,1000,null,false);
	Fade("絵白転", 0, 1000, null, true);

	$ダメージＲ=2700;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(500,$現蒼葉ＨＰ);

	Wait(500);


/*
	RMDControlRDefault($蒼葉ＨＰ);//5000

	//SetFont("ＭＳ 明朝", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("DtR1", 15000, 900, 20, 700, 500, $蒼葉ＨＰ);

	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	//CreateText("DtR2", 15000, 900, 40, 700, 500, $現蒼葉ＨＰ);

	$ダメージＲ=5000;
	//CreateText("DtR3", 15000, 900, 60, 700, 500, $ダメージＲ);

	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

	//CreateText("DtR2", 15000, 900, 40, 700, 500, $現蒼葉ＨＰ);

	RMDControlOutR(1000);
*/
	RMDControlOutR(1000);

	Wait(800);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Wait(200);

//※ノイズのフィールド画面
	PrintGO("上背景", 9900);
	CreateColorSP("絵色黒", 5000, "000000");

	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201022_0_ライムノイズ02.jpg");

	Delete("覆");
	Delete("@Ｃ");
	Delete("プロセス");

	SetVolumeEX("@dm*", 1500, 0, null);
	FadeDelete("上背景", 1000, null, true);
	Wait(500);
	FadeDelete("絵色黒", 1000, null, true);

	Wait(300);

	Fw("fwAMウサギモドキ_リーダー_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000470c10">
"Hauptteil der feindlichen Verteidigung 100% Schaden!"

{	Fw("fwウサギ頭_通常_normal");}
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000480a03">
"&.&.&.Ich denke es war zwecklos mehr zu erwarten&."

//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000490a03">
"Lasst uns gehen&."

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000500c10">
"Rueckzug! Rueckzug!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000510c10">
"&.&.&.Nein es ist nicht! Warte!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201023_0_ライムノイズ03.jpg");
	CreateColorSP("絵色黒効果", 50, "000000");
	Fade("絵色黒効果", 0, 750, null, true);


	CreateMovieSPsub("絵演動画", 2990, Center, -380, true, true, "dx/mvk100.ngs");//煙
	Zoom("絵演動画", 0, 2800, 8000, null, true);

	FadeDelete("絵板写", 1000, null, true);

//あきゅん「※：おおう、ハマる曲が……。神話覚醒のＢＧＭは無いのか！？」
	SoundPlayEF("@dm006",0,450,true);
	SetStream("@dm006*", 3000);
	SetFrequency("@dm006*", 0, 600, null);//ここで速度変えてます、まずかったら斬ってね！

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000520c10">
"Hauptteil der feindlichen Verteidigung stellt sich in Rekordzeit wieder her!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//SetFont("ＭＳ 明朝", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("DtR1", 15000, 900, 20, 700, 500, $蒼葉ＨＰ);

	//$現蒼葉ＨＰ=$蒼葉ＨＰ;
	//CreateText("DtR2", 15000, 900, 40, 700, 500, $現蒼葉ＨＰ);

	$ダメージＲ=4500;
	//CreateText("DtR3", 15000, 900, 60, 700, 500, $ダメージＲ);

	$現蒼葉ＨＰ=$現蒼葉ＨＰ+$ダメージＲ;
	RMDControlInR(5000,$現蒼葉ＨＰ);

	//CreateText("DtR2", 15000, 900, 40, 700, 500, $現蒼葉ＨＰ);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000530c10">
"40&, 50&.&.&. 70&, 90!"

{	Fw("fwウサギ頭_通常_normal");}
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000540a03">
"&.&.&.Was passiert hier?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	RMDControlOutR(0);

	CreateTextureEX("絵専", 1110, Center, -200, "cg/ev/ev900白蒼葉化.jpg");

//※半覚醒蒼葉、顔見せない程度に表示？
	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵専", 0, 1000, null, true);
	$SETime = RemainTime("SE01")/3;
	Fade("絵専", $SETime, 0, null, true);
	Delete("絵専");

{	Fw("fwウサギ頭_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000550a03">
"&.&.&.&.&.!"

//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000560a03">
"Was ist passiert&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※画面にザザッ、ザザッとテレビノイズが走る
	CreateSE("SE01","se擬音_効果_ノイズ01L");
	CreateTextureEX("絵演砂嵐", 3110, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演砂嵐", 0, 1200, 1200, null, true);

	CreateMaskEX("覆", 0, Center, Middle, "cg/data/slide_08_00_0.png", false);
	CreateTextureEXsub("覆/絵背景", 3120, 0, 0, "cg/ev/l/ev900昔の荒れてた蒼葉_l.jpg");
	Zoom("覆/絵背景", 0, 1100, 1100, null, true);


	MusicStart("SE01",0,1000,0,1000,null,true);
	Shake("絵演砂嵐", 200, 40, 20, 0, 0, 1000, Dxl3, false);
	Fade("絵演砂嵐", 0, 1000, null, true);
	Wait(30);
	Fade("絵演砂嵐", 70, 0, null, true);
	SetVolumeEX("SE01", 1, 1, null);

	Wait(300);

	SetVolumeEX("SE01", 1, 1000, null);
	Shake("絵演砂嵐", 200, -40, 20, 0, 0, 1000, Dxl3, false);
	Fade("絵演砂嵐", 0, 1000, null, true);
	FadeFFR("覆/絵背景", 0,500, 200, 0, 0, 50,null, false);
	Wait(10);
	Fade("覆/絵背景", 0, 0, null, true);
	Fade("絵演砂嵐", 70, 0, null, true);
	SetVolumeEX("SE01", 1, 1, null);

	Wait(6);

	SetVolumeEX("SE01", 1, 1000, null);
	Shake("絵演砂嵐", 200, 40, 20, 0, 0, 1000, Dxl3, false);
	Fade("絵演砂嵐", 0, 1000, null, true);
	Wait(30);
	Fade("絵演砂嵐", 70, 0, null, true);
	SetVolumeEX("SE01", 1, 1, null);


{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm02/0000570c10">
"Alarm! Alarm! Gefahr! Gefahr!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※強烈な光がノイズを襲う
	CreateSE("SE01","se擬音_効果_力汎用01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("絵背景光効果", 100, Center, InBottom, "cg/bg/bg201023_0_ライムノイズ03.jpg");

	Fade("絵背景光効果", 0, 250, null, true);
	Wait(30);
	Fade("絵背景光効果", 300, 0, null, true);

{	Fw("fwウサギ頭_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//※ウサギ頭の顔表示
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm02/0000580a03">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白終", 20000, "FFFFFF");
	Fade("絵色白終", 600, 1000, Axl3, true);

	SetVolumeEF("@dm006",1000);

	Wait(2000);

//※どーん！とものすごい衝撃音
//※画面が白くなる
//※暗転

	ClearFadeAll(3000, true);
	Wait(2000);

//※次ファイル["dm0210.nss"]

}

/*
while(1){

//あきゅん「演出：サンプルスクリプト、文字効果登場演出【破滅】」
//文字効果登場演出【破滅】

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/ev960ウサギモドキ戦闘構え.jpg");

	CreateTextureEXmul("絵演効果左上", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失_外輪01a.png");
	SetVertex("絵演効果左上", 401, 378);
	CreateTextureEXmul("絵演効果左", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失_外輪01b.png");
	SetVertex("絵演効果左", 336, 593);
	CreateTextureEXmul("絵演効果下", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失_外輪01c.png");
	SetVertex("絵演効果下", 508, 723);
	CreateTextureEXmul("絵演効果右", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失_外輪01d.png");
	SetVertex("絵演効果右", 696, 596);
	CreateTextureEXmul("絵演効果右上", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失_外輪01e.png");
	SetVertex("絵演効果右上", 634, 391);
	Zoom("絵演効果*", 0, 1150, 1150, null, true);


	WaitKey();

	Move("絵演効果左上", 0, @173, @-100, null, false);
	Move("絵演効果左", 0, @-100, @-173, null, false);
	Move("絵演効果下", 0, @-100, @0, null, false);
	Move("絵演効果右", 0, @-100, @173, null, false);
	Move("絵演効果右上", 0, @173, @100, null, false);


	$MoveTimeAll=300;
	Fade("絵演効果左上", $MoveTimeAll, 1000, DxlAuto, false);
	Move("絵演効果左上", $MoveTimeAll, @-173, @100, DxlAuto, false);
	Zoom("絵演効果左上", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("絵演効果左", $MoveTimeAll, 1000, DxlAuto, false);
	Move("絵演効果左", $MoveTimeAll, @100, @173, DxlAuto, false);
	Zoom("絵演効果左", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("絵演効果下", $MoveTimeAll, 1000, DxlAuto, false);
	Move("絵演効果下", $MoveTimeAll, @100, @0, DxlAuto, false);
	Zoom("絵演効果下", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("絵演効果右", $MoveTimeAll, 1000, DxlAuto, false);
	Move("絵演効果右", $MoveTimeAll, @100, @-173, DxlAuto, false);
	Zoom("絵演効果右", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);
	//WaitKey();
	Fade("絵演効果右上", $MoveTimeAll, 1000, DxlAuto, false);
	Move("絵演効果右上", $MoveTimeAll, @-173, @-100, DxlAuto, false);
	Zoom("絵演効果右上", $MoveTimeAll, 1000, 1000, DxlAuto, false);
	Wait(210);

	//Zoom("絵演効果*", 1000, 500, 500, null, true);

	WaitKey();

	Wait(200);

//文字効果発動演出

	CreateTextureSPadd("絵演効果一", 1120, Center, Middle, "cg/ef/efv属性文字_ノイズ_失b_s.png");//縮小素材版
	Request("絵演効果一", Smoothing);
	//Zoom("絵演効果一", 0, 1150, 1150, null, true);//通常サイズ
	Zoom("絵演効果一", 0, 2300, 2300, null, true);//縮小素材版

	CreateTextureSPmul("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失a.png");
	Request("絵演効果二", AddRender);
	SetBlur("絵演効果二", false);
	//Zoom("絵演効果二", 0, 2000, 2000, null, true);//通常サイズ

	Delete("絵演効果左上");
	Delete("絵演効果左");
	Delete("絵演効果下");
	Delete("絵演効果右");
	Delete("絵演効果右上");

	CreateTextureEX("絵演効果二微睡", 1100, Center, Middle, "cg/ef/efv属性文字_ノイズ_失a_s.png");//縮小素材版
	Request("絵演効果二微睡", Smoothing);
	DrawEffect("絵演効果二微睡", 0, "Ripple", 0, 250, null);
	Zoom("絵演効果二微睡", 0, 2000, 2000, null, true);//縮小素材版

	Wait(80);

	Request("絵演効果二", NormalRender);
	Fade("絵演効果一", 500, 0, AxlAuto, false);
	Zoom("絵演効果一", 500, 5000, 5000, Dxl3, false);//縮小素材版
	//Zoom("絵演効果一", 500, 3000, 3000, Dxl3, false);//通常サイズ
	Wait(300);
	FadeDelete("絵演効果一", 400, null, false);
	Wait(100);

	Zoom("絵演効果一", 10000, 2500, 2500, Dxl2, false);//縮小素材版
	//Zoom("絵演効果一", 10000, 2500, 2500, Dxl2, false);//通常サイズ

	Wait(400);

	DrawEffect("絵演効果二微睡", 150, "Ripple", 0, 400, null);
	Fade("絵演効果二微睡", 150, 1000, Dxl3, false);
	FadeDelete("絵演効果二", 150, null, true);
	Wait(100);
	Zoom("絵演効果二微睡", 2000, 1200, 1200, null, false);//縮小素材版
	//Zoom("絵演効果二微睡", 2000, 800, 800, null, false);//通常サイズ
	FadeDelete("絵演効果二微睡", 1000, null, true);

	Wait(100);

	WaitKey();

}
*/
