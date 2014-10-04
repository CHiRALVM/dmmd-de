//<continuation number="180">
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


scene dm2380_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	CreateTxtinEffect("蓮",4000);
	CreateTxtinEffect("ノイズ",4000);

	//RMScaningSet();
	//RMScaningCSet("蒼葉");
	//RMScaningCSet("ノイズ");
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
	#ev900ライム対戦蒼葉VSノイズ洗脳=true;
	#ev900ライム対戦蒼葉VSノイズ洗脳_アップ=true;

	#bg201021_0_ライムノイズ01洗脳=true;
	#bg201022_0_ライムノイズ02洗脳=true;
	#bg201023_0_ライムノイズ03洗脳=true;

	//▼演出処理を初期化
	TiesMovieDelete();
	RMDControlDelete();
	Request("@EFWIN/SE01", UnLock);
	EffectTxtinDelete();
	EffectAllDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2390_vs.nss";

}


scene dm2380_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
	RMDControlRDefault($蒼葉ＨＰ);//5000
	RMDControlLDefault($ノイズＨＰ);//3500
	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	$現ノイズＨＰ=$ノイズＨＰ;
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "000000");
	FadeDelete("上背景", 0, null, true);

	TiesMovieSet("転送ライムa",2000);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	if($nextrhymescene=="dm2380_vs.nss"){
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	Request("@EFWIN/SE01", UnLock);
	}else{
	CreateSE("SE01","se擬音_ライム_超音波01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	}

	TiesMovieStart();

	DrawDelete("絵色黒", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(500);
	WaitKey(1000);
	TiesMovieNEXT();
	Wait(500);
	WaitKey(1000);

	SetVolumeEX("@EFWIN/SE*", 600, 0, null);
	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE02","se擬音_精神_導入01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 1000, 1000, AxlAuto, true);

	Wait(650);
	WaitKey(1350);

	TiesMovieDelete();


	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");

	CreateTextureSP("絵背景", 10, Center, 0, "cg/bg/bg201021_0_ライムノイズ01洗脳.jpg");

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景", 8000, @0, -576, DxlAuto, false);

	Delete("上背景");
	FadeDelete("絵色白", 3000, null, true);

	WaitAction("@絵背景", null);

//※ライム開始

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000010a01">
"&.&.&.Rhyme?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演雑音", 1110, -650, -510, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ洗脳_アップ_l.jpg");
	Move("絵演雑音", 10000, -580, -180, null, false);
	Fade("絵演雑音", 1000, 1000, null, true);

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000020a01">
"What's happened to him?"

{	Fw("fw蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/8000030a06">
"The details are unknown&, but it's possible that he's being controlled by someone&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000040a01">
"Controlled&.&.&. But by who!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演対立", 1210, -1024, -350, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ洗脳_l.jpg");
	Move("絵演対立", 200, -660, @0, Dxl2, false);
	Fade("絵演対立", 200, 1000, null, true);
	Delete("絵演雑音");

	SoundPlay("@dm011",0,450,true);//電脳バトル歪

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/8000050a06">
"Aoba&, he's coming&."

</PRE>
	SetText();	
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetBlur("絵演対立", true, 3, 500, 200, false);

	CreateTextureEX("絵雑音兎背景", 2110, Center, Middle, "cg/ef/efbg効果03.jpg");
	CreateTextureEX("絵雑音兎", 2120, -1024, -883, "cg/ev/x/ev960ウサギモドキ戦闘構え_x01.png");
	CreateColorEXover("絵雑音兎背景色調整", 2110, "430B38");

	CreateMovieEX("絵演動画", 4000, Center, Middle, true, true, "dx/mv0003集中線01_黒&.ngs");
	Zoom("絵演動画", 0, 3000, 2000, null, true);

//蓮防御構え前定義

	CreateTextureEX("絵蓮防御前", 3210, -330, -330, "cg/ev/m/ev950蓮バトル汎用防御a_m.jpg");
	Zoom("絵蓮防御前", 0, 3000, 3000, null, true);
	CreateTextureEX("絵蓮防御", 3210, -330, -330, "cg/ev/m/ev950蓮バトル汎用防御a_効果_m.jpg");
	CreateTextureEXadd("絵蓮防御光", 3210, -330, -330, "cg/ev/m/ev950蓮バトル汎用防御a_効果_m.jpg");
	SetVertex("絵蓮防御光", 1090, 620);
	Zoom("絵蓮防御光", 0, 1200, 1200, null, true);
	SetBlur("絵蓮防御光", true, 3, 300, 100, false);

	CreateColorEX("絵蓮色防御白", 5000, "FFFFFF");

	CreateMovieEX("絵演蓮動画", 4000, Center, Middle, true, true, "dx/mv0003集中線04_白&.ngs");
	DrawTransition("絵演蓮動画", 1, 0, 450, 100, null, "cg/data/slide_05_01_0.png", true);
	Zoom("絵演蓮動画", 0, 3000, 2000, null, true);


//蓮防御構え前定義：ここまで↑↑↑

//※ノイズの攻撃：「失」セット。ウサギモドキが発光したミサイルのようにひゅんひゅん飛んでくる
	Fade("絵雑音兎背景色調整", 300, 1000, null, false);
	Fade("絵雑音兎背景", 300, 1000, null, false);
	Fade("絵演対立", 300, 0, null, false);
	Move("絵演対立", 300, -300, 0, Dxl3, false);
	Move("絵雑音兎", 300, -200, -300, Dxl3, false);
	Fade("絵雑音兎", 300, 1000, null, true);

	EffectTxtinA("ノイズ","失");
	EffectTxtinB("ノイズ","失");

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_動作_跳躍低01");
	CreateSE("SE05","se戦闘_動作_跳躍低01");

	Delete("絵専");

	Fade("絵演動画", 0, 1000, null, true);
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("絵専二", 2120, -980, -10, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Delete("絵雑音兎背景");
	Delete("絵雑音兎");
	Delete("絵雑音兎背景色調整");
	Wait(80);
	MusicStart("SE02",0,700,0,2000,null,false);
	Move("絵専二", 0, -250, -330, null, true);
	Wait(80);
	MusicStart("SE03",0,700,0,2000,null,false);
	Move("絵専二", 0, -1024, 0, null, true);
	Wait(80);
	MusicStart("SE04",0,700,0,2000,null,false);
	Move("絵専二", 0, 0, -360, null, true);
	Wait(80);
	MusicStart("SE05",0,700,0,2000,null,false);
	Move("絵専二", 0, -1024, -576, null, true);
	Zoom("絵専二", 200, 550, 550, Dxl3, false);
	Move("絵専二", 200, -512, -302, Dxl3, true);
	FadeFFR("絵専二", 0,1000, 100, 0, 0, 20,null, true);


//※蒼葉、蓮に透明な盾を発生させてガードするが、ガガガガッと衝撃が大きい。

	CreateSE("SE00","se戦闘_動作_跳躍低01");
	MusicStart("SE00",0,700,0,2000,null,false);
	Move("絵専二", 300, -1590, -700, Dxl3, false);
	Zoom("絵専二", 300, 5000, 5000, Dxl3, false);
	FadeDelete("絵演動画", 300, Dxl3, false);
	Wait(100);
	Fade("絵演蓮動画", 600, 1000, Axl3, false);
	Zoom("絵蓮防御前", 300, 1000, 1000, Dxl3, false);
	Move("絵蓮防御*", 340, -700, @0, Dxl3, false);
	Fade("絵蓮防御前", 300, 1000, Dxl3, true);
	Move("絵蓮防御*", 8000, -720, @0, null, false);

	Wait(200);

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵蓮色防御白", 0, 1000, null, true);

	Move("絵蓮防御*", 0, -720, @0, null, false);
	Fade("絵蓮防御前", 0, 0, null, true);
	Fade("絵蓮防御", 0, 1000, null, true);
	Fade("絵蓮防御光", 0, 500, null, true);
	Fade("絵蓮防御光", 1000, 0, null, false);
	Zoom("絵蓮防御光", 10000, 1100, 1100, null, false);

	Wait(50);
	Fade("絵蓮色防御白", 100, 0, null, false);


//ヒットエフェクト準備
	CreateSE("SE21","se戦闘_打撃_ヒット低04");
	CreateSE("SE22","se戦闘_打撃_ヒット低04");
	CreateSE("SE23","se戦闘_打撃_ヒット低04");

	CreateTextureEXadd("絵演効果火花", 4900, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	CreateMaskEX("覆", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("覆", 0, 2000, 2000, null, true);
	CreateColorEXadd("覆/絵色白", 4890, "FFFFFF");

	Position("@絵蓮防御前", $x1, $y1);//原点を取得

//ランダムヒットエフェクト01＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$ダメージＲ=190;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);
	MusicStart("SE21",0,600,0,1200,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("絵蓮防御", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御", 0, $x1, $y1, null, true);//元の位置に戻す
//ランダムヒットエフェクト02＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$ダメージＲ=190;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);
	MusicStart("SE22",0,600,0,1200,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("絵蓮防御", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御", 0, $x1, $y1, null, true);//元の位置に戻す
//ランダムヒットエフェクト03＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$ダメージＲ=190;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);
	MusicStart("SE23",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	CreateVOICE("蓮","dm07/2500140a06");
	MusicStart("蓮",0,1500,0,1000,null,false);

	Wait(30);

	FadeFFR3("絵蓮防御", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御", 0, $x1, $y1, null, true);//元の位置に戻す
//ランダムヒットエフェクト04＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	$ダメージＲ=190;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);
	MusicStart("SE24",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	CreateVOICE("蓮","dm07/2500140a06");
	MusicStart("蓮",0,1500,0,1000,null,false);

	Wait(30);

	FadeFFR3("絵蓮防御", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御", 0, $x1, $y1, null, true);//元の位置に戻す
//ランダムヒットエフェクト05＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
//ホワイトアウト
	Fade("絵蓮色防御白", 200, 1000, Axl3, true);
	Wait(500);

	$ダメージＲ=190;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);
	RMDControlOutR(3000);

	Delete("絵専二");
	Delete("絵蓮防御*");
	Delete("絵演効果*");
	Delete("覆*");
	Delete("絵演対立*");
	Delete("絵演動画");
	Delete("絵演蓮動画");

	CreateTextureSP("絵背景風", 10, Center, InBottom, "cg/bg/bg201022_0_ライムノイズ02洗脳.jpg");
	Rotate("絵背景風", 0, @0, 180, @0, null,true);
	Zoom("絵背景風", 0, 1010, 1010, null, true);

	FadeDelete("絵蓮色防御白", 1000, null, true);

	CreateSE("SE01","se人体_足音_一歩02");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000060a01">
"Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("絵演対立", 1110, -30, InBottom, "cg/ev/ev900ライム対戦蒼葉VSノイズ洗脳.jpg");
	Move("絵演対立", 600, 0, 0, Dxl1, false);
	Fade("絵演対立", 500, 1000, null, true);
	Delete("絵背景風");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/8000070a06">
"Aoba&, instructions&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000080a01">
"&.&.&.Fuck!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※蒼葉、蓮に攻撃を指示する。「慈」セット。蓮がノイズへ向かってすっ飛んでいく。
//※ノイズ、ウサギモドキを盾に変形させてガード。蓮、蒼葉の元に戻る。
//あきゅん「※：ここで手を出すのは違う気がする……」

{	St("C",740, @0,@0,"stノイズ_正面洗脳_normal");
	FadeSt("C",0,true);}

	FadeDelete("絵演対立", 200, null, true);

	FwPro("fw蒼葉_通常_rage",3000,"fw蒼葉_通常_shout");
//	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000090a01">
"Being controlled&.&.&. That can't be true&. Noiz&, wake up!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTxtinEffectS(4000,"ノイズ","崩");

	CreateTextureEX("絵演雑音兎", 1120, Center, Middle, "cg/ev/ev960ウサギモドキ戦闘突進.jpg");
	CreateTextureEXadd("絵演雑音兎光", 1120, Center, Middle, "cg/ev/ev960ウサギモドキ戦闘突進.jpg");
	Zoom("絵演雑音兎*", 0, 7000, 7000, null, true);
	SetBlur("絵演雑音兎", true, 3, 300, 60, false);

	CreateTextureEX("絵演雑音", 1110, 0, InBottom, "cg/ev/l/ev920ノイズ突進a_l.jpg");
	SetBlur("絵演雑音", true, 3, 300, 90, false);


//※ノイズの攻撃、「崩」セット。ウサギモドキが発光ミサイルになって飛んでくる。
//※蒼葉、蓮に透明な盾を発生させてガードさせるが、かなりのダメージ。

	Move("絵演雑音", 300, -857, -290, Dxl2, false);
	Fade("絵演雑音", 300, 1000, null, true);

	EffectTxtinS(700,"ノイズ","崩");

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("絵板写", 2000);
	Delete("絵演雑音");
	SetBlur("絵板写", true, 3, 500, 80, false);
	Zoom("絵板写", 200, 2000, 2000, Axl3, false);
	Wait(194);
	Fade("絵演雑音兎*", 0, 1000, null, true);
	Zoom("絵演雑音兎*", 200, 1100, 1100, Dxl3, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
	Fade("絵演雑音兎光", 200, 0, null, true);
	Delete("絵板写");
	Delete("絵演卯水影攻撃光");

	Zoom("絵演雑音兎*", 200, 3000, 3000, Dxl3, false);

	CreateColorEX("絵色白", 5000, "FFFFFF");

	$ダメージＲ=300;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

	CreateSE("SE010","se人体_足音_一歩02");
	MusicStart("SE010",0,1000,0,800,null,false);
	Fade("絵色白", 200, 1000, Axl3, true);
	Wait(200);
	Delete("絵演雑音*");
	DeleteAllSt(0,true);

	CreatePlainSP("絵板写", 100);
	Zoom("絵板写", 0, 2500, 2500, null, true);
	SetBlur("絵板写", true, 3, 300, 30, false);
	Shake("絵板写", 600, 0, 20, 0, 0, 1000, null, false);

	Zoom("絵板写", 600, 1000, 1000, Dxl3, false);

	FadeDelete("絵色白", 1000, null, true);
	RMDControlOutR(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000100a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演雑音", 1110, -650, -240, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ洗脳_アップ_l.jpg");
	Move("絵演雑音", 300, -580, -180, AxlDxl, false);
	Fade("絵演雑音", 300, 1000, null, true);

{	Fw("fw蒼葉_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000110a01">
"Noiz! Get it together! Hey!"

{	Fw("fw蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/8000120a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵演雑音兎", 1210, Center, Middle, "cg/ev/m/ev960ウサギモドキ戦闘突進_m.jpg");
	Zoom("絵演雑音兎", 0, 670, 670, null, true);

	EffectZoomDXadd(1220, 200, 200, "FFFFFF", "cg/ef/efクリアαの歌声.jpg", false);
	Zoom("絵演雑音兎", 200, 1000, 1000, Dxl3, false);
	FadeFFR3("絵演雑音兎", 0,1000, 200, 0, 0, 60,null, true);

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000130a01">
"! Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵板写");

//蓮防御前定義
	EffectTxtinSDelete("蓮","御");
	CreateTxtinEffectS(4000,"蓮","御");

	CreateTextureEX("絵蓮防御前", 2110, -300, -190, "cg/ev/ev950蓮バトル汎用防御a.jpg");
	CreateTextureEX("絵蓮防御", 2110, -300, -190, "cg/ev/ev950蓮バトル汎用防御a_効果.jpg");
	Zoom("絵蓮防御", 0, 1200, 1200, null, true);
	SetBlur("絵蓮防御", true, 3, 500, 60, false);
	CreateTextureEXadd("絵蓮防御火花", 2115, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	Zoom("絵蓮防御火花", 0, 1500, 1500, null, true);

	CreateColorEX("絵色防御白", 4000, "FFFFFF");

//蓮防御前定義：ここまで↑↑↑

	EffectTxtinSDelete("ノイズ","崩");
	CreateTxtinEffectS(4000,"ノイズ","崩");

	CreateTextureEXadd("絵演雑音兎熱線", 3990, Center, Middle, "cg/data/slide_05_00_0.png");
	Zoom("絵演雑音兎熱線", 0, 1000, 800, null, true);

	CreatePlainEXadd("絵板写", 5000);
	Zoom("絵板写", 0, 1600, 1600, null, true);
	SetBlur("絵板写", true, 3, 300, 60, false);

//※再びノイズの攻撃、「崩」セット。ウサギモドキが発光ミサイルになって飛んでくる。
//※蒼葉、蓮に透明な盾を発生させてガードするが弾き飛ばされる。大ダメージ。

	Fade("絵板写", 0, 1000, null, true);
	Fade("絵板写", 1000, 0, null, false);
	Zoom("絵板写", 10000, 1000, 1000, null, false);

	EffectTxtinS(700,"ノイズ","崩");

	CreateSE("SE00","se戦闘_ウサギ_光突進準備");
	MusicStart("SE00",0,700,0,1000,null,false);
	Zoom("絵演雑音兎", 300, 2000, 2000, Dxl3, false);
	FadeFFR3("絵演雑音兎", 0,1000, 300, 0, 0, 60,null, false);
	Wait(150);

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

	Fade("絵蓮防御前", 200, 1000, null, true);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵蓮防御", 0, 500, null, true);
	Zoom("絵蓮防御", 3000, 1000, 1000, null, false);

	EffectTxtinS(700,"蓮","御");

	//Wait(100);

	CreateSE("SE03","se戦闘_ウサギ_光突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵演雑音兎熱線", 0, 1000, null, true);
	Zoom("絵演雑音兎熱線", 1000, 1000, 300, null, false);
	Fade("絵演雑音兎熱線", 1000, 0, Axl3, false);

	$ダメージＲ=1800;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(500,$現蒼葉ＨＰ);

	FadeFFR3("@絵蓮防御前", 0,1000, 200, 0, 0, 80,null, false);

	CreateSE("SE02","se戦闘_衝撃_防壁決壊01");
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("絵蓮防御火花", 0, 1000, null, true);
	Fade("絵蓮防御火花", 1000, 0, null, false);
	Zoom("絵蓮防御火花", 10000, 3000, 3000, null, false);

	Fade("絵蓮防御", 300, 0, null, false);
	DrawTransition("絵蓮防御", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", false);

	Fade("絵色防御白", 200, 1000, Axl1, true);
	Delete("絵蓮*");
	Delete("絵演雑音*");
	Wait(500);

	CreateTextureSP("絵背景風", 10, Center, InBottom, "cg/bg/bg201023_0_ライムノイズ03洗脳.jpg");

	FadeDelete("絵色防御白", 1000, null, true);
	RMDControlOutR(1000);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000140a01">
"Whoa!"

{	Fw("fw蓮_通常_pain");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/8000150a06">
"Aoba&, an attack!"

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000160a01">
"God damnit!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉の攻撃。「慶」セット。蓮の両腕からぐぐっと刃が出てきて、そこにビリッと電流が走る。
//腕を交差させて電気溜め→東江に向かって腕を開いて放つ。

//剣砲定義
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

	CreateMovieEX("絵動画", 2000, 120, 170, true, true, "dx/mv0003集中線01_白&.ngs");
	Zoom("絵動画",0,5000,3000,null,true);

	CloudZoomSmokeSet01("稲妻",200,"cg/ev/x/ev950蓮の剣砲構え_効果紫電_x01.png");

	//CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	//SetShade("絵背景", HEAVY);
	//Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEX("蓮攻撃", 100, -250, Middle, "cg/ev/ev950蓮の剣砲構えa.jpg");
	Request("蓮攻撃", Smoothing);
	Rotate("蓮攻撃", 0, @0, @0, @50, null,true);
	Zoom("蓮攻撃", 0, 1300, 1300, null, true);
	SetBlur("蓮攻撃", true, 2, 500, 50, false);

	CreateTextureEXadd("光", 100, Center, Middle, "cg/ef/effi暴露成功_ef01.png");
	Move("光", 0, @-250, @50, null, true);
	Zoom("光", 0, 5000, 5000, null, true);

	RotetoLoopOGM02("光プロセス","光",1800,-3600);
	RotetoLoopOGM03("光プロセス2","EF1",34000,-3600);

	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("光", 10000000, 3, 3, 3, 3, 900, null, false);

	SetVolumeEX("SEL21", 300, 0, null);
	SetVolumeEX("SE22", 300, 0, null);
	FadeDelete("絵色白", 100, null, false);

	Delete("絵演背景");

//蓮剣砲構え
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("絵背景EF02", 100, 1000, null, false);
	Fade("絵背景", 100, 1000, null, false);
	Zoom("絵背景", 650, 2000, 2000, AxlDxl, false);
	//BezierMove("絵背景", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
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

	//SetBlur("蓮攻撃", true, 2, 300, 1000, false);
	Zoom("蓮攻撃", 300, 1100, 1100, Dxl3, false);
	Fade("蓮攻撃", 100, 1000, null, false);
	Move("蓮攻撃", 300, -180, -140, Dxl3, false);
	Rotate("蓮攻撃", 300, @0, @0, 0, Dxl2,true);
	SetBlur("蓮攻撃", false, 2, 300, 1000, false);

	WaitAction("@蓮攻撃", null);
	SetBlur("蓮攻撃", true, 2, 500, 50, false);

	EffectTxtinA("蓮","慶");
	EffectTxtinB("蓮","慶");

//蓮剣砲チャージ
	MusicStart("SE08",0,600,0,200,null,true);
	Shake("蓮攻撃", 10000000, 3, 3, 3, 3, 900, null, false);
	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	Fade("絵動画", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("光", 3000, 500, null, false);

	Zoom("蓮攻撃", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@蓮攻撃",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);

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

	CreateSEEX("SE11","se戦闘_衝撃_エネルギー鬩ぎ合い01L");
	MusicStart("SE11",0,1000,0,1000,null,true);

	Fade("EF4", 200, 1000, Axl1, true);
	MusicStart("SE07",0,1000,0,1000,null,false);

	Wait(300);

	SetVolumeEX("SE11", 6000, 200, null);
	SetFrequency("SE11", 6000, 300, null);

//※ノイズ、ウサギモドキを盾に変形させてガード。蓮、蒼葉の元に戻る。
	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Request("稲妻", Stop);
	Request("光*", Stop);
	Shake_LoopDelete();
	FlashQuickDelete(0,0);
	Delete("処理*");
	Delete("稲妻*");
	Delete("蓮攻撃");
	Delete("光*");
	Delete("EF*");

	CreateMovieEX("絵演動画", 4000, Center, Middle, true, true, "dx/mv0003集中線01_黒&.ngs");
	Zoom("絵演動画", 0, 4500, 3500, null, true);
	Fade("絵演動画", 0, 1000, null, true);

	CreateTextureSP("絵演雑音", 2100, Center, -440, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ洗脳_アップ_l.jpg");
	Zoom("絵演雑音", 0, 500, 500, null, true);

	CreateColorEXadd("絵色白", 20000, "FFFFFF");
	CreateColorEXadd("絵色白下", 5000, "FFFFFF");
	CreateColorEXadd("絵色蓮光線", 4990, "FFFFFF");
	DrawTransition("絵色蓮光線", 0, 0, 300, 100, null, "cg/data/slide_03_00_1.png", true);

	Fade("絵色蓮光線", 6000, 1000, null, false);
	DrawTransition("絵色蓮光線", 6000, 300, 500, 100, null, "cg/data/slide_03_00_1.png", false);
	Move("絵演雑音", 6000, -480, 520, Axl3, false);
	Zoom("絵演雑音", 6000, 2000, 2000, Axl3, false);

	SetVolumeEX("SE11", 6000, 1000, null);
	SetFrequency("SE11", 6000, 1500, null);

	$ダメージＬ=0;
	$現ノイズＨＰ=$現ノイズＨＰ-$ダメージＬ;
	RMDControlInL(0,$現ノイズＨＰ);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	Wait(5100);

	SetVolumeEX("SE*", 150, 0, null);

	Wait(400);

	//SetVolumeEX("@dm*", 150, 1, null);
	SetVolumeEX("@dm011", 150, 1, null);

	CreateSE("SE21","se戦闘_打撃_ヒット低04");
	MusicStart("SE21",0,1000,0,1000,null,false);

	CreateSE("SE22","se戦闘_衝撃_破損01");
	MusicStart("SE22",0,1000,0,1000,null,false);

	$ダメージＬ=1200;
	$現ノイズＨＰ=$現ノイズＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現ノイズＨＰ);
	RMDControlOutL(0);

	Fade("絵色白", 100, 1000, null, true);
	Wait(3000);
	WaitKey(2000);

	Delete("絵色蓮*");
	Delete("絵演動画*");
	Delete("絵演雑音");
	Delete("絵板者");

	Fade("絵色白下", 0, 1000, null, true);
	Delete("絵色白");

	CreateMovieEX("絵演動画", 6000, Center, Middle, true, true, "dx/mv0003集中線01_黒&.ngs");
	Zoom("絵演動画", 0, 4500, 3500, null, true);

	CreateTextureEX("絵演雑音兎", 5110, Center, Middle, "cg/ev/m/ev960ウサギモドキ戦闘突進_m.jpg");
	Zoom("絵演雑音兎", 0, 700, 700, null, true);

	SetVolumeEX("@dm011", 0, 450, null);

	CreateSE("SE01","se戦闘_ウサギ_光突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演雑音兎", 200, 1000, 1000, null, false);
	Fade("絵演動画", 0, 1000, null, true);
	DrawTransition("絵演雑音兎", 200, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", false);
	FadeFFR3("絵演雑音兎", 0,1000, 200, 0, 0, 60,null, true);

//※ノイズの攻撃：「壊」セット。ウサギモドキがそれぞれさらに大きな発光ミサイルになって飛んでくる。
//※蒼葉、蓮に透明な盾を発生させてガードするが弾き飛ばされる。大ダメージ。

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/8000170a01">
"!!!"

{	Fw("fw蓮_通常_shout");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/8000180a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色暗幕", 10000, "000000");
	CreateColorEX("絵色白二", 9900, "FFFFFF");

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	Fade("絵色白二", 200, 1000, Axl3, false);
	Zoom("絵演雑音兎", 200, 5000, 5000, Axl3, false);
	FadeFFR3("絵演雑音兎", 0,1000, 200, 0, 0, 60,null, true);

	Wait(300);

	CreateSE("SE01","se擬音_精神_割れる01");
	MusicStart("SE01",0,1000,0,800,null,false);
	RMDControlInR(1000,0);
	RMDControlOutR(500);

	Fade("絵色暗幕", 3000, 1000, null, true);
	//Wait(2000);
	ClearFadeAll(0, true);
	//Wait(1000);

//※蒼葉の負けとアナウンスされ、空間が解除される。
//※ライムから現実世界へ

//※次ファイル["dm2390_vs.nss"]

}
