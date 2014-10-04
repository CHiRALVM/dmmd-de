//<continuation number="10">
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


scene dm1440scr.nss_MAIN
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


	//▼現状復帰
	Request("@SE00", UnLock);


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1450scr.nss";

}


scene dm1440scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	if($PreGameName=="dm1430.nss")
	{
	Request("@SE00", UnLock);
	}else{
	CreateSE("SE00","se擬音_効果_力蒼葉01");
	MusicStart("SE00",0,700,0,1000,null,false);
	}

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白上", 6000, "FFFFFF");
	//CreateColorSP("絵色白", 10, "FFFFFF");

	//CreateStencil("マスク",0,Center,172,128,"cg/st/l/st紅雀_バーサク暴露_normal_l.png",false);
	//CreateStencil("マスク",0,Center,-80,128,"cg/st/l/st紅雀_バーサク暴露_normal_l.png",false);
	//SetAlias("マスク","マスク");
	//SetVertex("マスク", 520, 192);
	//Request("マスク", Smoothing);
	//Zoom("マスク", 0, 1500, 1500, null, true);

	CreateTextureSP("マスク", 4000, Center, Middle, "cg/ef/ef紅雀の型.png");

	//CreateColorSP("絵色黒", 4900, "000000");
	CreateColorSP("絵色黒下地", 10, "000000");

	CreateSE("SEL01","se物体_映写機_回転03");
	CreateSE("SEL02","se物体_映写機_回転02L");

	CreateTextureSPmul("絵背景", 3990, Center, Middle, "cg/data/circle_02_00_1.png");
	CreateMovieEXover("絵演動画効果", 3980, Center, Middle, true, true, "dx/mvストロボ.ngs");
	Fade("絵演動画効果", 0, 300, null, true);
	Zoom("絵演動画効果", 0, 3200, 2400, null, true);

	CreateTextureEX("絵演一", 3000, Center, Middle, "cg/ev/ev137紅雀無双b.jpg");
	SetTone("絵演一", Monochrome);
	CreateTextureEX("絵演二", 3000, Center, Middle, "cg/ev/ev129紅雀、顔の刺青を見せる.jpg");
	SetTone("絵演二", Monochrome);
	CreateTextureEX("絵演三", 3000, Center, Middle, "cg/ev/ev124紅雀強姦未遂.jpg");
	SetTone("絵演三", Monochrome);
	CreateTextureEX("絵演四", 3000, Center, Middle, "cg/ev/ev117紅雀、蒼葉をおんぶ.jpg");
	SetTone("絵演四", Monochrome);
	CreateTextureEX("絵演五", 3000, Center, Middle, "cg/ev/ev025煙草を吸う紅雀a.jpg");
	SetTone("絵演五", Monochrome);
	CreateTextureEX("絵演六", 3000, Center, Middle, "cg/ev/ev006紅雀登場a.jpg");
	SetTone("絵演六", Monochrome);
	CreateTextureEX("絵演七", 3000, Center, Middle, "cg/ev/ev142幼少紅雀と刺青.jpg");
	SetTone("絵演七", Monochrome);
	CreateTextureEX("絵演八", 3000, Center, Middle, "cg/ev/ev120幼少時の紅雀と蒼葉.jpg");
	SetTone("絵演八", Monochrome);
	Zoom("絵演*", 0, 0, 0, null, true);

	CreateStencil("絵枠蒼葉縁",0,Center,InBottom,128,"cg/fu/fu蒼葉_通常_normal.png",false);
	SetAlias("絵枠蒼葉縁","絵枠蒼葉縁");
	CreateStencil("絵枠竜峰縁",0,Center,InBottom,128,"cg/fu/fu竜峰_通常_normal.png",false);
	SetAlias("絵枠竜峰縁","絵枠竜峰縁");
	Move("@絵枠*", 0, @0, @60, null, true);
	Zoom("@絵枠*", 0, 2000, 2000, null, true);

	CreateSE("LPSE01","se擬音_効果_ノイズ01L");
	MusicStartSet("LPSE01",700,0,500,null,false);
	CreateTextureEX("絵枠蒼葉縁/砂", 3110, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEX("絵枠竜峰縁/砂", 3110, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵枠蒼葉縁/砂", 0, 1200, 1200, null, true);
	Zoom("絵枠竜峰縁/砂", 0, 1200, 1200, null, true);

	MusicStart("SEL01",2000,400,0,600,null,true);
	MusicStart("SEL02",2000,400,0,500,null,true);

	Wait(1000);

	Delete("上背景");
	FadeDelete("絵色白上", 2000, null, true);

//※画面がぐにゃっと歪んで過去へ飛ばされるような演出
//※紅雀の過去をばばばっと走馬灯のように回想（背景で？）
//※このあたりの過去回想です↓

//=======================================================
//　光が消えると、頭の中で映像が流れ始めた。
//　それはコマ送りの無声映画のようにどんどん移り変わっていく。

//　紅雀が本州に戻っていた時の記憶だろう。

//　大きな屋敷と、お袋さんに手を引かれてる幼い紅雀。
//　組長らしきオッサン。隣に立つ少し若い感じの竜峰。

//　蝋燭の火が揺れる和室の布団に寝そべり、竜峰に刺青を彫られている紅雀。
//　その表情はひどく歪み、爪が畳を引っ掻いている。
//　相当の痛みを我慢してるように見える。

//　そのあと――場面が飛んだ。

//　たくさんの人間が倒れてる中、剣を持った紅雀がひとりで佇んでいる。
//=======================================================

	$LProc_dm1440scr_02ActWT=1000;
	CreateProcessEX("プロセス", "LProc_dm1440scr_02Act");
	Request("プロセス", Start);

	LProc_dm1440scr_01("@マスク");

	CreateSE("LMSE01","se戦闘_動作_跳躍低01");
	MusicStartSet("LMSE01",700,0,450,null,false);
	LMacr_dm1440scr_01("@絵演一","8");//５
	LMacr_dm1440scr_01("@絵演二","3");//３
	LMacr_dm1440scr_01("@絵演三","7");//７
	LMacr_dm1440scr_01("@絵演四","1");//１
	LMacr_dm1440scr_01("@絵演五","9");//９
	LMacr_dm1440scr_01("@絵演六","4");//４
	LMacr_dm1440scr_01("@絵演七","6");//６
	LMacr_dm1440scr_01("@絵演八","5");//５

	Request("Proc_dm1440scr_01", Stop);
	Zoom("@マスク", 1000, 7500, 7500, Axl2, false);

	$LProc_dm1440scr_02ActWT=10;
	Zoom("@絵枠*", 5000, 5000, 5000, null, false);
	SetFrequency("@LPSE01", 5000, 2000, AxlAuto);

	CreateSoundAkk("紅雀", "voice/dm14/4000010a02");
//	CreateVOICESE("紅雀", "voice/dm14/4000010a02");
	$SETime = RemainTime("紅雀");
	SoundEffect("紅雀","CAVE");
	MusicStart("紅雀",0,2000,0,1000,null,false);

	WaitKey($SETime);

	SetVolumeEX("紅雀", 300, 0, null);

	Wait(2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/4000010a02">
"Ahhhhhhhhhhhhhhhhhhhhhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

//※画面ホワイトアウト
//※紅雀の妄想世界へ突入
//※背景は白のまま？

	ClearFadeAll(0, true);
	Wait(1000);

//※次ファイル["dm1450scr.nss"]

}
