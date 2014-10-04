//<continuation number="350">
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


scene dm0725_vs.nss_MAIN
{

$TEXTBOX_TYPE="ライム";

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
	#ev900ライム対戦蒼葉VS東江1=true;
	#ev900ライム対戦蒼葉VS東江1_アップ=true;

	//▼演出処理の初期化
	EffectTxtinDelete();
	TiesMovieDelete();
	RMDControlDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0730.nss";

}


scene dm0725_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
	RMDControlRDefault($蒼葉ＨＰ);//5000
	RMDControlLDefault($東江影ＨＰ);//3500
	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	$現東江影ＨＰ=$東江影ＨＰ;
//―――――――――――――――――――――――――――――――――――――――


	TextBoxDelete(0);

	PrintBG("上背景", 30000);

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

$TEXTBOX_TYPE="";

================================================
//※蓮ルートの場合、ここで東江が登場する分岐点
================================================

	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	CreateSE("SE02","se戦闘_衝撃_防壁発動01");

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	CreatePlainEX("絵板写", 100);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("@絵色白", 300, 1000, Axl3, true);
	Wait(100);
	Fade("@絵板写", 0, 1000, null, true);
	DrawEffect("@絵板写", 5000, "Ripple", 500, 100, null);
	Delete("@OnBG*");
	Fade("@絵色白", 3000, 0, null, true);
	Delete("@絵色白");

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
At that moment&, I felt like I was sinking into the ground&.

No way&, this again&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateMaskEX("絵覆", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("絵覆", center, top);
	CreateColorEX("絵覆/絵色黒", 5000, "000000");

	Zoom("絵板写", 2000, 1000, 2000, Axl3, false);
	Move("絵板写", 20000, @0, 1152, null, false);

	Fade("絵覆/絵色黒", 500, 1000, null, false);
	Zoom("絵覆", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("SE01","se擬音_ライム_超音波01L");
	MusicStart("SE01",2000,700,0,500,null,true);



	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "000000");
	FadeDelete("上背景", 0, null, true);

	TiesMovieSet("転送ライムa",2000);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");

//暗転中に戦闘系素材を定義しておきます
	CreateTxtinEffect("蓮",4000);
	//CreateTxtinEffect("東江",4000);
	//RMScaningSet();
	//RMScaningCSet("東江影");
//暗転中に戦闘系素材を定義しておきます：ここまで↑↑↑

	TiesMovieStart();

	DrawDelete("絵色黒", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(1000);
	WaitKey(1000);

	TiesMovieNEXT();

	Wait(1000);
	WaitKey(1000);

	SetVolumeEX("@SE*", 2000, 0, null);
	SetVolumeEX("@EFWIN/SE*", 2000, 0, null);

	CreateSE("SE02","se擬音_精神_導入01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 1000, 1000, AxlAuto, true);

	Wait(1000);
	WaitKey(2000);

	TiesMovieDelete();

$TEXTBOX_TYPE="ライム";

//※ライムフィールド展開
	PrintGO("上背景", 20000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	CreateMovieSP("絵演動画", 20, Center, Middle, true, false, "dx/mvフィールドパブリック.ngs");
	CreateTextureSP("絵演背景", 10, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	CreateSurfaceEX("絵効果サフ", 1000,1000,"@絵演動画");
	SetSurface("絵演背景","絵効果サフ");
	Fade("絵効果サフ", 0, 1000, null, true);

	Zoom("絵効果サフ", 0, 5000, 5000, null, true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("上背景");
	FadeDelete("絵色白", 3000, null, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【アナウンス】
<voice name="アナウンス" class="アナウンス" src="voice/dm07/2500020e10">
"Now configuring the Rhyme Field&. Now configuring the Rhyme Field&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateSoundAkk("アナウンス", "voice/dm07/2500020e10");//「ライムフィールド、セッティング中。
	SoundEffect("アナウンス","CONCERTHALL");
	MusicStart("アナウンス",0,2000,0,1000,null,true);

	Zoom("絵効果サフ", 5000, 1000, 1000, DxlAuto, false);
	Wait(2000);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500030a01">
"&.&.&.I knew it&. This is Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 10000);
	Zoom("絵効果サフ", 0, 1000, 1000, null, false);
	FadeDelete("絵板写", 300, null, true);

	SoundPlay("@dm010",0,450,true);//電脳バトル
	SetVolumeEX("アナウンス", 3000, 0, null);

//※人型の蓮が現れる
	CoilStartSet();
	St("C",1740, @0,@0,"st蓮_通常_normal");
	Position($C_次, $x1, $y1);
	RhymeDrawSet("蓮外套人型",1750,$x1,$y1,"cg/st/st蓮_通常_normal.png");
	CreateSE("SE01a","se擬音_ライム_顕現01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("蓮外套人型");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/2500040a06">
"Yeah&. And we've been pulled in by force again&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500050a01">
"Another Drive-By&.&.&.! But my opponent isn't Noiz again&,
 right? Who in the world&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【アナウンス】
<voice name="アナウンス" class="アナウンス" src="voice/dm07/2500060e10">
"Rhyme field set-up complete&. Now deploying field&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/
	//CreateVOICE("アナウンス","dm07/2500060e10");
	CreateSoundAkk("アナウンス", "voice/dm07/2500060e10");//「ライムフィールド、セットアップ～」
	SoundEffect("アナウンス","CONCERTHALL");
	MusicStart("アナウンス",0,2000,0,1000,null,false);
	$SETime = RemainTime("アナウンス");
	Wait($SETime);
	SetVolumeEX("アナウンス", 300, 0, null);

	CreateSE("SE01","se擬音_ライム_アラート01");
	MusicStart("SE01",0,700,0,500,null,false);

	SetVolumeEX("@dm*", 1250, 0, null);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 1000, 1000, Axl1, true);

	Wait(2000);

	CreateTextureSP("絵演背景", 10, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");

	Delete("蓮外套*");
	Delete("@絵効果サフ");
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 1000, null, true);

	CreateProcessEX("プロセス", "LProc_dm0725_vs_01Act");
	Request("プロセス", Start);

//※東江（ホログラム）が現れる。オールメイトはUnknown。
	CoilStartSet();
	CreateSE("SE01a","se擬音_ライム_顕現01");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500070a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演対戦", 1100, -680, -440, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_l.jpg");
	Fade("絵演対戦", 1000, 1000, null, true);

	Move("絵演対戦", 4000, -30, -150, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500080a01">
"Hey&, is that&.&.&.!?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500090a01">
"Isn't that Toue?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Move("絵演対戦", 0, -30, -150, DxlAuto, false);
	FadeDelete("絵板写", 200, null, true);

	SoundPlay("@dm019",0,450,true);//東江のテーマ洗脳

	//St("C",740, @0,@0,"st東江_通常_normal");
	//FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500100b02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※東江はニヤリ顔で

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500110b02">
"&.&.&.I've found you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500120a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演卯水影攻撃", 1120, Center, -140, "cg/ev/evf04卯水影_戦闘構え.jpg");
	CreateTextureEXadd("絵演卯水影攻撃光", 1120, Center, -140, "cg/ev/evf04卯水影_戦闘構え.jpg");
	Zoom("絵演卯水影攻撃*", 0, 7000, 7000, null, true);
	SetBlur("絵演卯水影攻撃", true, 3, 500, 60, false);

	CreateTextureEXover("絵演卯水影闘気", 1120, Center, -140, "cg/ev/evf04卯水影_戦闘構え_卯水.png");
	Zoom("絵演卯水影闘気", 1, 1200, 1200, null, false);
	DrawEffect("絵演卯水影闘気", 0, "SuperWave", 20, 20, null);

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("絵板写", 2000);
	Delete("絵演対戦");
	SetBlur("絵板写", true, 3, 500, 80, false);
	Zoom("絵板写", 200, 2000, 2000, Axl3, false);
	Wait(194);
	Fade("絵演卯水影攻撃*", 0, 1000, null, true);
	Zoom("絵演卯水影攻撃*", 200, 1100, 1100, Dxl3, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
	Fade("絵演卯水影闘気", 200, 1000, null, false);
	Fade("絵演卯水影攻撃光", 200, 0, null, true);
	Delete("絵板写");
	Delete("絵演卯水影攻撃光");

//※東江、「？」をセット。
//※何をセットしたか見えない。

//擬似紋章効果
	CreateSE("MSE01","se戦闘_ライム_紋章発動01");
	CreateSE("MSE02","se戦闘_ライム_紋章浸透01");

	CreatePlainEXadd("絵演偽紋章効果光", 4010);
	CreateEffectSP("絵演偽紋章効果", 4000, Center, Middle, 1024, 576, "Plain");
	Fade("絵演偽紋章効果", 0, 0, null, true);

	MusicStart("MSE01",0,700,0,1050,null,false);
	Zoom("絵演偽紋章効果*", 0, 2000, 2000, null, true);
	SetBlur("絵演偽紋章効果", true, 3, 200, 80, false);
	Fade("絵演偽紋章効果", 0, 500, null, true);
	Fade("絵演偽紋章効果光", 0, 1000, null, true);
	Fade("絵演偽紋章効果光", 900, 0, null, false);
	Zoom("絵演偽紋章効果光", 10000, 2200, 2200, Dxl3, false);
	Wait(100);
	MusicStart("MSE02",0,700,0,1000,null,false);
	Zoom("絵演偽紋章効果", 10000, 1000, 1000, Dxl3, false);
	Fade("絵演偽紋章効果", 600, 0, null, true);

//　卯水の周りを白い玉がいくつか浮かび、それぞれ蒼葉の方へ高速で飛んでくる。

	CreateTextureEXsub("絵背景", 1910, Center, Middle, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE011","se擬音_効果_力東江02");
	CreateSE("SE012","se擬音_効果_力東江02");
	CreateSE("SE013","se擬音_効果_力東江02");
	CreateSE("SE014","se擬音_効果_力東江02");

	MusicStart("SE011",0,700,0,1000,null,false);
	Move("絵背景", 0, -240, -150, null, true);
	Zoom("絵背景", 200, 3000, 3000, null, false);
	FadeFFR("絵背景", 0,1000, 100, 0, 0, 60,null, true);
	Fade("絵背景", 0, 0, null, true);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	MusicStart("SE012",0,700,0,1000,null,false);
	Move("絵背景", 0, 220, 140, null, true);
	Zoom("絵背景", 200, 5000, 5000, null, false);
	FadeFFR("絵背景", 0,1000, 100, 0, 0, 60,null, true);
	Fade("絵背景", 0, 0, null, true);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	MusicStart("SE013",0,700,0,1000,null,false);
	Move("絵背景", 0, 210, -140, null, true);
	Zoom("絵背景", 200, 5000, 5000, null, false);
	FadeFFR("絵背景", 0,1000, 100, 0, 0, 60,null, true);
	Fade("絵背景", 0, 0, null, true);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	MusicStart("SE014",0,700,0,1000,null,false);
	Move("絵背景", 0, -180, 150, null, true);
	Zoom("絵背景", 200, 5000, 5000, null, false);
	FadeFFR("絵背景", 0,1000, 100, 0, 0, 60,null, true);
	Fade("絵背景", 0, 0, null, true);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,500,null,false);
	CreateSE("SE03","se戦闘_動作_跳躍滞空01");
	CreateMovieEX("絵演動画", 3990, Center, Middle, true, true, "dx/mv0003集中線04_白.ngs");
	DrawTransition("絵演動画", 1, 0, 500, 100, null, "cg/data/slide_05_01_0.png", true);
	Zoom("絵演動画", 0, 3000, 2000, null, true);

	CreateTextureEX("絵演対戦", 2110, -380, -460, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_l.jpg");

	MusicStart("SE03",2000,500,0,200,null,false);
	Fade("絵演動画", 300, 500, null, false);
	Move("絵演対戦", 340, -740, @0, Axl3, false);
	Fade("絵演対戦", 300, 1000, null, true);
	Move("絵演対戦", 10000, -760, @0, null, false);
	Delete("絵演卯水*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500130a01">
"Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵蓮防御前", 2210, -330, -330, "cg/ev/m/ev950蓮バトル汎用防御a_m.jpg");
	CreateTextureEX("絵蓮防御", 2210, -330, -330, "cg/ev/m/ev950蓮バトル汎用防御a_効果_m.jpg");
	CreateTextureEXadd("絵蓮防御光", 2210, -330, -330, "cg/ev/m/ev950蓮バトル汎用防御a_効果_m.jpg");
	SetVertex("絵蓮防御光", 1090, 620);
	Zoom("絵蓮防御光", 0, 1200, 1200, null, true);
	SetBlur("絵蓮防御光", true, 3, 300, 100, false);

	CreateColorEX("絵蓮色防御白", 5000, "FFFFFF");
	CreateSE("SE01","se戦闘_衝撃_防壁発動01");

//※蓮にシールド張らせて防御する。
//　ばちーんとはじかれる。
	CreateSE("SE00","se戦闘_動作_跳躍低01");
	MusicStart("SE00",0,700,0,2000,null,false);
	Move("絵演対戦", 300, -1120, @0, Dxl3, false);
	Move("絵蓮防御*", 340, -700, @0, Dxl3, false);
	Fade("絵蓮防御前", 300, 1000, Dxl3, true);
	Move("絵蓮防御*", 10000, -720, @0, null, false);

	Wait(200);

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

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

	Wait(1300);

	SetVolumeEX("SE*", 150, 0, null);
	CreateSE("SE11","se戦闘_衝撃_防壁決壊01");
	MusicStart("SE11",0,700,0,1000,null,false);
	CreateSE("SE12","se物体_ガラス_割れる04");
	MusicStart("SE12",0,1000,0,2000,null,false);
	Fade("絵蓮色防御白", 0, 1000, null, true);
	Delete("絵演動画");
	Fade("絵蓮防御前", 0, 1000, null, true);

	Wait(500);

	Fade("絵蓮防御", 400, 0, null, false);
	Fade("絵蓮色防御白", 100, 0, null, true);

	Wait(100);

//ヒットエフェクト準備
	CreateSE("SE21","se戦闘_打撃_ヒット低04");
	CreateSE("SE22","se戦闘_打撃_ヒット低04");
	CreateSE("SE23","se戦闘_打撃_ヒット低04");

	CreateTextureEXsub("絵演効果火花", 4900, Center, Middle, "cg/ef/efx02火花電光02.jpg");
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

	MusicStart("SE21",0,600,0,1200,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("絵蓮防御前", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御前", 0, $x1, $y1, null, true);//元の位置に戻す
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

	MusicStart("SE22",0,600,0,1200,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	Wait(30);

	FadeFFR3("絵蓮防御前", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御前", 0, $x1, $y1, null, true);//元の位置に戻す
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

	MusicStart("SE23",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	CreateVOICE("蓮","dm07/2500140a06");
	MusicStart("蓮",0,1500,0,1000,null,false);

	Wait(30);

	FadeFFR3("絵蓮防御前", 0,1000, 100, 0, 0, 60,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵蓮防御前", 0, $x1, $y1, null, true);//元の位置に戻す
//ランダムヒットエフェクト04＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
//ホワイトアウト
	Fade("絵蓮色防御白", 200, 1000, Axl3, true);
	Wait(500);

	$ダメージＲ=850;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);
	RMDControlOutR(3000);

	Delete("絵蓮防御*");
	Delete("絵演効果*");
	Delete("覆*");
	Delete("絵演対戦*");

	FadeDelete("絵蓮色防御白", 1000, null, true);

	CreateSE("SE01","se人体_足音_一歩02");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/2500140a06">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500150a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("蓮*", 150, 0, null);
	CreateTextureEX("絵演東江", 1110, -380, -130, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_アップ_l.jpg");
	Move("絵演東江", 30000, -580, @0, DxlAuto, false);
	Fade("絵演東江", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500160b02">
"Heh&.&.&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500170a01">
"Shit&.&.&.!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500180a01">
"How are her attacks so brutal!? &.&.&.They're&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵蓮顕現", 2110, -512, -333, "cg/ev/m/ev950蓮、武器発現_m.jpg");
	SetBlur("絵蓮顕現", true, 3, 500, 80, false);

//蓮剣撃前定義
	CreateTextureEX("絵蓮斬撃", 2210, -520, -580, "cg/ev/m/ev950蓮バトル汎用攻撃a_人物蓮_m.png");
	CreateTextureEX("絵蓮斬撃背景", 2200, Center, Middle, "cg/ev/m/ev950蓮バトル汎用攻撃a_背景_m.jpg");
	CreateTextureEXadd("絵蓮斬撃剣閃", 2220, Center, Middle, "cg/ev/ev950蓮バトル汎用攻撃a_効果剣閃.png");
//蓮剣撃前定義：ここまで↑↑↑

//※蒼葉の攻撃。「御」セット。蓮の腕から長い刃物が飛び出し、切り込みに行かせる。

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,500,null,false);
	SetFrequency("SE01", 500, 1000, null);
	Fade("絵蓮顕現", 300, 1000, null, false);
	BezierMove("絵蓮顕現", 800, (-512,-333){0,0}{-150,0}(-200,-100), Dxl1, true);

	CreatePlainEXadd("絵板写", 5000);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	SetBlur("絵板写", true, 3, 300, 100, false);

	EffectTxtinA("蓮","御");

	CreateSE("SE02","se戦闘_衝撃_防壁発動01");
	MusicStart("SE02",0,700,0,500,null,false);
	Fade("絵板写", 0, 300, null, true);
	FadeDelete("絵板写", 2000, null, false);
	Zoom("絵板写", 10000, 1600, 1600, null, false);
	EffectTxtinB("蓮","御");

	$ダメージＬ=0;
	$現東江影ＨＰ=$現東江影ＨＰ-$ダメージＬ;
	RMDControlInL(0,$現東江影ＨＰ);

	CreateSE("SE03","se戦闘_蓮_剣撃01");
	Move("絵蓮斬撃", 250, -870, @0, Dxl3, false);
	Fade("絵蓮斬撃", 200, 1000, null, false);
	Fade("絵蓮斬撃背景", 200, 1000, null, false);
	Wait(150);
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("絵蓮斬撃", 10000, -890, @0, null, false);
	Fade("絵蓮斬撃剣閃", 0, 1000, null, true);
	DrawTransition("絵蓮斬撃剣閃", 50, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);
	Wait(100);
	FadeDelete("絵蓮斬撃剣閃", 300, null, false);

	Wait(100);

//　卯水が曼荼羅のシールドで防御。完全に弾かれる。蓮が戻ってくる。
	CreateSE("SE11","se戦闘_衝撃_防壁発動01");
	MusicStart("SE11",0,700,0,1000,null,false);
	CreateTextureSP("絵演卯水影", 3110, Center, -520, "cg/ev/l/evf04卯水影_戦闘構え_l.jpg");
	CreatePlainEXadd("絵板写", 5000);
	Zoom("絵板写", 0, 1400, 1400, null, true);
	SetBlur("絵板写", true, 3, 200, 80, false);

	$ダメージＬ=20;
	$現東江影ＨＰ=$現東江影ＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現東江影ＨＰ);

	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 10000, 1600, 1600, null, false);
	Wait(100);
	Fade("絵板写", 1000, 0, null, true);

	RMDControlOutL(0);

	Wait(500);

	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201012_0_ライムパブリックフィールド.jpg");
	Delete("絵蓮*");
	Delete("絵演東江");
	FadeDelete("絵演卯水影", 500, null, true);
	Delete("絵板写");

{	Fw("fw蒼葉_通常_hard2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500190a01">
"We aren't even making a scratch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500200a01">
"Besides&, why is Toue&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);
	CreateTextureSP("絵演東江", 110, Center, -30, "cg/ev/ev900ライム対戦蒼葉VS東江1_アップ.jpg");
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500210b02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※東江、「？」をセット。

	CreateTextureEX("絵演卯水影攻撃", 1120, Center, -140, "cg/ev/evf04卯水影_戦闘構え.jpg");
	CreateTextureEXadd("絵演卯水影攻撃光", 1120, Center, -140, "cg/ev/evf04卯水影_戦闘構え.jpg");
	Zoom("絵演卯水影攻撃*", 0, 7000, 7000, null, true);
	SetBlur("絵演卯水影攻撃", true, 3, 500, 60, false);

	CreateTextureEXover("絵演卯水影闘気", 1120, Center, -140, "cg/ev/evf04卯水影_戦闘構え_卯水.png");
	Zoom("絵演卯水影闘気", 1, 1200, 1200, null, false);
	DrawEffect("絵演卯水影闘気", 0, "SuperWave", 20, 20, null);

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("絵板写", 2000);
	Delete("絵演対戦");
	SetBlur("絵板写", true, 3, 500, 80, false);
	Zoom("絵板写", 200, 2000, 2000, Axl3, false);
	Wait(194);
	Fade("絵演卯水影攻撃*", 0, 1000, null, true);
	Zoom("絵演卯水影攻撃*", 200, 1100, 1100, Dxl3, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
	Fade("絵演卯水影闘気", 200, 1000, null, false);
	Fade("絵演卯水影攻撃光", 200, 0, null, true);
	Delete("絵板写");
	Delete("絵演卯水影攻撃光");

//擬似紋章効果
	CreateSE("MSE01","se戦闘_ライム_紋章発動01");
	CreateSE("MSE02","se戦闘_ライム_紋章浸透01");

	CreatePlainEXadd("絵演偽紋章効果光", 4010);
	CreateEffectSP("絵演偽紋章効果", 4000, Center, Middle, 1024, 576, "Plain");
	Fade("絵演偽紋章効果", 0, 0, null, true);

	MusicStart("MSE01",0,700,0,1050,null,false);
	Zoom("絵演偽紋章効果*", 0, 2000, 2000, null, true);
	SetBlur("絵演偽紋章効果", true, 3, 200, 80, false);
	Fade("絵演偽紋章効果", 0, 500, null, true);
	Fade("絵演偽紋章効果光", 0, 1000, null, true);
	Fade("絵演偽紋章効果光", 900, 0, null, false);
	Zoom("絵演偽紋章効果光", 10000, 2200, 2200, Dxl3, false);
	Wait(100);
	MusicStart("MSE02",0,700,0,1000,null,false);
	Zoom("絵演偽紋章効果", 10000, 1000, 1000, Dxl3, false);
	Fade("絵演偽紋章効果", 600, 0, null, true);

	Wait(500);

//定義：卯水攻撃の波動
	CreateMaskEX("絵覆", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("絵覆/絵演卯水最大攻撃曼荼羅覇気", 1200, Center, Middle, "cg/ef/efクリアの歌声_l.jpg");
	Zoom("絵覆/絵演卯水最大攻撃曼荼羅覇気", 0, 1000, 1067, null, true);
	CreateColorEX("絵色黒", 5000, "000000");

//　卯水の周りに白い玉がいくつか浮かび上がり、それぞれ小さな刃に変化する。
//　それが勢いをつけて回転、蒼葉の方へ向かってくる。

//卯水覇気が上がる
	CreateSE("SE23a","se戦闘_ライム_紋章発動01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se擬音_効果_力東江02");
	MusicStart("SE23b",0,700,0,800,null,false);
	Rotate("絵覆/絵演卯水最大攻撃曼荼羅覇気", 50000, @0, @0, 1080, null,false);
	Fade("絵覆/絵演卯水最大攻撃曼荼羅覇気", 500, 500, null, false);
	DrawTransition("絵覆/絵演卯水最大攻撃曼荼羅覇気", 6000, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("絵覆", 3000, 10000, 10000, null, false);

	Wait(2000);

//卯水攻撃発射
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 250, 0, 1000, 100, Axl1, "cg/data/circle_03_00_0.png", true);
	Delete("絵覆");
	Delete("絵演*");

	Wait(2000);

//蓮防御定義
	CreateTextureEX("絵蓮防御", 5110, -1470, -450, "cg/ev/l/ev950蓮バトル汎用防御a_l.jpg");
	SetVertex("絵蓮防御", 1970, 680);
	Zoom("絵蓮防御", 0, 5000, 5000, null, true);
	CreateColorEX("絵色黒", 9900, "000000");
//蓮防御定義：ここまで↑↑↑

	CreateSE("SE51","se擬音_効果_おどろおどろ01");
	MusicStart("SE51",2000,1000,0,500,null,true);
	Zoom("絵蓮防御", 10000, 1000, 1000, null, false);
	Fade("絵蓮防御", 1000, 1000, null, true);

	CreateVOICE("蓮","dm07/2500220a06");
	MusicStart("蓮",0,1500,0,1000,null,false);

	Wait(2000);

	SetFrequency("SE51", 500, 2000, null);
	Zoom("絵蓮防御", 200, 800, 800, Dxl3, false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);
	SetVolumeEX("SE*", 150, 0, null);

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(0,$現蒼葉ＨＰ);

	Wait(1000);

	CreateSE("SE42a","se擬音_精神_割れる01");
	MusicStart("SE42a",0,1000,0,1000,null,false);
	CreateSE("SE42b","se戦闘_ライム_紋章発動準備東江03");
	MusicStart("SE42b",0,500,0,800,null,false);

	$ダメージＲ=3400;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(500,$現蒼葉ＨＰ);

	PrintGO("上背景", 5000);
	CreateColorSP("絵色白", 5000, "FFFFFF");

	CreateColorEX("絵色黒", 5000, "000000");
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201012_0_ライムパブリックフィールド.jpg");
	Zoom("絵背景", 0, 1200, 1200, null, true);
	SetBlur("絵背景", true, 3, 500, 200, false);
	CreateSE("SE01a","se人体_足音_一歩02");
	CreateSE("SE01b","se人体_衝撃_転倒01");

	FadeDelete("上背景", 100, null, true);
	Zoom("絵背景", 10000, 1000, 1000, null, false);
	FadeDelete("絵色白", 1000, null, true);
	Wait(500);

	SetVolumeEX("蓮", 150, 0, null);

	Zoom("絵背景", 300, 10000, 10000, Dxl3, false);
	Rotate("絵背景", 300, @0, @0, 3600, Axl3,false);
	Wait(250);
	SetVolumeEX("@dm*", 300, 0, null);
	MusicStart("SE01a",0,700,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);

	RMDControlOutR(0);

/*
	Fw("fw蓮_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/2500220a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//※蓮、シールドを張るが防ぎきれない。
//　吹っ飛ばされる。結構なダメージ。
//　蒼葉もダメージ受ける。

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500230a01">
"Whoaa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「※：蒼葉と共に激痛状態のはずだからこんな余裕は無いはず」

/*
{	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/2500240a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	PrintGO("上背景", 9900);
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	FadeDelete("上背景", 2000, null, true);

	Wait(500);

	CreatePlainSP("絵板写", 5000);

//ホログラム東江再現
	CreateTextureEXadd("絵立絵東江映像", 740, Center, InBottom, "cg/st/st東江_通常_normal.png");
	Move("絵立絵東江映像", 0, @0, @30, null, true);
	Position("@絵立絵東江映像", $x1, $y1);
	CreateStencil("絵枠",0,$x1,$y1,128,"cg/st/st東江_通常_normal.png",false);
	SetAlias("絵枠","絵枠");
	CreateColorEX("絵枠/絵演色東絵下地", 730, "3399CC");
	CreateTextureEXadd("絵枠/絵演東江光線", 760, Center, 576, "cg/ev/x/ev550マスク02.png");
	Zoom("絵枠/絵演東江光線", 0, @0, 500, null, true);
	CreateTextureEXover("絵枠/絵演東江画像荒", 759, Center, Middle, "cg/data/noize_01_00_0.png");
	MoveFFP1("@絵枠/絵演東江画像荒",300);

	Fade("絵枠/絵演東江画像荒", 0, 100, null, true);
	Fade("絵枠/絵演色東絵下地", 0, 800, null, false);
	Fade("絵立絵東江映像", 0, 500, null, true);
	CreateProcessEX("プロセス", "LProc_dm0725_vs_02Act");
	Request("プロセス", Start);

	FadeDelete("絵板写", 200, null, true);

	SoundPlay("@dm021",0,450,true);//東江と対決

	//St("C",740, @0,@0,"st東江_通常_normal");
	//FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500250b02">
"No matter what you do&, it still won't be enough&."

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500260a01">
"Guh&.&.&.&."

{	DeleteFw();}
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500270b02">
"Right now&, you can't even attempt to stop me&. It's
 impossible&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500280a01">
"&.&.&.&.&."

{	DeleteFw();}
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500290b02">
"If you want to stop me&.&.&. Be my guest and destroy
 yourself&."

//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500300b02">
"By your own actions&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500310a01">
"!"

{	DeleteFw();}
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500320b02">
"I eagerly anticipate the outcome&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【東江】
<voice name="東江" class="東江" src="voice/dm07/2500330b02">
"Heh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※東江がざざっとブレて、突然消える
	CreateSE("SE00","se物体_コイル_ゲージ溜まる01L");
	MusicStart("SE00",0,700,0,1000,null,true);
	CreateColorEXadd("絵枠/絵演色東絵上色", 800, "FFFFFF");
	Fade("絵枠/絵演色東絵上色", 300, 1000, null, false);
	DrawTransition("絵枠/絵演色東絵上色", 500, 0, 1000, 100, null, "cg/data/blind_02_00a_1", true);
	SetVolumeEX("SE*", 150, 0, null);
	Wait(200);
	Delete("絵立絵東江映像");
	Delete("絵枠/絵演色東絵下地");
	Delete("絵枠/絵演東江光線");
	Delete("絵枠/絵演東江画像荒");
	MoveFFP1stop();

	CreateSE("SE01","se物体_コイル_ターゲット閉");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵枠", 200, 0, 5000, AxlDxl, true);
	Delete("絵枠");

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【アナウンス】
<voice name="アナウンス" class="アナウンス" src="voice/dm07/2500340e10">
"According to the administrator's rules&, we will now be forcibly shutting down Rhyme&. Now logging off players&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/
	CreateSoundAkk("アナウンス", "voice/dm07/2500340e10");//「権限者の指示により、ライム～」
	SoundEffect("アナウンス","CONCERTHALL");
	MusicStart("アナウンス",1000,1500,0,1000,null,true);

	Wait(500);

{	Fw("fw蒼葉_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2500350a01">
"&.&.&.Toue!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ライム世界から現実世界へ
	SetVolumeEX("アナウンス", 300, 0, null);

	CreateSE("SE00","se擬音_ライム_アラート01");
	MusicStart("SE00",0,700,0,500,null,false);

	Wait(1000);

	SetVolumeEX("@dm*", 1250, 0, null);

	CreateSE("SE01","se擬音_精神_導入01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 2000, 1000, Axl1, true);

	Wait(2000);

	CreateSE("SE02","se擬音_ライム_超音波01L");
	MusicStart("SE02",2000,700,0,500,null,true);
	TiesMovieSet("転送ライムb",2000);
	TiesMovieStart();

	Fade("絵色白", 1000, 0, null, true);

	Wait(1000);
	WaitKey(1000);

	TiesMovieNEXT();

	Wait(1000);
	WaitKey(1000);

	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE03","se擬音_精神_導入01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Fade("絵色白", 1000, 1000, Axl3, true);
	TiesMovieDelete();

	Wait(500);

//===========================================
//ここまで
//===========================================


//※次ファイル["dm0730.nss"]

	ClearFadeAll(3000, true);
	Wait(2000);
	WaitPlay("SE03", null);

}

/*
while(1){

//あきゅん「演出：サンプルスクリプト、文字効果登場演出【無形】」
//文字効果登場演出【無形】

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/m/ev010卯水a_m.jpg");

	CreateTextureEXmul("絵演効果左上", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01a.png");
	CreateTextureEXmul("絵演効果右下", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01d.png");
	CreateTextureEXmul("絵演効果右上", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01b.png");
	CreateTextureEXmul("絵演効果左下", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01c.png");

	Move("絵演効果左上", 0, @180, @180, null, false);
	Move("絵演効果右下", 0, @-180, @-180, null, false);
	Move("絵演効果右上", 0, @-180, @180, null, false);
	Move("絵演効果左下", 0, @180, @-180, null, false);

	WaitKey();

	Fade("絵演効果左上", 200, 1000, DxlAuto, false);
	Move("絵演効果左上", 200, @-30, @-30, DxlAuto, false);
	Wait(75);
	Fade("絵演効果右下", 200, 1000, DxlAuto, false);
	Move("絵演効果右下", 200, @30, @30, DxlAuto, false);
	Wait(75);
	Fade("絵演効果右上", 200, 1000, DxlAuto, false);
	Move("絵演効果右上", 200, @30, @-30, DxlAuto, false);
	Wait(75);
	Fade("絵演効果左下", 200, 1000, DxlAuto, false);
	Move("絵演効果左下", 200, @-30, @30, DxlAuto, false);
	Wait(75);
	//Zoom("絵演効果*", 1000, 500, 500, null, true);

	//WaitKey();

	Wait(250);

	Move("絵演効果左上", 500, @-150, @-150, DxlAuto, false);
	Move("絵演効果右下", 500, @150, @150, DxlAuto, false);
	Move("絵演効果右上", 500, @150, @-150, DxlAuto, false);
	Move("絵演効果左下", 500, @-150, @150, DxlAuto, false);
	Rotate("絵演効果*", 500, @0, @0, 180, DxlAuto,true);
	Rotate("絵演効果*", 0, @0, @0, 0, DxlAuto,true);

	//Zoom("絵演効果*", 1000, 1000, 1000, DxlAuto, true);

	Wait(100);

	CreateTextureEXmul("絵演効果上", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01ea.png");
	CreateTextureEXmul("絵演効果右", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01eb.png");
	CreateTextureEXmul("絵演効果下", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01ec.png");
	CreateTextureEXmul("絵演効果左", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪01ed.png");
	Fade("絵演効果上", 0, 1000, null, false);
	Fade("絵演効果右", 0, 1000, null, false);
	Fade("絵演効果下", 0, 1000, null, false);
	Fade("絵演効果左", 0, 1000, null, false);
	DrawTransition("絵演効果上", 800, 0, 1000, 10, null, "cg/data/slide_01_00_0.png", false);
	DrawTransition("絵演効果右", 800, 0, 1000, 10, null, "cg/data/slide_02_00_0.png", false);
	DrawTransition("絵演効果下", 800, 0, 1000, 10, null, "cg/data/slide_01_00_1.png", false);
	DrawTransition("絵演効果左", 800, 0, 1000, 10, null, "cg/data/slide_02_00_1.png", true);


	//WaitKey();

	CreateTextureEXmul("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉_外輪02.png");
	Request("絵演効果二", Smoothing);
	Zoom("絵演効果二", 0, 2000, 2000, null, true);
	Rotate("絵演効果二", 0, @0, @0, 900, null,true);
	SetBlur("絵演効果二", true, 2, 500, 50, false);

	Zoom("絵演効果二", 300, 1000, 1000, null, false);
	Fade("絵演効果二", 300, 1000, null, false);
	Rotate("絵演効果二", 300, @0, @0, 0, null,true);

	WaitKey(50);

	//WaitKey();

	FadeFFR2("絵ベース", 0,1000, 200, 0, 0, 20,DxlAuto, false);

//文字効果発動演出

	CreateTextureSPadd("絵演効果一", 1120, Center, Middle, "cg/ef/efv属性文字_東江_焉b_s.png");//縮小素材版
	Request("絵演効果一", Smoothing);
	//Zoom("絵演効果一", 0, 1150, 1150, null, true);//通常サイズ
	Zoom("絵演効果一", 0, 2300, 2300, null, true);//縮小素材版

	CreateTextureSPmul("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉a.png");
	Request("絵演効果二", AddRender);
	SetBlur("絵演効果二", false);
	//Zoom("絵演効果二", 0, 2000, 2000, null, true);//通常サイズ

	Delete("絵演効果左上");
	Delete("絵演効果右上");
	Delete("絵演効果左下");
	Delete("絵演効果右下");
	Delete("絵演効果上");
	Delete("絵演効果下");
	Delete("絵演効果左");
	Delete("絵演効果右");

	CreateTextureEX("絵演効果二微睡", 1100, Center, Middle, "cg/ef/efv属性文字_東江_焉a_s.png");//縮小素材版
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


/*
//あきゅん「演出：サンプルスクリプト、卯水影の闘気」

	CreateTextureSP("絵演背景弐", 1011, Center, Middle, "cg/ev/evf04卯水影_戦闘構え_背景.jpg");
	//SetTone("絵演背景弐", NegaPosi);
	CreateTextureSP("絵演背景", 1010, Center, Middle, "cg/ev/evf04卯水影_戦闘構え_背景.jpg");
	//DrawEffect("絵演背景", 0, "LowWave", 50, 50, null);
	//Zoom("絵演背景", 0, 670, 670, null, true);
	CreateTextureSP("絵演人物", 1100, Center, Middle, "cg/ev/evf04卯水影_戦闘構え_卯水.png");
	CreateTextureSPover("絵演人物闘気", 1101, Center, Middle, "cg/ev/evf04卯水影_戦闘構え_卯水.png");
	DrawEffect("絵演人物闘気", 0, "SuperWave", 20, 20, null);
	Zoom("絵演人物", 0, 800, 800, null, true);
	CreateTextureSP("絵演効果後", 1090, Center, Middle, "cg/ev/evf04卯水影_戦闘構え_効果01.png");
	Rotate("絵演効果後", 0, @0, @0, @90, null,true);
	CreateTextureSPadd("絵演効果", 1190, Center, Middle, "cg/ev/evf04卯水影_戦闘構え_効果01.png");
	//Zoom("絵演効果", 0, 700, 700, null, true);

	WaitKey();

	LP0507_Meimetsu2();

while(1)
{
	$EFTime=20000;
	DrawTransition("絵演背景弐", $EFTime, 1000, 0, 200, null, "cg/data/circle_02_00_1.png", false);
	Fade("絵演背景弐", 10000, 0, null, false);
	Zoom("絵演背景弐", 10000, 2000, 2000, null, false);
	Rotate("絵演背景弐", $EFTime, @0, @0, @360, null,false);
	Rotate("絵演背景", $EFTime, @0, @0, @360, null,true);

	Fade("絵演背景弐", 0, 800, null, false);
	Zoom("絵演背景弐", 0, 1000, 1000, null, false);

}

function LP0507_Meimetsu2()
{
	CreateProcessEX("LP0507_01", "LP0507_MeimetsuAct2");
	Request("LP0507_01", Start);
}

function LP0507_MeimetsuAct2()
{
	begin:
	while(1){
	Fade("@絵演効果*", 0, 1000, null, true);
	//Wait(5);
	Fade("@絵演効果*", 10, 0, null, true);
	Wait(5);
	}
}
*/

/*
//ホログラム東江再現
	CreateTextureEXadd("絵立絵東江映像", 740, Center, InBottom, "cg/st/st東江_通常_normal.png");
	Move("絵立絵東江映像", 0, @0, @60, null, true);
	Position("@絵立絵東江映像", $x1, $y1);
	CreateStencil("絵枠",0,$x1,$y1,128,"cg/st/st東江_通常_normal.png",false);
	SetAlias("絵枠","絵枠");
	CreateColorEX("絵枠/絵演色東絵下地", 730, "3399CC");
	CreateTextureEXadd("絵枠/絵演東江光線", 760, Center, 576, "cg/ev/x/ev550マスク02.png");
	Zoom("絵枠/絵演東江光線", 0, @0, 500, null, true);
	CreateTextureEXover("絵枠/絵演東江画像荒", 759, Center, Middle, "cg/data/noize_01_00_0.png");
	MoveFFP1("@絵枠/絵演東江画像荒",300);

	Fade("絵枠/絵演東江画像荒", 0, 100, null, true);
	Fade("絵枠/絵演色東絵下地", 0, 800, null, false);
	Fade("絵立絵東江映像", 0, 500, null, true);
	CreateProcessEX("プロセス", "LProc_dm0725_vs_02Act");
	Request("プロセス", Start);
*/