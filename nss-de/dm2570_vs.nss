//<continuation number="190">
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


scene dm2570_vs.nss_MAIN
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
	#ev900ライム対戦蒼葉VSノイズ通常=true;
	#ev950蓮バトル汎用攻撃a=true;


	//▼使用した演出関連の素材を削除
	//RMScaningDelete();
	RMDControlDelete();
	EffectTxtinDelete();
	TiesMovieDelete();


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2580.nss";

}


scene dm2570_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
/*
	RMDControlLDefault($ノイズラストＨＰ);//5000
	$現ノイズラストＨＰ=$ノイズラストＨＰ;
	RMDControlRDefault($蒼葉ＨＰ);//5000
	$現蒼葉ＨＰ=$蒼葉ＨＰ;

	CreateProcessEX("LHP", "TestLHP");
	Request("LHP", Lock);
	Request("LHP", Start);

	CreateProcessEX("RHP", "TestRHP");
	Request("RHP", Lock);
	Request("RHP", Start);
*/

//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);
	CreateColorSP("絵色白", 5000, "FFFFFF");

	CreateTextureSP("絵背景", 10, Center, 0, "cg/bg/bg201021_0_ライムノイズ01.jpg");

	CreateSE("SE00","se擬音_ライム_導入エンカウント01");
	MusicStart("SE00",0,700,0,1000,null,false);

	FadeDelete("上背景", 1000, Axl3, true);
	Wait(1000);

	CreateSE("SE01","se擬音_ライム_超音波01L");
	MusicStart("SE01",4000,700,0,500,null,true);

	TiesMovieSet("転送ライムa",2000);
	TiesMovieStart();
	Wait(16);
	TiesMovieNEXT();

	Fade("絵色白", 4000, 0, Dxl3, true);

//※ライム空間へ飛ぶ。

	Wait(2000);

	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE02","se擬音_精神_導入01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵色白", 1000, 1000, AxlAuto, true);
	Wait(500);
	TiesMovieDelete();
	FadeDelete("絵色白", 4000, DxlAuto, false);
	Wait(3500);

	Move("絵背景", 5000, @0, -576, DxlAuto, true);

//※ライム空間で対峙して、真剣な顔で向かい合っている蒼葉とノイズ。

{	Fw("fw蒼葉_通常_serious");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「※：立ち位置の印象付け、ノイズ目線版はやめておいた」

	CreatePlainSP("絵板写", 5000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 1, Center, -1350, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");

	CreateTextureSP("Ｃ/絵演奥立絵", 200, 150, 0, "cg/bu/buノイズ_通常_cool.png");
	Request("Ｃ/絵演奥立絵", Smoothing);
	Zoom("Ｃ/絵演奥立絵", 0, 800, 800, null, true);

	CreateTextureSP("Ｃ/絵演手前立絵下", 750, -218, -30, "cg/fu/fu蒼葉_通常_cranky2h.png");
	SetShade("Ｃ/絵演手前立絵下", MEDIUM);

	CreateTextureSP("Ｃ/絵演手前立絵", 750, -218, -30, "cg/fu/fu蒼葉_通常_cranky2h.png");
	SetShade("Ｃ/絵演手前立絵", SEMIHEAVY);

	MoveCamera("Ｃ", 0, 512, @0, @0, AxlDxl, true);


	FadeDelete("絵板写", 2000, null, false);
	Wait(250);
	Move("Ｃ/絵演奥立絵", 8000, 300, @0, DxlAuto, false);
	MoveCamera("Ｃ", 8000, 0, 0, @0, DxlAuto, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000020a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	Position("@Ｃ/絵演奥立絵", $x1, $y1);
	CreateTextureSP("Ｃ/絵演奥立絵", 200, $x1, $y1, "cg/bu/buノイズ_通常_smile.png");
	Request("Ｃ/絵演奥立絵", Smoothing);
	Zoom("Ｃ/絵演奥立絵", 0, 800, 800, null, true);

	//FadeDelete("絵板写", 200, null, true);

	CreateProcessEX("プロセス", "Proc_dm2570_vs_01Act");
	Request("プロセス", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000030a03">
"&.&.&.It's finally time&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	if($Proc_dm2570_vs_01Act==true){
	}else{
	Request("プロセス", Stop);
	Delete("@絵板写");
	$Proc_dm2570_vs_01Act=true;
	}
	Delete("プロセス");

{	Fw("fw蒼葉_通常_serious");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000040a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「※：立ち位置の印象付けここまで」

	CreateTextureSP("絵背景", 0, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	St("C",0, @0,@0,"stノイズ_通常_smile");
	FadeSt("C",0,true);

	MoveCamera("Ｃ", 3000, @0, @0, 500, DxlAuto, false);
	Fade("@Ｃ*", 600, 0, null, true);

	PrintGO("上背景", 10000);
	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	St("C",740, @0,@0,"stノイズ_通常_smile");
	FadeSt("C",0,true);
	FadeDelete("上背景", 0, null, true);

{	Fw("fw蒼葉_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000050a01">
"There was that whole business with Platinum Jail&, and then your wounds had to heal&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000060a03">
"I thought you were still gonna be half-baked about it&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000070a01">
"Hell no&. I made sure to remember&. We promised&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000080a01">
"But I'll tell you one thing&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000090a03">
"Sure&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000100a01">
"I won't use Scrap on you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_serious");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000110a01">
"I don't even know how to&. Is that okay?"

{	DeleteFw();}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000120a03">
"&.&.&.Yeah&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000130a03">
"I didn't believe at all that I lost&, and planned on
 crushing you completely afterwards&."

{	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000140a03">
"But now it's different&. I just want to fight you&.
 Win or lose&, all-out&."

{	St("C",740, @0,@0,"stノイズ_通常_normal4");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000150a03">
"Rhyme&.&.&. is the only thing that makes me feel alive&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000160a03">
"So&, Aoba&. Fight me&. With all you got&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000170a01">
"&.&.&.Sure&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("絵専", 1100, 1737, 573, "cg/ev/ev900ライム対戦蒼葉VSノイズ通常.jpg");
	Zoom("絵専", 0, 5000, 5000, null, true);
	SetBlur("絵専", true, 3, 500, 60, false);
	Move("絵専", 1200, 0, 0, DxlAuto, false);
	Zoom("絵専", 1200, 1000, 1000, DxlAuto, false);
	Fade("絵専", 600, 1000, null, true);

	Wait(500);

	CreateSE("SE02","se擬音_ライム_アラート01");
	MusicStart("SE02",0,700,0,1000,null,false);

	SoundPlay("@dm008",0,450,true);//疾走
	SetStream("@dm008*", 3300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000180a06">
"Aoba&, instructions&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ライム開始。
//※蒼葉先制。「慈」セット。蓮がノイズに向かってすっ飛んでく。
//　ノイズ、防御の構えを取る。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000190a01">
"&.&.&.Let's go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,600,null,false);

//※蓮、ノイズへ向かってダッシュ。

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, false);
	Zoom("絵専", 600, 8000, 8000, Axl1, false);
	Move("絵専", 600, -600, 576, Axl1, true);

	Delete("絵専");

//あきゅん「演出まとめ：蓮突進」
//定義
	CreateMovieEX("絵演動画", 2100, Center, Middle, true, true, "dx/mv0003集中線04_黒&.ngs");
	Rotate("絵演動画", 0, @0, @0, -11, null,true);
	DrawTransition("絵演動画", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	Zoom("絵演動画", 0, 3000, 3000, null, true);
	Fade("絵演動画", 0, 500, null, true);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	MoveCamera("Ｃ", 0, @0, @0, 5000, null, true);

	CreateTextureSP("Ｃ/絵演蓮突進背景", 0, -1110, -1220, "cg/ev/l/ev950蓮バトル汎用突進a_背景_l.jpg");
	CreateTextureSP("Ｃ/絵演蓮突進一", 500, 800, -500, "cg/ev/ev950蓮バトル汎用突進a_人物蓮.png");
	Position("@Ｃ/絵演蓮突進一", $x1, $y1);
	CreateTextureEX("Ｃ/絵演蓮突進一黒", 500, $x1, $y1, "cg/ev/x/ev950蓮バトル汎用突進a_人物蓮_xb.png");
	Fade("Ｃ/絵演蓮突進一黒", 0, 800, null, true);

	CreateTextureEXadd("Ｃ/絵演蓮突進一光", 500, $x1, $y1, "cg/ev/ev950蓮バトル汎用突進a_人物蓮.png");

	Zoom("Ｃ/絵演蓮突進一*", 0, 10, 10, null, true);

	CreateProcessEX("プロセス", "Proc_dm0200_vs_02Act");

//開始
	MoveCamera("Ｃ", 300, @0, @0, 1250, Dxl2, false);
	Move("Ｃ/絵演蓮突進背景", 80000, 0, -1450, null, false);
	FadeDelete("絵色黒", 400, null, true);
	Request("プロセス", Start);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("Ｃ/絵演蓮突進一黒", 3600, 0, Dxl1, false);
	Position("@Ｃ/絵演蓮突進一", $x1, $y1);
	BezierMove("Ｃ/絵演蓮突進一*", 900, ($x1,$y1){200,-180}{0,-180}(-20, -240), Dxl2, false);
	Zoom("Ｃ/絵演蓮突進一*", 1000, 250, 250, Dxl2, true);

	Wait(300);

//蒼葉顔カットイン定義
	CreateTextureEX("絵覆縁", 4990, Center, Middle, "cg/mask/ciスラッシュ_02_00z.png");
	CreateMaskEX("絵覆", 0, Center, Middle, "cg/mask/ciスラッシュ_02_00.png", false);
	CreateColorSP("絵覆/絵色白", 5000, "FFFFFF");
	CreateTextureSPsub("絵覆/絵割蒼葉背景", 2100, Center, Middle, "cg/ef/efbg効果02.jpg");
	CreateTextureSP("絵覆/絵割蒼葉顔", 2100, 350, 20, "cg/fu/fu蒼葉_通常_angry.png");
	SetVertex("絵覆/絵割蒼葉顔", 460, 260);
	Zoom("絵覆/絵割蒼葉顔", 0, 1500, 1500, null, true);
	Request("絵覆/絵割蒼葉顔", Smoothing);
	SetBlur("絵覆/絵割蒼葉顔", true, 2, 500, 80, false);

	Zoom("絵覆", 0, 5000, 0, null, true);
	Rotate("絵覆", 0, @0, @0, -270, null,true);
	Zoom("絵覆縁", 0, 5000, 0, null, true);
	Rotate("絵覆縁", 0, @0, @0, -270, null,true);


//蒼葉顔カットイン開始
	Zoom("絵覆", 400, 1000, 600, Dxl3, false);
	Rotate("絵覆", 400, @0, @0, 0, Dxl3,false);
	Zoom("絵覆縁", 400, 1000, 600, Dxl3, false);
	Rotate("絵覆縁", 400, @0, @0, 0, Dxl3,false);
	Wait(200);
	Fade("絵覆縁", 200, 1000, null, false);
	Fade("絵覆/絵色白", 200, 0, null, true);

	Wait(100);

//あきゅん「※：セリフを追加しました」
	CreateVOICE("蒼葉","ex06/0000050a01");//慈セット
	$SETime = RemainTime("蒼葉")-100;
	MusicStart("蒼葉",0,1800,0,1000,null,false);

	Zoom("絵覆/絵割蒼葉顔", 300, 1950, 1950, AxlDxl, true);

	WaitKey($SETime);

	SetVolumeEX("蒼葉", 150, 0, null);

	CreateVOICE("蓮","dm55/4000170a06");//了解
	$SETime = RemainTime("蓮");
	MusicStart("蓮",0,1800,0,1000,null,false);
	WaitKey($SETime);
	SetVolumeEX("蓮", 150, 0, null);

//蒼葉顔カットイン閉じ
	Fade("絵覆縁", 300, 0, null, false);
	Fade("絵覆/絵色白", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("絵覆縁", 200, 1000, 0, AxlDxl, false);
	Zoom("絵覆", 200, 1000, 0, AxlDxl, true);
	Delete("絵覆*");

//紋章セット
	EffectTxtinA("蓮","慈");

	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);

//紋章効果により蓮発光
	Fade("Ｃ/絵演蓮突進一光", 0, 500, null, true);
	Zoom("Ｃ/絵演蓮突進一光", 0, 275, 275, null, true);

	FadeDelete("絵色白", 70, null, false);

	EffectTxtinB("蓮","慈");

//ノイズ、蓮の攻撃をウサギモドキの盾で防御。ガキーン！

//ノイズ、嬉しそうに笑う。


{	Fw("fwノイズ_通常_pride");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000200a03">
"&.&.&.Yeah&. Come at me full force&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 10000, "BLACK");

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,700,null,false);

//蓮：突進進行
	Move("Ｃ/絵演蓮突進一*", 400, -200, -200, Axl2, false);
	$蓮拡大=1000;
	Zoom("Ｃ/絵演蓮突進一", 400, $蓮拡大, $蓮拡大, Axl2, false);
	$蓮光拡大率調整=$蓮拡大*1&.1;
	Zoom("Ｃ/絵演蓮突進一光", 400, $蓮光拡大率調整, $蓮光拡大率調整, Axl2, false);

	Wait(300);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("Ｃ");
	Delete("絵覆*");
	Request("プロセス", Stop);
	Delete("プロセス");

	CreateTextureSP("絵専", 1100, 0, -288, "cg/ev/m/ev920ノイズ突進a_m.jpg");
	Zoom("絵専", 0, 2500, 2500, null, true);
	SetBlur("絵専", true, 3, 500, 60, false);
	BezierMove("絵専", 800, (@0,@0){-310,-90}{-450,-30}(-440,0), Dxl2, false);
	Zoom("絵専", 800, 1000, 1000, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);
	Fade("絵演動画", 650, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000210a03">
"LOSS&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_動作_跳躍低01");

	CreateColorEX("絵色黒", 5000, "000000");
	Move("絵専", 800, 0, -288, AxlDxl, false);
	Wait(100);
	Fade("絵色黒", 400, 1000, null, true);

	CreateTextureSP("絵専", 1100, -1024, 0, "cg/ev/l/ev960ウサギモドキ戦闘構え_l.jpg");
	Move("絵専", 400, -160, -270, Dxl2, false);

	MusicStart("SE02",0,700,0,1500,null,false);
	DrawDelete("絵色黒", 250, 100, null, "slide_04_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000220c10">
"LOSS Set!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1200,null,false);

	Move("絵専", 300, -512, -450, Dxl2, false);
	Zoom("絵専", 300, 500, 500, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm25/7000230c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※「失」セット。ウサギモドキが発光したミサイルのようにひゅんひゅん飛んでくる
	EffectTxtinA("ノイズ","失");
	EffectTxtinB("ノイズ","失");

//ウサギモドキ簡易突進
	CreateTextureEX("絵専二", 1120, -980, -10, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_動作_跳躍低01");
	CreateSE("SE05","se戦闘_動作_跳躍低01");

	MusicStart("SE01",0,700,0,2000,null,false);
	Fade("絵専二", 0, 1000, null, true);
	FadeFFR3("絵専二", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE02",0,700,0,2000,null,false);
	Move("絵専二", 0, -250, -330, null, true);
	FadeFFR2("絵専二", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE03",0,700,0,2000,null,false);
	Move("絵専二", 0, -990, -30, null, true);
	FadeFFR("絵専二", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE04",0,700,0,2000,null,false);
	Move("絵専二", 0, -30, -360, null, true);
	FadeFFR3("絵専二", 0,1000, 150, 0, 0, 20,null, false);

	Wait(80);

	MusicStart("SE05",0,700,0,2000,null,false);
	Move("絵専二", 0, -1024, -556, null, true);
	Zoom("絵専二", 200, 550, 550, Dxl3, false);
	Move("絵専二", 200, -512, -302, Dxl3, false);
	Wait(190);
	FadeFFR("絵専二", 0,1000, 150, 0, 0, 20,null, true);

	Delete("絵専");

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000240a01">
"Ren! Defense!"

{	Fw("fw蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000250a06">
"Understood&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵専", 2110, 0, 0, "cg/ev/m/ev950蓮バトル汎用防御a_m.jpg");
	CreateTextureEX("絵専効果上", 2110, -753, -322, "cg/ev/m/ev950蓮バトル汎用防御a_効果_m.jpg");
	SetVertex("絵専効果上", 1520, 536);
	Zoom("絵専効果上", 0, 1250, 1250, null, false);
	CreateTextureEX("絵専効果", 2110, 0, 0, "cg/ev/m/ev950蓮バトル汎用防御a_効果_m.jpg");


//蓮、防御シールド
	CreateSE("SE51","se戦闘_動作_跳躍低01");
	MusicStart("SE51",0,700,0,1000,null,false);
	Zoom("絵専二", 400, 2000, 2000, Dxl3, false);
	Move("絵専二", 600, -2048, -1152, Axl3, false);

	Wait(400);

	Move("絵専", 800, -750, -320, Dxl3, false);
	Fade("絵専", 600, 1000, null, true);



	CreateTxtinEffectS(3900,"蓮","御");
	EffectTxtinS(700,"蓮","御");

	RMDControlRDefault($蒼葉ＨＰ);//5000
	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("絵色白", 4900, "FFFFFF");

	Move("絵専", 0, -750, -320, null, true);
	Position("絵専", $x1, $y1);
	Move("絵専効果", 0, $x1, $y1, null, true);
	Fade("絵専効果", 0, 1000, null, true);

	FadeDelete("絵色白", 1000, null, false);

	Fade("絵専効果上", 0, 800, null, true);
	SetBlur("絵専効果上", true, 3, 500, 250, false);
	Wait(100);
	Zoom("絵専効果上", 1000, 1000, 1000, null, false);
	Fade("絵専効果上", 800, 0, null, false);

	Wait(900);

	CreateSE("SE11","se戦闘_打撃_ヒット低04");
	CreateSE("SE12","se戦闘_打撃_ヒット低04");
	CreateSE("SE13","se戦闘_打撃_ヒット低04");
	CreateSE("SE14","se戦闘_打撃_ヒット低04");
	CreateSE("SE15","se戦闘_打撃_ヒット低04");
	CreateSE("SE16","se戦闘_打撃_ヒット低04");

	CreateMaskEX("覆", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("覆", 0, 2000, 2000, null, true);

	CreateColorEXadd("絵白転", 5000, "FFFFFF");
	CreateColorEXadd("覆/絵色白", 4890, "FFFFFF");


//～～～～～～～～～～～～～～～～～～～～

	Position("絵専効果", $x1, $y1);//原点を取得

//ランダムヒットエフェクト00

	MusicStart("SE16",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);
	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 200, 0, 0, 30,null, false);
	Fade("覆/絵色白", 170, 0, null, true);

	$ダメージＲ=150;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

//～～～～～～～～～～～～～～～～～～～～

	Move("絵専効果", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト01
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE11",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

//～～～～～～～～～～～～～～～～～～～～

	Move("絵専効果", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト02
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=150;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

//～～～～～～～～～～～～～～～～～～～～

	Move("絵専効果", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト03
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=150;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

//～～～～～～～～～～～～～～～～～～～～

	Move("絵専効果", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト04
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=150;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

//～～～～～～～～～～～～～～～～～～～～

	Move("絵専効果", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト05
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE15",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=150;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

//～～～～～～～～～～～～～～～～～～～～

	Move("絵専効果", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト06
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE16",0,700,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=150;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);
	RMDControlOutR(1000);

	Wait(30);

	FadeFFR3("絵専効果", 0,1000, 100, 0, 0, 30,null, false);
	Fade("絵専効果", 400, 0, null, false);
	Fade("覆/絵色白", 100, 0, null, true);

//～～～～～～～～～～～～～～～～～～～～

	CreateSE("SE21","se人体_動作_衣擦れ17");
	MusicStart("SE21",0,700,0,1000,null,false);
	CreateTextureEX("絵専二", 2150, -715, -330, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ通常_l.jpg");
	Move("絵専", 800, -870, -420, Dxl1, false);

	Move("絵専二", 800, -740, -370, Dxl1, false);
	Fade("絵専二", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000260a01">
"&.&.&.Ren&, GLORY&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000270a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※「誉」セット。蓮の両腕からぐぐっと刃が出てくる
	CreateColorEX("絵色黒", 5000, "000000");

	Move("絵専二", 800, -600, @0, AxlAuto, false);
	Fade("絵色黒", 400, 1000, null, true);

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

	Fade("絵色黒", 300, 0, null, true);

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

{	Fw("fwノイズ_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000280a03">
"Defense&."

{	Fw("fwAMウサギモドキ_ボクサー_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm25/7000290c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	RMDControlLDefault($ノイズラストＨＰ);//4000

	CreateColorEX("絵色黒", 3000, "000000");

	MoveCamera("Ｃ", 600, -512, 110, 4000, Dxl3, true);
	MoveCamera("Ｃ", 600, 800, 110, 4000, Axl3, false);

	Wait(500);

	$現ノイズラストＨＰ=$ノイズラストＨＰ;
	$ダメージＬ=0;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(0,$現ノイズラストＨＰ);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("Ｃ");
	Delete("プロセス");
	EffectTxtinSDelete("蓮","誉");

	Wait(200);

	SetVolumeEX("SE*", 250, 0, null);

//ウサギ顔カットイン定義、暗転中先読み
	CreateTextureEX("絵覆縁", 4990, Center, Middle, "cg/mask/ciライン_01_00z.png");
	CreateMaskEX("絵覆", 0, Center, Middle, "cg/mask/ciライン_01_00.png", false);
	SetVertex("絵覆縁", center, 212);
	SetVertex("絵覆", center, 212);
	CreateColorSP("絵覆/絵色白", 5000, "FFFFFF");
	//CreateTextureSP("絵覆/絵割ウサギ背景", 4100, Center, Middle, "cg/ef/efbg効果02.jpg");
	CreateTextureSP("絵覆/絵割ウサギ顔", 4100, 150, -260, "cg/ev/l/ev960ウサギモドキ戦闘構え_l.jpg");
	Request("絵覆/絵割ウサギ顔", Smoothing);
	//SetBlur("絵覆/絵割ウサギ顔", true, 2, 500, 80, false);

	Zoom("絵覆", 0, 5000, 0, null, true);
	Zoom("絵覆縁", 0, 5000, 0, null, true);
//ウサギ顔カットイン定義、暗転中先読みここまで↑↑↑

	CreateSE("SE01","se戦闘_蓮_剣撃01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵演蓮剣閃", 3190, -302, -330, "cg/ev/ev950蓮バトル汎用攻撃a_効果剣閃.png");
	Position("@絵演蓮剣閃", $x1, $y1);
	FadeFFR("絵演蓮剣閃", 0,1000, 200, 0, 0, 20,null, false);
	DrawTransition("絵演蓮剣閃", 200, 0, 1000, 100, Dxl3, "cg/data/slide_03_01_0.png", true);
	Request("絵演蓮剣閃", AddRender);
	CreateTextureSP("絵演蓮", 2111, $x1, $y1, "cg/ev/ev950蓮バトル汎用攻撃a_人物蓮.png");
	CreateTextureSP("絵演蓮背景", 2110, $x1, $y1, "cg/ev/ev950蓮バトル汎用攻撃a_背景.jpg");

	Move("絵演蓮", 13000, -250, @0, DxlAuto, false);
	Move("絵演蓮背景", 13000, -250, @0, Dxl1, false);

	DrawDelete("絵色黒", 200, 100, null, "slide_08_00_0", true);
	FadeDelete("絵演蓮剣閃", 300, null, false);

//ウサギモドキのシールドで防御。
//　カウンター発動。（３０％の確率で発動するとかそういうタイプ）

//ウサギ顔カットイン定義は上で

//ウサギ顔カットイン開始
	Move("絵覆/絵割ウサギ顔", 600, -150, @0, Dxl2, false);
	Zoom("絵覆", 400, 1000, 800, Dxl3, false);
	Zoom("絵覆縁", 400, 1000, 800, Dxl3, false);
	Wait(200);

	Move("絵覆/絵割ウサギ顔", 10000, -170, @0, null, false);

	Fade("絵覆縁", 200, 1000, null, false);
	Fade("絵覆/絵色白", 200, 0, null, true);

	Wait(100);


	CreateVOICE("ウサギモドキリーダー","dm25/7000300c10");//「かうんたー発動！」
	$SETime = RemainTime("ウサギモドキリーダー")-100;
	MusicStart("ウサギモドキリーダー",0,1800,0,1000,null,false);

	Zoom("絵覆/絵割蒼葉顔", 300, 1950, 1950, AxlDxl, true);

	WaitKey($SETime);

	RMDControlOutL(0);

//ウサギ顔カットイン閉じ
	Fade("絵覆縁", 300, 0, null, false);
	Fade("絵覆/絵色白", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("絵覆縁", 200, 1000, 0, AxlDxl, false);
	Zoom("絵覆", 200, 1000, 0, AxlDxl, true);
	Delete("絵覆*");

	SetVolumeEX("ウサギモドキリーダー", 150, 0, null);

/*
{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000300c10">
"Counter attack!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//ウサギモドキがぽかぽかぽかっと蓮を攻撃。
//ダメージ小。

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreateColorSPadd("絵色白", 9990, "FFFFFF");
	Fade("絵色白", 0, 1000, Axl3, true);
	Wait(30);
	Zoom("絵演蓮", 0, 2000, 2000, null, true);
	Shake("絵演蓮", 100, 4, 2, 0, 0, 1000, null, false);
	Shake("絵演蓮背景", 100, 4, 2, 0, 0, 1000, null, false);
	Fade("絵色白", 70, 0, Axl3, true);

	Fade("絵色白", 0, 1000, Axl3, true);
	Wait(30);
	Shake("絵演蓮", 100, -4, 2, 0, 0, 1000, null, false);
	Shake("絵演蓮背景", 100, -4, 2, 0, 0, 1000, null, false);
	Fade("絵色白", 70, 0, Axl3, true);

	Fade("絵色白", 0, 1000, Axl3, true);
	Wait(30);
	Shake("絵演蓮", 100, 4, 2, 0, 0, 1000, null, false);
	Shake("絵演蓮背景", 100, 4, 2, 0, 0, 1000, null, false);
	Fade("絵色白", 70, 0, Axl3, true);

	Fade("絵色白", 0, 1000, Axl3, true);
	Wait(30);
	Shake("絵演蓮", 100, -4, 2, 0, 0, 1000, null, false);
	Shake("絵演蓮背景", 100, -4, 2, 0, 0, 1000, null, false);
	Fade("絵色白", 70, 0, Axl3, true);

	CreateSE("SE02","se戦闘_打撃_ヒット低04");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵色白", 300, 1000, Axl3, true);

	Delete("絵演*");
	Delete("絵専*");

	$ダメージＲ=500;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);
	RMDControlOutR(1000);

	CreateSE("SE91","se戦闘_動作_跳躍低01");
	MusicStart("SE91",0,700,0,300,null,false);

	CreateTextureSP("絵演旋回背景", 1000, Center, 0, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");
	SetBlur("絵演旋回背景", true, 3, 500, 30, false);
	CreateSurfaceEX("絵効果サフ", 5000,1000,"@絵演旋回背景");
	Fade("絵効果サフ", 0, 1000, null, true);
	Rotate("絵効果サフ", 0, @0, @0, 180, null,true);

	Zoom("絵効果サフ", 2800, 2000, 2000, DxlAxl, false);
	Move("絵演旋回背景", 3000, @0, -1728, DxlAxl, false);
	FadeDelete("絵色白", 300, null, true);

	Wait(2500);

	SetVolumeEX("SE91", 150, 0, null);
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Rotate("絵効果サフ", 300, @0, @0, 0, Dxl3,true);
	Shake("絵効果サフ", 200, 0, 60, 0, 0, 1000, null, false);

	Wait(50);

	CreateSE("SE02","se人体_足音_一歩02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵効果サフ", 400, 1000, 1000, AxlDxl, true);
	Shake("絵効果サフ", 200, 0, 20, 0, 0, 1000, null, false);

{	Fw("fw蓮_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000310a06">
"&.&.&.!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000320a01">
"Counter&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演相手", 5110, Center, -300, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ通常_アップ_l.jpg");
	Move("絵演相手", 800, @0, -190, Dxl1, false);
	Move("絵演旋回背景", 800, @0, -1618, Dxl1, false);
	Fade("絵演相手", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000330a03">
"Usually you can add mods&. Your Allmate is just vanilla&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000340a03">
"In two turns&, DEMOLITION upgrades into DESTRUCTION&."

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000350c10">
"DEMOLITION/DESTRUCTION set!"

{	Fw("fwAMウサギモドキ_ボクサー_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm25/7000360c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ノイズの攻撃、「崩」「壊」セット。
//「崩」の強力版。
//ウサギモドキが発光ミサイルになって飛んでくる。

//あきゅん「※：ウサギ超超突進定義」
	PrintGO("上背景", 20000);
	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵演背景", -500, Center, Middle, "cg/ev/ev960ウサギモドキ戦闘突進_背景.jpg");
	Zoom("Ｃ/絵演背景", 0, 1650, 1650, null, true);

//あきゅん「※：▼○○○○○○」
	CreateTextureSP("Ｃ/絵演兎突進四左", 0, 360, 50, "cg/ev/ev960ウサギモドキ戦闘突進_人物06.png");
	Position("Ｃ/絵演兎突進四左", $x4L, $y4L);
	CreateTextureEXadd("Ｃ/絵演兎突進四左光", 0, $x4L, $y4L, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物06_xw球体.png");
//あきゅん「※：○○○○○○▼」
	CreateTextureSP("Ｃ/絵演兎突進四右", 0, 370, 60, "cg/ev/ev960ウサギモドキ戦闘突進_人物07.png");
	Position("Ｃ/絵演兎突進四左", $x4R, $y4R);
	CreateTextureEXadd("Ｃ/絵演兎突進四右光", 0, $x4R, $y4R, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物07_xw球体.png");

//あきゅん「※：○▼○○○○○」
	CreateTextureSP("Ｃ/絵演兎突進三左", 0, 320, 30, "cg/ev/ev960ウサギモドキ戦闘突進_人物04.png");
	Position("Ｃ/絵演兎突進三左", $x3L, $y3L);
	CreateTextureEXadd("Ｃ/絵演兎突進三左光", 0, $x3L, $y3L, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物04_xw球体.png");
//あきゅん「※：○○○○○▼○」
	CreateTextureSP("Ｃ/絵演兎突進三右", 0, 340, 60, "cg/ev/ev960ウサギモドキ戦闘突進_人物05.png");
	Position("Ｃ/絵演兎突進三右", $x3R, $y3R);
	CreateTextureEXadd("Ｃ/絵演兎突進三右光", 0, $x3R, $y3R, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物05_xw球体.png");

//あきゅん「※：○○▼○○○○」
	CreateTextureSP("Ｃ/絵演兎突進二左", 0, 300, -40, "cg/ev/ev960ウサギモドキ戦闘突進_人物02.png");
	Position("Ｃ/絵演兎突進二左", $x2L, $y2L);
	CreateTextureEXadd("Ｃ/絵演兎突進二左光", 0, $x2L, $y2L, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物02_xw球体.png");
//あきゅん「※：○○○○▼○○」
	CreateTextureSP("Ｃ/絵演兎突進二右", 0, 320, 40, "cg/ev/ev960ウサギモドキ戦闘突進_人物03.png");
	Position("Ｃ/絵演兎突進二右", $x2R, $y2R);
	CreateTextureEXadd("Ｃ/絵演兎突進二右光", 0, $x3R, $y3R, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物03_xw球体.png");

//あきゅん「※：○○○▼○○○」
	CreateTextureSP("Ｃ/絵演兎突進一中", 0, 100, -170, "cg/ev/ev960ウサギモドキ戦闘突進_人物01.png");
	Request("Ｃ/絵演兎突進一中", Smoothing);
	Position("Ｃ/絵演兎突進一中", $x1C, $y1C);
	CreateTextureEXadd("Ｃ/絵演兎突進一中光", 0, $x1C, $y1C, "cg/ev/x/ev960ウサギモドキ戦闘突進_人物01_xw.png");

	Zoom("Ｃ/絵演兎突進*", 0, 10, 10, null, true);
	MoveCamera("Ｃ", 0, -90, -180, 10000, null, true);

	CreateMaskEX("絵面一", 0, Center, Middle, "cg/data/zzexslide_01_00_1.png", false);
	CreateMovieSP("絵面一/絵演効果線", 2990, Center, -72, true, true, "dx/mv0003集中線01_白&.ngs");
	Zoom("絵面一/絵演効果線", 0, 2600, 5000, null, true);

	CreateTxtinEffectS(2000,"ノイズ","崩");

//あきゅん「※：ウサギ超超突進定義ここまで↑↑↑」

	Delete("上背景");

//あきゅん「※：ウサギ超超突進開始」
//あきゅん「※：スギューンと寄る」
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("Ｃ/絵演兎突進*", 400, 1000, 1000, Dxl2, false);
	Move("Ｃ/絵演兎突進四左*", 400, 55, 170, Dxl2, false);
	Move("Ｃ/絵演兎突進四右*", 400, 870, 60, Dxl2, false);
	Move("Ｃ/絵演兎突進三左*", 400, 105, 190, Dxl2, false);
	Move("Ｃ/絵演兎突進三右*", 400, 760, 90, Dxl2, false);
	Move("Ｃ/絵演兎突進二左*", 400, 200, 140, Dxl2, false);
	Move("Ｃ/絵演兎突進二右*", 400, 620, 120, Dxl2, false);
	Move("Ｃ/絵演兎突進一中*", 400, 200, -40, Dxl2, false);
	MoveCamera("Ｃ", 1000, 0, 0, 1000, Dxl2, true);

	CreateProcessEX("プロセス", "Proc_dm0200_vs_02Act");
	Request("プロセス", Start);

//あきゅん「※：紋章効果発動」
	EffectTxtinS(700,"ノイズ","崩");


//あきゅん「※：中央以外が光の珠になる」
	SetBlur("Ｃ/絵演兎突進四左光", true, 2, 300 120, false);
	SetBlur("Ｃ/絵演兎突進四右光", true, 2, 300, 120, false);
	SetBlur("Ｃ/絵演兎突進三左光", true, 2, 300, 120, false);
	SetBlur("Ｃ/絵演兎突進三右光", true, 2, 300, 120, false);
	SetBlur("Ｃ/絵演兎突進二左光", true, 2, 300, 120, false);
	SetBlur("Ｃ/絵演兎突進二右光", true, 2, 300, 120, false);
	SetBlur("Ｃ/絵演兎突進一中光", true, 2, 300, 120, false);

	Zoom("Ｃ/絵演兎突進四左光", 0, 0, 0, null, true);
	Zoom("Ｃ/絵演兎突進四右光", 0, 0, 0, null, true);
	Zoom("Ｃ/絵演兎突進三左光", 0, 0, 0, null, true);
	Zoom("Ｃ/絵演兎突進三右光", 0, 0, 0, null, true);
	Zoom("Ｃ/絵演兎突進二左光", 0, 0, 0, null, true);
	Zoom("Ｃ/絵演兎突進二右光", 0, 0, 0, null, true);

	CreateSE("SE02","se擬音_効果_力汎用01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("Ｃ/絵演兎突進四左光", 300, 1500, 1500, Dxl2, false);
	Zoom("Ｃ/絵演兎突進四右光", 300, 1500, 1500, Dxl2, false);
	Zoom("Ｃ/絵演兎突進三左光", 300, 1500, 1500, Dxl2, false);
	Zoom("Ｃ/絵演兎突進三右光", 300, 1500, 1500, Dxl2, false);
	Zoom("Ｃ/絵演兎突進二左光", 300, 1500, 1500, Dxl2, false);
	Zoom("Ｃ/絵演兎突進二右光", 300, 1500, 1500, Dxl2, false);

	Fade("Ｃ/絵演兎突進四左光", 300, 600, Dxl2, false);
	Fade("Ｃ/絵演兎突進四右光", 300, 600, Dxl2, false);
	Fade("Ｃ/絵演兎突進三左光", 300, 600, Dxl2, false);
	Fade("Ｃ/絵演兎突進三右光", 300, 600, Dxl2, false);
	Fade("Ｃ/絵演兎突進二左光", 300, 600, Dxl2, false);
	Fade("Ｃ/絵演兎突進二右光", 300, 600, Dxl2, false);
	//Fade("Ｃ/絵演兎突進一中光", 0, 850, null, true);

	Proc_dm2570_vs_02all();//光の珠を回転

	Wait(100);

	Fade("Ｃ/絵演兎突進四左", 300, 0, DxlAuto, false);
	Fade("Ｃ/絵演兎突進四右", 300, 0, DxlAuto, false);
	Fade("Ｃ/絵演兎突進三左", 300, 0, DxlAuto, false);
	Fade("Ｃ/絵演兎突進三右", 300, 0, DxlAuto, false);
	Fade("Ｃ/絵演兎突進二左", 300, 0, DxlAuto, false);
	Fade("Ｃ/絵演兎突進二右", 300, 0, DxlAuto, true);

	CreateSE("SE02L","se戦闘_ライム_紋章浸透汎用03");
	MusicStartSet("SE02L",700,0,1500,null,false);
	CreateSE("SE02R","se戦闘_ライム_紋章浸透汎用03");
	MusicStartSet("SE02R",700,0,1500,null,false);
	CreateSE("SE03L","se戦闘_ライム_紋章浸透汎用03");
	MusicStartSet("SE03L",700,0,1500,null,false);
	CreateSE("SE03R","se戦闘_ライム_紋章浸透汎用03");
	MusicStartSet("SE03R",700,0,1500,null,false);
	CreateSE("SE04L","se戦闘_ライム_紋章浸透汎用03");
	MusicStartSet("SE04L",700,0,1500,null,false);
	CreateSE("SE04R","se戦闘_ライム_紋章浸透汎用03");
	MusicStartSet("SE04R",700,0,1500,null,false);

//あきゅん「※：中央以外に収縮合体」
	CreateName("ウサギモドキ『崩』『壊』合体")
	SetAlias("ウサギモドキ『崩』『壊』合体","ウサギモドキ『崩』『壊』合体");

	CreateProcessEX("ウサギモドキ『崩』『壊』合体/プロセス２Ｌ", "Proc_dm2570_vs_03alAct");
	Request("ウサギモドキ『崩』『壊』合体/プロセス２Ｌ", Start);
	Wait(300);
	CreateProcessEX("ウサギモドキ『崩』『壊』合体/プロセス２Ｒ", "Proc_dm2570_vs_03arAct");
	Request("ウサギモドキ『崩』『壊』合体/プロセス２Ｒ", Start);

	Wait(300);

	CreateProcessEX("ウサギモドキ『崩』『壊』合体/プロセス３Ｌ", "Proc_dm2570_vs_03blAct");
	Request("ウサギモドキ『崩』『壊』合体/プロセス３Ｌ", Start);
	Wait(300);
	CreateProcessEX("ウサギモドキ『崩』『壊』合体/プロセス３Ｒ", "Proc_dm2570_vs_03brAct");
	Request("ウサギモドキ『崩』『壊』合体/プロセス３Ｒ", Start);

	Wait(300);

	CreateProcessEX("ウサギモドキ『崩』『壊』合体/プロセス４Ｌ", "Proc_dm2570_vs_03clAct");
	Request("ウサギモドキ『崩』『壊』合体/プロセス４Ｌ", Start);
	Wait(300);
	CreateProcessEX("ウサギモドキ『崩』『壊』合体/プロセス４Ｒ", "Proc_dm2570_vs_03crAct");
	Request("ウサギモドキ『崩』『壊』合体/プロセス４Ｒ", Start);

	WaitAction("ウサギモドキ『崩』『壊』合体/プロセス４Ｒ", null);

//あきゅん「※：中央超巨大化ｗｗ」
	CreateSE("SE05A","se戦闘_ライム_紋章浸透汎用03");
	MusicStart("SE05A",0,700,0,500,null,false);
	CreateSE("SE05B","se擬音_効果_力汎用01");
	MusicStart("SE05B",0,700,0,1000,null,false);
	Zoom("Ｃ/絵演兎突進一中*", 800, 4000, 4000, Dxl3, false);
	Fade("Ｃ/絵演兎突進一中光", 900, 0, Axl3, true);

{	Fw("fw蒼葉_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000370a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 10000, "BLACK");

	CreateSE("SE01","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE01",500,1000,0,1000,null,true);
	Move("Ｃ/絵演兎突進一中*", 2000, -1500, -1500, null, false);
	Zoom("Ｃ/絵演兎突進一中*", 2000, 20000, 20000, null, false);
	Wait(1500);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵演*");
	Delete("絵面*");
	Delete("Ｃ");
	Delete("プロセス");
	Delete("ウサギモドキ『崩』『壊』*");

	CreateTextureSP("絵演背景", 10, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	Request("絵演背景", Smoothing);
	CreateSurfaceEX("絵効果サフ", 1000,2000,"@絵演背景");
	Fade("絵効果サフ", 0, 1000, null, true);
	SetBlur("絵効果サフ", true, 3, 500, 80, false);

	CreateColorEX("絵色白", 5000, "FFFFFF");
	CreateTextureSP("絵演蓮", 1110, -600, 0, "cg/ev/m/ev950蓮バトル汎用防御a_m.jpg");

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);
	//RMDControlOutR(1000);

	BezierMove("絵演蓮", 600, (@0,@0){-900,-310}{-850,-360}(-750,-280), Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, null, "slide_03_01_0", true);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(750);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE021","se戦闘_打撃_ヒット低04");
	CreateSE("SE022","se戦闘_打撃_ヒット低04");
	CreateSE("SE023","se戦闘_打撃_ヒット低04");
	CreateSE("SE024","se戦闘_打撃_ヒット低04");
	CreateSE("SE025A","se戦闘_衝撃_防壁決壊01");
	CreateSE("SE025B","se人体_足音_一歩02");

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Delete("絵演蓮");
	Fade("絵色白", 500, 0, null, true);

//※蓮、防御するがきつい。
//　ガガガガッと体力削られる。シールド崩壊。

	Zoom("絵効果サフ", 600, 1000, 1000, Dxl3, false);

	MusicStart("SE021",0,700,0,1200,null,false);
	$ダメージＲ=125;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(50,$現蒼葉ＨＰ);
	Shake("絵効果サフ", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(6);
	Fade("絵色白", 70, 0, null, true);

	MusicStart("SE022",0,700,0,1200,null,false);
	$ダメージＲ=125;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(50,$現蒼葉ＨＰ);
	Shake("絵効果サフ", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(6);
	Fade("絵色白", 70, 0, null, true);

	MusicStart("SE023",0,700,0,1200,null,false);
	$ダメージＲ=125;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(50,$現蒼葉ＨＰ);
	Shake("絵効果サフ", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(6);
	Fade("絵色白", 70, 0, null, true);

	MusicStart("SE024",0,700,0,1200,null,false);
	$ダメージＲ=125;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(50,$現蒼葉ＨＰ);
	Shake("絵効果サフ", 300, 3, 1, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(6);
	Fade("絵色白", 70, 0, null, true);

	MusicStart("SE025A",0,1000,0,1000,null,false);
	MusicStart("SE025B",0,500,0,1500,null,false);
	$ダメージＲ=1500;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);
	Shake("絵効果サフ", 1300, 3, 10, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(100);
	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");

{	Fw("fw蓮_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000380a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	RMDControlOutR(1000);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000390c10">
"Enemy's defense shield is at 91% damage!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",1740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000400a03">
"Ren's defense is broken&. The next hit&.&.&. is at you&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000410a01">
"&.&.&.!"

{	St("C",1740, @0,@0,"stノイズ_通常_smile");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000420a03">
"This used to be just a game&, but not now&."

{	St("C",1740, @0,@0,"stノイズ_通常_smile");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000430a03">
"I'll crush you into bits&."

{	St("C",1740, @0,@0,"stノイズ_通常_pride");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000440a03">
"If you don't want that&.&.&. use your power&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000450a01">
"!"


{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000460a01">
"&.&.&.No&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000470a01">
"I definitely won't&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("絵演背景", 2110, -380, -200, "cg/ev/m/ev900ライム対戦蒼葉VSノイズ通常_m.jpg");
	Move("絵演背景", 500, -410, -240, DxlAuto, false);
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0138]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000480a01">
"Ren! GLORY!"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000490a06">
"Understood&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉の攻撃。「誉」セット。蓮の両腕からぐぐっと刃が出てくる
	CreateTxtinEffectS(4000,"蓮","誉");
	EffectTxtinS(700,"蓮","誉");

	Wait(100);

	CreateTextureEX("絵演蓮", 2110, -620, -740, "cg/ev/l/ev950蓮バトル汎用突進a_l.jpg");
	Zoom("絵演蓮", 0, 500, 500, null, true);
	SetBlur("絵演蓮", true, 3, 500, 80, false);

	CreateColorEX("絵黒幕", 10000, "BLACK");

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演蓮", 300, -360, -1000, Dxl3, false);
	Zoom("絵演蓮", 300, 1000, 1000, Dxl3, false);
	Fade("絵演蓮", 300, 1000, null, false);

	Wait(250);

	RMDControlLDefault($ノイズラストＨＰ);//5000
	$ダメージＬ=0;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(0,$現ノイズラストＨＰ);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("絵演*");
	Delete("@絵効果サフ");
	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201023_0_ライムノイズ03.jpg");

	Delete("絵窓");
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	CreateTextureEXadd("絵演効果剣閃一", 2110, Center, Middle, "cg/ef/efx01剣閃01.jpg");
	CreateTextureEXadd("絵演効果剣閃二", 2110, Center, Middle, "cg/ef/efx01剣閃02.jpg");
	Rotate("絵演効果剣閃二", 0, @0, @0, 180, null,true);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	CreateSE("SE012","se戦闘_打撃_ヒット低04");
	CreateSE("SE022","se戦闘_打撃_ヒット低04");

	CreatePlainSP("絵板写", 90);

	$ダメージＬ=300;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(50,$現ノイズラストＨＰ);
	MusicStart("SE01",0,700,0,800,null,false);
	MusicStart("SE012",0,700,0,1200,null,false);
	FadeFFR3("絵板写", 0,1000, 150, 0, 0, 80,Axl3, false);
	Fade("絵演効果剣閃一", 0, 1000, null, true);
	DrawTransition("絵演効果剣閃一", 100, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);
	Fade("絵演効果剣閃一", 200, 0, null, false);

	Move("絵板写", 0, 0, 0, null, true);//元の位置へ

	$ダメージＬ=300;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(50,$現ノイズラストＨＰ);
	MusicStart("SE02",0,700,0,800,null,false);
	MusicStart("SE022",0,700,0,1200,null,false);
	FadeFFR2("絵板写", 0,1000, 300, 0, 0, 40,Axl3, false);
	Fade("絵演効果剣閃二", 0, 1000, null, true);
	DrawTransition("絵演効果剣閃二", 100, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Fade("絵演効果剣閃二", 200, 0, null, false);

	RMDControlOutL(1000);

//ウサギモドキのシールドで防御するノイズ。
//１ターン休みなので、再び蓮のターン。

{	Fw("fw蒼葉_通常_serious");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000500a01">
"Next&, HONOR!"

{	Fw("fw蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000510a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTxtinEffectS(4000,"蓮","御");
	CreateTextureEX("絵演背景効果", 1120, 0, 0, "cg/ev/l/ev950蓮、武器発現_l.jpg");

	CreateSE("SE01","se戦闘_蓮_腕武器化02");
	MusicStart("SE01",0,700,0,1000,null,false);

//※蒼葉の攻撃。「御」セット。蓮の腕から長い刃物が飛び出し、切り込みに行かせる。
	CreateTextureEX("絵演背景", 1110, 0, -180, "cg/ev/l/ev950蓮、武器発現_l.jpg");
	Move("絵演背景", 300, -620, @0, Dxl2, false);
	Fade("絵演背景", 200, 1000, null, true);

	Position("@絵演背景", $x1, $y1);
	Move("絵演背景効果", 0, $x1, $y1, null, true);
	Zoom("絵演背景効果", 0, 1100, 1100, null, true);

	Fade("絵演背景効果", 0, 800, null, true);
	Fade("絵演背景効果", 600, 0, null, false);
	SetBlur("絵演背景効果", true, 3, 500, 80, false);
	Zoom("絵演背景効果", 600, 1000, 1000, null, false);
	EffectTxtinS(700,"蓮","御");

	Delete("絵板写");

	FwMask(-314, 270, "cg/ev/ev920ノイズ突進a.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000520a03">
"Defense&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵演ノイズ", 2110, -512, -130, "cg/ev/l/ev920ノイズ突進a_l.jpg");
	Zoom("絵演ノイズ", 0, 800, 800, null, true);

	Zoom("絵演ノイズ", 800, 1000, 1000, Dxl2, false);
	BezierMove("絵演ノイズ", 800, (@0,@0){-1024,-100}{-1024,-120}(-620,-140), Dxl2, false);

	Fade("絵演ノイズ", 300, 1000, Dxl3, true);

//ウサギモドキがシールドになる。
//何匹かガリガリ吹っ飛んでダメージ。

//あきゅん「※：ウサギモドキシールド：定義」
	CreateStencil("絵縁",0,20,400,128,"cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png",false);
	SetAlias("絵縁","絵縁");
	CreateTextureEXover("絵縁/絵演模様", 2191, Center, Middle, "cg/bg/bg201012_0_ライムパブリックフィールド.jpg");

	CreateTextureEXadd("絵演ノイズバリア光", 2193, 20, 400, "cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png");
	CreateTextureEX("絵演ノイズバリア", 2190, 20, 400, "cg/st/x/stAMウサギモドキ_通常_normal_xm.png");

	$ダメージＬ=0;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(0,$現ノイズラストＨＰ);

//あきゅん「※：ウサギモドキシールド：動作：ぴょいっと飛んでくるキューブ」
	Rotate("絵縁", 60000, @0, @0, 7200, null,false);
	BezierMove("絵縁", 800, (@0,@0){330,-20}{510,-20}(600,70), Dxl1, false);

	Rotate("絵演ノイズバリア*", 60000, @0, @0, 7200, null,false);
	BezierMove("絵演ノイズバリア*", 800, (@0,@0){330,-20}{510,-20}(600,70), Dxl1, false);
	Fade("絵演ノイズバリア", 500, 1000, null, true);

	Wait(500);

//あきゅん「※：ウサギモドキシールド：動作：キューブが拡大して大きな盾に」
	CreateSE("SE02","se戦闘_衝撃_防壁発動01");
	MusicStart("SE02",0,700,0,1200,null,false);
	Fade("絵演ノイズバリア光", 200, 1000, Axl3, false);
	Zoom("絵縁", 200, 8000, 8000, Dxl3, false);
	Zoom("絵演ノイズバリア*", 200, 8000, 8000, Dxl3, true);
	Delete("絵演ノイズバリア");
	Fade("絵縁/絵演模様", 0, 1000, null, true);
	Fade("絵演ノイズバリア光", 600, 500, null, true);

//あきゅん「※：ウサギモドキシールド：動作：攻撃が盾に当たる」
	CreateSE("SE03","se戦闘_蓮_剣撃01");
	MusicStart("SE03",0,1000,0,800,null,false);
	CreateSE("SE04","se戦闘_打撃_ヒット低04");
	MusicStart("SE04",0,700,0,1250,null,false);

	$ダメージＬ=680;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現ノイズラストＨＰ);

	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Shake("絵演ノイズ", 200, 10, 2, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵色白", 70, null, true);

	RMDControlOutL(1000);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000530c10">
"Defense shield is at 34% damage!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「※：ウサギモドキシールド：動作：攻撃が元に戻る」
	CreateSE("SE01","se物体_コイル_ターゲット展開");
	MusicStart("SE01",0,1000,0,500,null,false);
	Fade("絵演ノイズバリア光", 200, 1000, null, true);
	Delete("絵縁");
	Zoom("絵演ノイズバリア光", 200, @0, 20000, null, true);
	Zoom("絵演ノイズバリア光", 200, 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000540a03">
"&.&.&.Now it's my turn&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000550a03">
"This'll end it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 3110, 0, InBottom, "cg/ev/ev900ライム対戦蒼葉VSノイズ通常.jpg");
	Move("絵演背景", 600, @0, 0, DxlAuto, false);
	Fade("絵演背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0163]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000560a01">
"&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000570a03">
"Using two turns&, DEMOLITION and DESTRUCTION&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("絵演兎", 3210, Center, Middle, "cg/ev/l/ev960ウサギモドキ戦闘構え_l.jpg");
	Zoom("絵演兎", 0, 500, 500, null, true);
	SetBlur("絵演兎", true, 2, 500, 30, false);

	Move("絵演兎", 300, -130, -260, Dxl1, false);
	Zoom("絵演兎", 300, 1000, 1000, Dxl1, false);
	Fade("絵演兎", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000580c10">
"DEMOLITION/DESTRUCTION set!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵演兎", 300, -512, -380, Dxl1, false);
	Zoom("絵演兎", 300, 500, 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0166]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm25/7000590c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EffectTxtinSDelete("ノイズ","崩");

//※ノイズの攻撃、「崩」「壊」セット。
	CreateTxtinEffectS(4000,"ノイズ","崩");
	EffectTxtinS(700,"ノイズ","崩");

	CreateSE("SE01","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE01",300,1000,0,1000,null,true);
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,800,null,true);

//「崩」の強力版。
//ウサギモドキが発光ミサイルになって飛んでくる。
//蓮の防御が破壊されてるので、蓮を通過して蒼葉が標的に。どーんどーん。
	CreateTextureEX("絵演兎超突", 3220, -850, -440, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Shake("絵演兎超突", 500, 0, 0, 0, 20, 1000, null, false);
	Zoom("絵演兎超突", 600, 1500, 1500, null, false);
	FadeFFR("絵演兎超突", 0,1000, 150, 0, 0, 30,null, true);

	Wait(550);

	CreateColorEX("絵色白", 5000, "FFFFFF");

	$ダメージＲ=1300;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

	SetVolumeEX("SE*", 150, 0, null);

	CreateSE("SE03","se戦闘_打撃_ヒット低04");
	MusicStart("SE03",0,700,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Delete("絵演*");
	CreateTextureSP("絵背景", 10, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE04","se人体_衝撃_転倒01");
	MusicStart("SE04",0,700,0,1000,null,false);
	BGPlainShake(100,300,0,20,0,0,1000,null,true);

	RMDControlOutR(1000);

	SetVolumeEX("@dm*", 1000, 0, null);

{	Fw("fw蓮_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000600a06">
"Aoba&.&.&.!"

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000610a01">
"Kuh&.&.&. Agh&.&.&.!!"

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000620c10">
"Enemy Durability at 68% damage!"

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000630a01">
"Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000640a03">
"So you endured it&. But with your Allmate with no defense&,
 the next attack'll be a direct one&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000650a03">
"If you order Ren to use his strongest attack&, half of that damage will recoil&. Your body won't be able to take it&."

{	St("C",740, @0,@0,"stノイズ_通常_normal4");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000660a03">
"Even if you order a weak attack&, my next hit will be the
 last&."

{	St("C",740, @0,@0,"stノイズ_通常_pride");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000670a03">
"Either way&, it's over&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「※：使用箇所を各ルート一回とかに限定しているなら下の曲とかで頼む」
	SoundPlay("@dm016",0,450,true);//決意
	//SoundPlay("@dm023a",0,450,true);

{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0178]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000680a01">
"&.&.&.No it's not&, you idiot&."

{	St("C",740, @0,@0,"stノイズ_通常_smile2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000690a03">
"&.&.&.Are you a sore loser?"

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000700a01">
"You just said that this'll be the end of it&. But I haven't lost&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000710a01">
"I wasn't holding out&, I was just going easy on you&."

{	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000720a03">
"!"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000730a01">
"&.&.&.Because you know what pain is now&."

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000740a03">
"&.&.&.!"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000750a01">
"But I won't go easy on you from now on&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000760a01">
"Because compared to real pain&, this is nothing&.&.&.!"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000761a01">
"This next move will be the last&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000762a01">
"Without any defense&, all of our strength will go into the
 attack&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000763a01">
"If you keep defending&, it will be my loss as you say&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演背景", 1100, -670, -370, "cg/ev/l/ev900ライム対戦蒼葉VSノイズ通常_l.jpg");
	Move("絵演背景", 700, -770, @0, DxlAuto, false);
	Fade("絵演背景", 700, 1000, null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0188]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000764a01">
"&.&.&.Let's go&, Ren&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000780a06">
"&.&.&.&.&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000790a06">
"&.&.&.Understood&."

{	Fw("fwノイズ_通常_pinch");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000800a03">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EffectTxtinSDelete("蓮","慶");

//※蒼葉の攻撃。「慶」セット。蓮の両腕からぐぐっと刃が出てきて、そこにビリッと電流が走る。
//※蓮、腕を交差させて電気溜め→敵に向かって腕を開いて放つ。

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

{	Fw("fwノイズ_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000810a03">
"&.&.&.Defense!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//ウサギモドキで防御するが、
//蓮の電撃砲の勢いを止めきれない。
//ガリガリガリ……防御が削られてく。

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

	Wait(300);


//画面切り替えてノイズ側に
	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演ノイズ", 5110, -620, -140, "cg/ev/l/ev920ノイズ突進a_l.jpg");
	Shake_Loop("@絵演ノイズ","処理無限振動");

	CreateStencil("絵縁", 0, 600, 70, 128, "cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png", false);
	SetAlias("絵縁","絵縁");
	CreateTextureEXover("絵縁/絵演模様", 5110, Center, Middle, "cg/bg/bg201012_0_ライムパブリックフィールド.jpg");
	//CreateTextureEXadd("絵縁/ノイズバリア光", 5120, 600,　70, "cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png");
	CreateColorEXadd("絵縁/ノイズバリア光", 5120, "FFFFFF");

	Zoom("絵縁/ノイズバリア光", 0, 8000, 8000, null, true);
	Zoom("絵縁", 0, 8000, 8000, null, true);
	Fade("絵縁/絵演模様", 0, 500, null, true);
	Fade("絵縁/ノイズバリア光", 0, 500, null, true);
	Rotate("絵縁", 60000, @0, @0, 7200, null,false);
	Rotate("絵演ノイズバリア*", 60000, @0, @0, 7200, null,false);

	CreateSE("SE02","se戦闘_衝撃_防壁発動01");
	MusicStart("SE02",0,700,0,1200,null,false);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	CreateSEEX("SEL11","se戦闘_衝撃_エネルギー鬩ぎ合い01L");
	MusicStart("SEL11",0,700,0,1000,null,true);

	CreateColorEXadd("絵演色剣砲煌", 8990, "FFFFFF");
	DrawTransition("絵演色剣砲煌", 1, 0, 600, 100, null, "cg/data/circle_10_00_0.png", true);
	FlashQuick("処理剣砲煌","@絵演色剣砲煌");

	CreateSE("SE21","se戦闘_衝撃_爆発小01");
	CreateSE("SE22","se戦闘_衝撃_爆発小01");
	CreateSE("SE23","se戦闘_衝撃_爆発小01");
	MusicStart("SE21",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 9000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 300, null, false);
	Wait(100);
	MusicStart("SE22",0,700,-200,1000,null,false);
	Wait(200);
	MusicStart("SE23",0,700,400,1000,null,false);

	$ダメージＬ=700;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現ノイズラストＨＰ);


{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000820c10">
"Using 4 turns&, 5 turns&, 6 turns&.&.&. 7 turns!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	$ダメージＬ=500;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現ノイズラストＨＰ);

	CreateSE("SE21","se擬音_精神_ひび01");
	MusicStart("SE21",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 9000, "FFFFFF");
	Wait(30);
	Rotate("絵縁", 0, @0, @0, 0, null,false);
	Rotate("絵演ノイズバリア*", 0, @0, @0, 0, null,false);
	Rotate("絵縁", 60000, @0, @0, 7200, null,false);
	Rotate("絵演ノイズバリア*", 60000, @0, @0, 7200, null,false);
	FadeDelete("絵色白", 300, null, false);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000830c10">
"Our defense wall is taking 56%&, 68%&.&.&. it keeps taking
 damage!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000840a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 9990, "BLACK");

//同時に蒼葉にも中～大ダメージ。
//体力削られていく。蒼葉苦しい。

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	Request("稲妻", Stop);
	Request("光*", Stop);
	Shake_LoopDelete();
	FlashQuickDelete(0,0);
	Delete("処理*");
	Delete("稲妻*");
	Delete("蓮攻撃");
	Delete("光*");
	Delete("EF*");

	PrintGO("上背景", 9999);
	Wait(16);
	RMDControlOutL(0);

	CreateColorSP("絵黒幕", 9990, "BLACK");

	CreateCamera("Ｃ", 1200, 310, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵演蓮剣砲", 0, 0, 0, "cg/ev/l/ev950蓮の剣砲構えa_人物蓮_l.jpg");
	Shake_LoopB("@Ｃ/絵演蓮剣砲","処理無限振動");
	CreateTextureSP("Ｃ/絵演蓮剣砲効果風圧", 0, 0, 0, "cg/ev/l/ev950蓮の剣砲構えa_効果風圧_l.png");
	SetBlur("Ｃ/絵演蓮剣砲効果風圧", true, 2, 100, 30, false);
	Zoom("Ｃ/絵演蓮剣砲効果風圧", 0, 2000, 2000, null, true);
	SetVertex("Ｃ/絵演蓮剣砲効果風圧", 987, 887);

	RotetoLoopOGM03("光プロセス2","Ｃ/絵演蓮剣砲効果風圧",34000,-3600);
	Shake("Ｃ/絵演蓮剣砲効果風圧", 10000000, 3, 3, 3, 3, 900, null, false);

	CreateColorEXadd("絵演色剣砲煌", 1990, "FFFFFF");
	DrawTransition("絵演色剣砲煌", 1, 0, 700, 100, null, "cg/data/circle_11_00_0.png", true);
	FlashQuick("処理剣砲煌","@絵演色剣砲煌");

	Delete("上背景");
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_02_0", true);

	Wait(300);

	$ダメージＲ=100;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(3000,$現蒼葉ＨＰ);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000850a01">
"Grgh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm25/7000860a06">
"Aoba&, danger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	$ダメージＲ=120;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

//あきゅん「※：蒼葉の痛みとしてノイズと比較するために赤、吐血系のエフェクトにしてます」
	CreateSE("SE21","se戦闘_剣撃_ヒット04");
	MusicStart("SE21",0,1200,0,800,null,false);
	CreateColorSP("絵色白", 9000, "990000");
	Wait(30);
	FadeDelete("絵色白", 300, null, false);

{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000870a01">
"&.&.&.&.&.!"

{	Fw("fwノイズ_通常_pinch");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000880a03">
"&.&.&.Hey&, doesn't that hurt!? Stop!"

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000890a01">
"&.&.&.I wont&.&.&. Never&, I'm not going to stop&.&.&.!"

{	Fw("fwノイズ_通常_shock");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000891a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/7000892a01">
"Ugaaahhhh&.&.&.!!"
*/

	CreateVOICE("蒼葉","dm25/7000892a01");
	MusicStart("蒼葉",0,1500,0,1000,null,false);
	WaitKey(1000);

	FwPro("fwノイズ_通常_angry3",2500,"fwノイズ_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000893a03">
"&.&.&.&.&.Shit!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	RMDControlOutR(0);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	RotetoLoopOGM03Stop();
	Shake_LoopDelete();
	FlashQuickDelete(0,0);
	Delete("Ｃ");
	Delete("絵演*");
	Delete("光*");

	CreateTextureSP("絵演ノイズ", 5110, -620, -140, "cg/ev/l/ev920ノイズ突進a_l.jpg");
	Shake_Loop("@絵演ノイズ","処理無限振動");

	CreateStencil("絵縁", 0, 600, 70, 128, "cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png", false);
	SetAlias("絵縁","絵縁");
	CreateTextureEXover("絵縁/絵演模様", 5110, Center, Middle, "cg/bg/bg201012_0_ライムパブリックフィールド.jpg");
	//CreateTextureEXadd("絵縁/ノイズバリア光", 5120, 600,　70, "cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png");
	CreateColorEXadd("絵縁/ノイズバリア光", 5120, "FFFFFF");

	Zoom("絵縁/ノイズバリア光", 0, 8000, 8000, null, true);
	Zoom("絵縁", 0, 8000, 8000, null, true);
	Fade("絵縁/絵演模様", 0, 500, null, true);
	Fade("絵縁/ノイズバリア光", 0, 500, null, true);
	Rotate("絵縁", 60000, @0, @0, 7200, null,false);
	Rotate("絵演ノイズバリア*", 60000, @0, @0, 7200, null,false);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	CreateColorEXadd("絵演色剣砲煌", 8990, "FFFFFF");
	DrawTransition("絵演色剣砲煌", 1, 0, 600, 100, null, "cg/data/circle_10_00_0.png", true);
	FlashQuick("処理剣砲煌","@絵演色剣砲煌");

	$ダメージＬ=0;
	$現ノイズラストＨＰ=$現ノイズラストＨＰ-$ダメージＬ;
	RMDControlInL(0,$現ノイズラストＨＰ);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000894a03">
"I'm not into watching you get hurt; I'm not some
 fucking sadist!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("蒼葉", 150, 0, null);

//ノイズ、防御を解く。
//あきゅん「※：全ての音を防御解除の音に」
	SetVolumeEX("SE*", 500, 0, null);
	SetVolumeEX("@dm*", 500, 0, null);

	WaitKey(800);

	CreateSE("SE01","se物体_コイル_ターゲット展開");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1500,0,500,null,false);
	Fade("絵縁/ノイズバリア光", 200, 1000, null, true);
	Delete("絵縁/絵演模様");
	Request("処理無限振動", Stop);
	Delete("処理無限振動");
	Shake("絵演ノイズ", 0, 0, 0, 0, 0, 500, null, false);
	FlashQuickDelete(300,0);
	Zoom("絵縁", 200, @0, 20000, null, true);
	Zoom("絵縁", 200, 0, 0, null, true);
	Delete("絵縁");

	WaitKey(1000);

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm25/7000895c10">
"Cancelling defense!? Really!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵演色剣砲煌", 3000, 1000, null, false);

	Wait(500);

	CreateColorEXadd("絵白転", 20000, "FFFFFF");
	Fade("絵白転", 4000, 1000, Axl3, false);

	Wait(3250);

//あきゅん「※：途中で体力見えなくなるのは演出」
	$現ノイズラストＨＰ=0;
	RMDControlInL(2000,$現ノイズラストＨＰ);
	RMDControlOutL(0);
	RMDControlOutR(0);

	Wait(2000);

//あきゅん「※：少しおかしい感じがずる……、気になるなら対応します」
	CreateVOICE("ノイズ","dm25/7000896a03");
	$SETime = RemainTime("ノイズ");
	MusicStart("ノイズ",0,1500,0,1000,null,false);
	WaitKey($SETime);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/7000896a03">
"&.&.&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

//蓮の電撃砲、ノイズにぶち当たる。どーん。

	ClearFadeAll(3000, true);
	Wait(2000);

//※次ファイル["dm2580.nss"]

}

/*
//あきゅん「※：なんか同じ画面天丼しちゃったのでボツ」
//※「誉」セット。蓮の両腕からぐぐっと刃が出てくる

	CreateColorEX("絵色黒", 5000, "000000");

	Move("絵専二", 800, -600, @0, AxlAuto, false);
	Fade("絵色黒", 400, 1000, null, true);

	Delete("絵専*");
	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	SetBlur("Ｃ", true, 3, 500, 200, false);

	CreateProcessEX("プロセス", "Proc_dm0200_vs_02Act");
	Request("プロセス", Start);

	CreateTextureSP("Ｃ/絵専蓮背景", 0, -1400, -1280, "cg/ev/l/ev950蓮バトル汎用突進a_背景_l.jpg");
	Move("Ｃ/絵専蓮背景", 600, -1300, @0, Dxl2, false);
	Shake("Ｃ/絵専蓮背景", 600000, -1, 1, 0, 0, 1000, null, false);

	CreateMovieEX("絵演動画", 2100, Center, Middle, true, true, "dx/mv0003集中線04_黒&.ngs");
	Rotate("絵演動画", 0, @0, @0, -11, null,true);
	DrawTransition("絵演動画", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	Zoom("絵演動画", 0, 3000, 3000, null, true);
	Fade("絵演動画", 0, 500, null, true);

	Move("Ｃ/絵専蓮背景", 120000, -40, -1460, null, false);
	Fade("絵色黒", 300, 0, null, true);

	CreateTextureSP("Ｃ/絵専蓮突進", 500, 250, -500, "cg/ev/ev950蓮バトル汎用突進a_人物蓮.png");
	CreateTextureSP("Ｃ/絵専蓮突進影", 500, 250, -500, "cg/ev/x/ev950蓮バトル汎用突進a_人物蓮_xb.png");
	Fade("Ｃ/絵専蓮突進影", 0, 500, null, true);
	Request("Ｃ/絵専蓮突進", Smoothing);
	Zoom("Ｃ/絵専蓮突進*", 0, 300, 300, null, true);

	BezierMove("Ｃ/絵専蓮突進*", 600, (@0,@0){190,-380}{150,-230}{90,-230}(0,-250), DxlAuto, false);
	Wait(500);
	Fade("Ｃ/絵専蓮突進影", 500, 0, null, false);
*/

/*
//あきゅん「※：テンポ悪かったのでボツ」
//※蒼葉の攻撃。「誉」セット。蓮の両腕からぐぐっと刃が出てくる
	CreateTxtinEffectS(4000,"蓮","誉");
	EffectTxtinS(700,"蓮","誉");

	CreateTextureEX("絵蓮突進背景", 3010, -180, -370, "cg/ev/ev950蓮バトル汎用突進a_背景.jpg");
	Move("絵演背景", 600, -310, @0, Dxl1, false);
	Move("絵蓮突進背景", 600, -80, @0, Dxl1, false);
	Fade("絵蓮突進背景", 250, 1000, null, true);

	CreateWindowEX("絵窓", 0, 0, 1212, 1026, true);
	CreateTextureSP("絵窓/絵演蓮", 3110, 0, 0, "cg/ev/ev950蓮バトル汎用突進a_人物蓮.png");
	Request("絵窓/絵演蓮", Smoothing);
	CreateTextureSPadd("絵窓/絵演蓮前紫電", 3120, 0, 0, "cg/ev/ev950蓮バトル汎用突進a_効果紫電左.png");
	Request("絵窓/絵演蓮前紫電", Smoothing);
	CreateTextureSPadd("絵窓/絵演蓮奥紫電", 3100, 0, 0, "cg/ev/ev950蓮バトル汎用突進a_効果紫電右.png");
	Request("絵窓/絵演蓮奥紫電", Smoothing);

	CreateColorEX("絵黒幕", 10000, "BLACK");

	Zoom("絵窓/絵演蓮*", 0, 800, 800, null, true);

	Move("絵窓", 0, 600, -600, null, true);
	Zoom("絵窓", 0, 0, 0, null, true);

	SetBlur("絵窓/絵演蓮前紫電", true, 3, 500, 120, true);
	SetBlur("絵窓/絵演蓮奥紫電", true, 3, 500, 120, true);

	CreateSE("SE01","se戦闘_動作_跳躍低01");

	Zoom("絵窓", 1200, 1800, 1800, Axl2, false);
	BezierMove("絵窓", 1200, (@0,@0){450,-200}{390,-120}(220,-360), Axl2, false);

	Wait(700);
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(490);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵演*");
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201023_0_ライムノイズ03.jpg");

	Delete("絵窓");
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);
*/