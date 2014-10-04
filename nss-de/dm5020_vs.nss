//<continuation number="200">
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


scene dm5020_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	CreateTxtinEffect("蓮",4000);
	CreateTxtinEffect("感染者",4000);
	//RMScaningSet();
	//RMScaningCSet("感染者");
	RMDefaultStatusSet();
	RMDControlSet();

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
	#ev900ライム対戦蒼葉VS中毒者=true;

	#bg201031_0_ライム中毒者=true;

	//▼演出上の処理を初期化
	Request("@EFWIN/SE01", UnLock);
	EffectTxtinDelete();
	EffectTxtinSDelete("蓮","誉");
	RMDControlDelete();
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5030.nss";

}


scene dm5020_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

$TEXTBOX_TYPE="";
//―――――――――――――――――――――――――――――――――――――――
	RMDControlRDefault($蒼葉ＨＰ);//5000
	RMDControlLDefault($感染者ＨＰ);//3500
	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	$現感染者ＨＰ=$感染者ＨＰ;
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "000000");
	FadeDelete("上背景", 0, null, true);

	TiesMovieSet("転送ライムa",2000);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	if($nextrhymescene=="dm5020_vs.nss"){
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	Request("@EFWIN/SE01", UnLock);
	}else{
	CreateSE("SE01","se擬音_ライム_超音波01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	}

	TiesMovieStart();

	DrawDelete("絵色黒", 500, 100, Axl2, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
This feeling&.&.&.

I've been having it all the time lately&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TiesMovieNEXTPro();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Rhyme&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);
	WaitKey(1000);

	SetVolumeEX("@SE*", 600, 0, null);
	SetVolumeEX("@EFWIN/SE*", 600, 0, null);

	CreateSE("SE02","se擬音_精神_導入01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 1000, 1000, AxlAuto, true);

	Wait(1000);
	WaitKey(2000);

	TiesMovieDelete();

//※辻斬りライムに引っ張られる
//※相手のフィールドが歪んでる。おかしい。

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg201031_0_ライム中毒者");
	FadeBG(0,true);

	CreateColorEX("絵色黒", 100, "000000");
	Fade("絵色黒", 0, 500, null, true);
	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/l/bg201031_0_ライム中毒者_l.jpg");

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("上背景");
	FadeDelete("絵色白", 3000, null, true);

$TEXTBOX_TYPE="ライム";

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000030a01">
"Rhyme again&.&.&. What the hell!?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000040a01">
"And this place&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("@絵背景", 3000, @0, -288, Dxl3, false);
	Zoom("@絵背景", 3000, 500, 500, Dxl3, false);
	Fade("@絵色黒", 3000, 0, Dxl3, true);
	Delete("@絵色黒");
	Delete("@絵背景");

{	Fw("fw蒼葉_通常_sigh");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000050a01">
"It gives off a really bad feeling&.&.&. Some weird feeling
 like you're in someone's house while they're there or
 something&."


{	St("C",740, @0,@0,"bu蓮_通常_normal");
	FadeSt("C",200,true);}
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/2000060a06">
"Aoba&, watch out&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000070a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※敵の姿が見える。ヘロヘロした中毒患者とオールメイトはコウモリ？
//　素材が増えるのマズいならなんでもいいです。

	CreateSE("SE01","se動物_声_コウモリ鳴声01");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	CreateTextureEX("絵専", 1110, -550, -500, "cg/ev/l/ev900ライム対戦蒼葉VS中毒者_アップ_l.jpg");
	Move("絵専", 2000, @0, -140, DxlAuto, false);
	Fade("絵専", 2000, 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000080a01">
"He's the drunk from before&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000090a01">
"Which means&, he's the one who brought me here&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm011",0,450,true);//電脳バトル歪

//演出メモ：「氷」または「毒」（千代子）
//※敵の攻撃。「炎」の字セットで火の玉みたいなのが数弾飛んでくる。
//※セットしてる字は全体的に適当です。

	CreateSE("SE01","se戦闘_衝撃_氷壊01");
	CreateTextureEX("絵演中毒攻撃", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	CreateTextureEXadd("絵演中毒攻撃光", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	Rotate("絵演中毒攻撃*", 0, @0, @0, -90, null,true);
	Zoom("絵演中毒攻撃*", 0, 7000, 7000, null, true);
	SetBlur("絵演中毒攻撃", true, 3, 500, 60, false);

	CreateMovieEX("絵演動画", 3990, Center, Middle, true, true, "dx/mv0003集中線01_黒.ngs");
	DrawTransition("絵演動画", 1, 0, 300, 200, null, "cg/data/slide_05_00_0.png", true);
	Rotate("絵演動画", 0, @0, @0, -15, null,true);
	Zoom("絵演動画", 0, 3000, 3000, null, true);

	SetVolumeEX("SE*", 150, 0, null);

	EffectTxtinA("感染者","氷");
	EffectTxtinB("感染者","氷");

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateSE("SE02L","se物体_東江タワー_地鳴り01L");
	CreatePlainSP("絵板写", 2000);
	Delete("絵専");
	SetBlur("絵板写", true, 3, 500, 60, false);
	Zoom("絵板写", 200, 2000, 2000, Axl3, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02L",0,500,0,2000,null,true);
	//MoveFFP1("@絵演中毒攻撃",110);
	Shake_LoopFree("@絵演中毒攻撃",4,10,4,10,1000);
	Fade("絵演中毒攻撃*", 0, 1000, null, true);
	Zoom("絵演中毒攻撃*", 200, 1100, 2200, Dxl3, false);
	Fade("絵演動画", 200, 500, null, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
	Fade("絵演中毒攻撃光", 200, 0, null, true);
	Delete("絵板写");
	Delete("絵演中毒攻撃光");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000100a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_hard",1700,"fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000110a01">
"Uh&.&.&. Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTxtinEffectS(3000,"蓮","御");

	Shake_LoopFreeDelete();

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateTextureEX("絵演蓮背景", 2110, -512, -190, "cg/ev/ev950蓮バトル汎用防御a.jpg");

	CreateTextureEX("絵演蓮背景効果", 2110, -230,-140, "cg/ev/ev950蓮バトル汎用防御a_効果.jpg");
	CreateTextureEXadd("絵演蓮背景効果光", 2110, -230,-140, "cg/ev/ev950蓮バトル汎用防御a_効果.jpg");
	SetVertex("絵演蓮背景効果*", right, middle);
	Zoom("絵演蓮背景効果*", 0, 1200, 1200, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵演中毒攻撃", 600, 5500, 5500, Dxl3, false);
	Fade("絵演動画", 800, 0, DxlAuto, false);

//※蓮にシールド張らせて防御する。火の玉は弾かれて他の方向へ飛んでいく。

	BezierMove("絵演蓮背景", 600, (@0,@0){-340,-190}{-250,-180}(-230,-140), Dxl3, false);
	Fade("絵演蓮背景", 600, 1000, null, true);

	Wait(100);

	SetVolumeEX("SE02L", 200, 0, null);
	CreateSE("SE02","se戦闘_衝撃_防壁発動01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se物体_ガラス_割れる04");
	MusicStart("SE03",0,1000,0,2000,null,false);

	$ダメージＲ=50;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

	Fade("絵演蓮背景効果*", 0, 1000, null, true);
	Zoom("絵演蓮背景効果*", 10000, 2000, 2000, null, false);
	Wait(50);
	Fade("絵演蓮背景効果", 500, 0, null, false);
	Fade("絵演蓮背景効果光", 500, 0, Dxl3, true);

	RMDControlOutR(0);

	Wait(500);

//剣戟素材先読み
	CreateColorEX("絵蓮剣戟閃黒", 4000, "000000");

	//CreateTextureEX("絵蓮剣戟閃", 4000, -130, Middle, "cg/ev/ev950蓮バトル汎用攻撃_効果剣閃.png");
	//CreateTextureEXadd("絵蓮剣戟閃光", 4000, -130, Middle, "cg/ev/ev950蓮バトル汎用攻撃_効果剣閃.png");
	CreateTextureEX("絵蓮剣戟閃", 4000, 0, Middle, "cg/data/slide_06_00_0.png");
	CreateTextureEXadd("絵蓮剣戟閃光", 4000, 0, Middle, "cg/data/slide_06_00_0.png");
	Zoom("絵蓮剣戟閃*", 0, 150, 1200, null, true);


	CreateTextureEX("絵蓮剣戟背景", 2110, Center, Middle, "cg/ev/ev950蓮バトル汎用攻撃a_背景.jpg");
	CreateTextureEX("絵蓮剣戟", 2110, Center, Middle, "cg/ev/l/ev950蓮バトル汎用攻撃a_人物蓮_l.png");
	CreateColorEX("絵色剣戟白", 5000, "FFFFFF");

//剣戟素材先読みここまで↑↑↑

	CreateTextureEX("絵演蓮突進", 2210, 687, -1226, "cg/ev/l/ev950蓮バトル汎用突進a_l.jpg");
	Zoom("絵演蓮突進", 0, 2000, 2000, null, true);
	SetBlur("絵演蓮突進", true, 3, 500, 60, false);

	$ダメージＬ=0;
	$現感染者ＨＰ=$現感染者ＨＰ-$ダメージＬ;
	RMDControlInL(0,$現感染者ＨＰ);

	CreateSE("SE04","se戦闘_動作_跳躍低02");
	MusicStart("SE04",0,700,0,1000,null,false);
	Move("絵演蓮背景", 300, -1356, 755, Axl3, false);
	Zoom("絵演蓮背景", 300, 5000, 5000, Axl3, true);

	Fade("絵演蓮突進", 200, 1000, null, false);
	Delete("絵演蓮背景*");

	Move("絵演蓮突進", 200, -650, -840, Dxl3, false);
	Zoom("絵演蓮突進", 200, 500, 500, Dxl3, true);

	//SetBlur("絵演蓮突進", false, 3, 500, 60, false);
	MoveFFP1("@絵演蓮突進",900);

	EffectTxtinS(700,"蓮","御");

//※蒼葉の攻撃。「御」セット。蓮の腕から長い刃物が飛び出し、切り込みに行かせる。敵オールメイトが薄い盾で防御。ガリガリッてなって蓮の刃物が切り裂く。

	CreateColorEX("絵色黒", 3000, "000000");

	MoveFFP1stop();
	SetBlur("絵演蓮突進", true, 3, 500, 60, false);
	Zoom("絵演蓮突進", 400, 5000, 5000, Dxl3, false);
	Fade("絵色黒", 300, 1000, null, true);
	Delete("絵演蓮突進*");

	Zoom("絵蓮剣戟", 8000, 800, 800, null, false);

	CreateSE("SE05","se戦闘_蓮_剣撃01");
	MusicStart("SE05",0,700,0,1000,null,false);
	Fade("絵蓮剣戟閃*", 0, 1000, null, true);
	DrawTransition("絵蓮剣戟閃*", 80, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Wait(300);

	CreatePlainSP("絵板写", 5000);

	Fade("絵蓮剣戟", 0, 1000, null, true);
	Fade("絵蓮剣戟背景", 0, 1000, null, true);

	CreateSE("SE05a","se戦闘_打撃_ヒット低04");
	MusicStart("SE05a",0,700,0,1000,null,false);
	Fade("絵色剣戟白", 0, 1000, null, true);
	Wait(30);
	Delete("絵蓮剣戟閃*");
	Fade("絵蓮剣戟閃黒", 0, 1000, null, true);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	FadeFFR3("@絵板写", 0,1000, 50, 0, 0, 30,null, true);
	Delete("絵蓮剣戟閃黒");
	Fade("絵板写", 150, 0, null, false);
	Fade("絵色剣戟白", 100, 0, null, false);
	DrawTransition("絵色黒", 100, 900, 800, 10, null, "cg/data/slide_06_00_0.png", true);
	DrawTransition("絵色黒", 6000, 800, 500, 10, null, "cg/data/slide_06_00_0.png", false);

	Wait(1000);

	Delete("絵板写");
	CreateSE("SE06","se物体_ガラス_割れる01");
	MusicStart("SE06",0,700,0,2000,null,false);
	Fade("絵色剣戟白", 300, 1000, Axl3, true);

	$ダメージＬ=480;
	$現感染者ＨＰ=$現感染者ＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現感染者ＨＰ);
	RMDControlOutL(1000);

	Wait(500);

	OnBG(10,"bg201031_0_ライム中毒者");
	FadeBG(0,true);

	Delete("絵色黒");
	Delete("絵蓮剣戟*");
	Delete("絵演中毒*");
	FadeDelete("絵色剣戟白", 2000, null, true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000120a01">
"Looks like it all worked out&.&.&."

{	Fw("fw蒼葉_通常_smile");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000130a01">
"Anyway&, wasn't that a little too easy?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蓮が蒼葉の元に戻ってくる。
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateTextureEX("絵専", 1110, -295, 0, "cg/ev/ev900ライム対戦蒼葉VS中毒者.jpg");
	Zoom("絵専", 1, 2000, 2000, null, true);
	SetBlur("絵専", true, 3, 300, 80, false);

	MusicStart("SE01",0,700,0,1500,null,false);
	Zoom("絵専", 500, 1000, 1000, Dxl3, false);
	Move("絵専", 500, 0, 0, Dxl3, false);
	Fade("絵専", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/2000140a06">
"Aoba&, instructions&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000150a01">
"Next&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵専蓮寄", 1120, -860, -270, "cg/ev/l/ev900ライム対戦蒼葉VS中毒者_l.jpg");
	CreateTextureEXsub("絵専蓮寄裏", 1120, -860, -270, "cg/ev/l/ev900ライム対戦蒼葉VS中毒者_l.jpg");
	Request("絵専蓮寄", Smoothing);
	Zoom("絵専蓮寄", 0, 800, 800, null, true);
	SetBlur("絵専蓮寄", true, 3, 300, 60, false);

	CreateSE("SE00","se擬音_効果_ドン02");
	MusicStart("SE00",0,1200,0,1000,null,false);
	Zoom("絵専蓮寄*", 0, 1500, 1500, Dxl3, false);
	Move("絵専蓮寄*", 0, -910, -134, null, true);
	FadeFF3("絵専蓮寄*", 0,1000, 100, 0, 0,null, true);
	FadeDelete("絵専蓮寄裏", 200, null, false);

//中毒者氷戟：前定義
	CreateSE("SE01","se戦闘_衝撃_氷壊01");
	CreateTextureEX("絵演中毒攻撃", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	SetBlur("絵演中毒攻撃", true, 3, 500, 60, false);
	CreateTextureEXadd("絵演中毒攻撃光", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	Zoom("絵演中毒攻撃*", 0, 2000, 2000, null, true);
	Rotate("絵演中毒攻撃*", 0, @0, 180, @0, null,true);

	CreateTextureEX("絵演蓮防御", 2110, -540, -560, "cg/ev/l/ev950蓮バトル汎用防御a_l.jpg");
	Request("絵演蓮防御", Smoothing);
	Rotate("絵演蓮防御", 0, @0, @0, -110, null,true);
//中毒者氷戟：前定義ここまで↑↑↑

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/2000160a06">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵専蓮寄裏");
	Delete("絵専");

	CreateSE("SE00","se戦闘_動作_跳躍高01.ogg");
	MusicStart("SE00",0,700,0,900,null,false);
	Rotate("絵専蓮寄", 600, @0, @0, -30, null,false);
	Move("絵専蓮寄", 200, -1070, -380, Dxl3, false);

	Wait(190);

//※蓮が何かに気付いて横に飛びのく。が、一歩遅い。
//　さっき弾いた火の玉数発が戻ってきて蓮を襲う。
//　火の玉の１弾が蓮の足に当たる。

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演中毒攻撃*", 0, 1000, null, true);
	Zoom("絵演中毒攻撃*", 200, 1100, 1100, Dxl3, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
	Delete("絵専蓮寄");
	Fade("絵演中毒攻撃光", 200, 0, null, true);

	Wait(100);

	$ダメージＲ=650;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

	CreateSE("SE01b","se戦闘_動作_跳躍低01");
	MusicStart("SE01b",0,700,0,2000,null,false);
	Move("絵演蓮防御", 10000, -660, -660, null, false);
	Fade("絵演蓮防御", 200, 1000, null, true);

	Wait(100);

	SetBlur("絵演蓮防御", true, 3, 500, 60, false);
	Zoom("絵演蓮防御", 300, 5000, 5000, null, false);

	Wait(200);

	CreateSE("SE02","se戦闘_打撃_ヒット低04");
	MusicStart("SE02",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	Delete("");
	Delete("絵演中毒*");
	Delete("絵演蓮防御");
	BGPlainShake(50,500,0,20,0,0,1000,Dxl3,false);

	FadeDelete("絵色白", 100, null, true);

//　蓮、ビリビリって全身が痺れたみたいになる。
//　ダメージのわりに蓮の衝撃の受け方が大きい感じ。（バグ感染を表現できるといいなー）

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000170a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",740, @0,@0,"st蓮_通常_pain");
	Position($C_次, $x1, $y1);
	CreateStencil("絵枠",0,$x1, $y1,128,"cg/st/st蓮_通常_normal.png",false);
	SetAlias("絵枠","絵枠");
	CreateTextureEXover("絵枠/絵背景", 800, -380, -450, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	DrawTransition("@絵枠/絵背景", 0, 0, 0, 0, null, "cg/data/mosaic_01_00_0.png", true);

	CreateSE("PSE01","se擬音_効果_火花01");
	MusicStartSet("PSE01",1000,0,2000,null,false);

	CreateProcessEX("プロセス", "Procdm2020_vs_02Act");
	Request("プロセス", Start);

	FadeSt("C",200,true);
	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeStPro("C", 2000, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/2000180a06">
"&.&.&.I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("プロセス", Stop);
	if($Procdm2020_vs_02Act==true){
	}else{
	FadeDelete("絵枠", 100, null, false);
	}
	Delete("プロセス");

//※ダメージ数値が表示される。ちょっとだけ減る。
	$ダメージＲ=50;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(2000,$現蒼葉ＨＰ);
	RMDControlOutR(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000190a01">
"Sorry&, I wasn't paying enough attention&. Let's finish
 it in one blow and get out of here&."

{	DeleteFw();}
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/2000200a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※「誉」セット。蓮の両腕からぐぐっと刃が出てくる。
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 200, 1000, null, true);

	Delete("絵専*");
	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	SetBlur("Ｃ", true, 3, 500, 200, false);

	CreateTextureSP("Ｃ/絵専蓮", 0, -800, -150, "cg/ev/l/ev950蓮、武器発現_l.jpg");
	Request("Ｃ/絵専蓮", Smoothing);
	Position("Ｃ/絵専蓮", $x1, $y1);
	CreateTextureEXadd("Ｃ/絵専蓮効果一", 0, $x1, $y1, "cg/ev/x/ev950蓮、武器発現_効果紫電a.png");
	CreateTextureEXadd("Ｃ/絵専蓮効果二", 0, $x1, $y1, "cg/ev/x/ev950蓮、武器発現_効果紫電b.png");
	CreateTextureEXadd("Ｃ/絵専蓮効果三", 0, $x1, $y1, "cg/ev/x/ev950蓮、武器発現_効果紫電c.png");

	CreateTxtinEffectS(2000,"蓮","誉");

	Move("Ｃ/絵専蓮*", 600, -590, -150, Dxl2, false);

	Fade("絵色黒", 200, 0, null, true);

	EffectTxtinS(700,"蓮","誉");
	Shake("Ｃ/絵専蓮*", 600000, -1, 1, 0, 0, 1000, null, false);

	CreateSE("SE11","se戦闘_衝撃_防壁発動01");
	MusicStart("SE11",0,700,0,500,null,false);
	CreateSE("SE11L","se擬音_効果_帯電02");
	MusicStart("SE11L",1000,700,0,1000,Axl3,true);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	SpiralSparc3("プロセス","@Ｃ/絵専蓮効果一","@Ｃ/絵専蓮効果二","@Ｃ/絵専蓮効果三");
	MoveCamera("Ｃ", 600, -50, 110, 550, Dxl3, false);
	FadeDelete("絵色白", 800, null, true);

	Wait(1000);
	WaitKey(1000);

	CreateColorEX("絵色白", 10000, "FFFFFF");

	SetVolumeEX("@dm*", 600, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE31","se戦闘_蓮_剣撃01");
	MusicStart("SE31",0,1000,0,1200,null,false);
	MoveCamera("Ｃ", 300, -300, @0, 2000, Dxl3, false);
	Fade("絵色白", 300, 1000, null, true);

	CreateSE("SE32","se戦闘_打撃_ヒット低04");
	MusicStart("SE32",0,1000,0,1200,null,false);
	CreateSE("SE33","se戦闘_衝撃_破損01");
	MusicStart("SE33",0,700,0,1000,null,false);

//　敵に突撃する蓮。敵オールメイトが薄い盾を張るが、なんなく撃破。
//　蒼葉たちの勝利。ゲーム終わり。

	Wait(2000);

	RMDControlInL(500,0);
	RMDControlOutL(1000);
	Wait(3000);

//※現実世界へ戻ってくる。

	ClearFadeAll(2000, true);
	Wait(2000);

//※次ファイル["dm5030.nss"]

}
