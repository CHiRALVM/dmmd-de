//<continuation number="240">
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


scene dm2020_vs.nss_MAIN
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

	//▼演出処理を初期化
	Request("@EFWIN/SE01", UnLock);
	EffectTxtinDelete();
	TiesMovieDelete();
	RMDControlDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2030.nss";

}


scene dm2020_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


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

	if($nextrhymescene=="dm2020_vs.nss"){
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

$TEXTBOX_TYPE="ライム";

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

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000010a01">
"This feeling I'm getting&.&.&. Is this Rhyme?"

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000020a03">
"Sure is&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000030a01">
"Not again&.&.&.! Besides&, now it's both of us at the
 same time&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwノイズ_通常_normal4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000040a03">
"This is a Drive-By&. And Usui's not here so there's
 no one enforcing the rules&. It's a free-for-all here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateProcessEX("プロセス", "Procdm2020_vs_01Act");
	Request("プロセス", Start);

{	Fw("fw蒼葉_通常_worry2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000050a01">
"And&.&.&. doesn't this field make you feel sick at all?
 It feels a little off&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteFw();

	Request("プロセス", Stop);
	if($Procdm2020_vs_01Act==true){
	}else{
	CreatePlainSP("絵板写", 5000);
	Delete("@絵色黒");
	Delete("@絵背景");
	FadeDelete("絵板写", 300, null, true);
	}

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000060a03">
"It's twisted from doing too much Rhyme&. There've been lots of crazy Rhyme addicts lately&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000070a01">
"&.&.&.&.&."

{	Fw("fw蓮_通常_normal");}
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/2000080a06">
"Aoba&, it's coming&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm011",0,450,true);//電脳バトル歪

//※敵の姿が見える。ヘロヘロした中毒患者とオールメイトはコウモリ？素材が増えるのマズいならなんでもいいです。
	CreateSE("SE01","se動物_声_コウモリ鳴声01");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	CreateTextureEX("絵専", 1110, -550, -500, "cg/ev/l/ev900ライム対戦蒼葉VS中毒者_アップ_l.jpg");
	Move("絵専", 2000, @0, -140, DxlAuto, false);
	Fade("絵専", 2000, 1000, null, true);

	DeleteAllSt(0,true);

	CreateSE("SE01","se戦闘_衝撃_氷壊01");
	CreateTextureEX("絵演中毒攻撃", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	SetBlur("絵演中毒攻撃", true, 3, 500, 60, false);
	CreateTextureEXadd("絵演中毒攻撃光", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	Zoom("絵演中毒攻撃*", 0, 2000, 2000, null, true);

	SetVolumeEX("SE*", 150, 0, null);

	EffectTxtinA("感染者","氷");
	EffectTxtinB("感染者","氷");

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreatePlainSP("絵板写", 2000);
	Delete("絵専");
	SetBlur("絵板写", true, 3, 500, 60, false);
	Zoom("絵板写", 200, 5000, 5000, Axl3, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演中毒攻撃*", 0, 1000, null, true);
	Zoom("絵演中毒攻撃*", 200, 1100, 1100, Dxl3, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
	Fade("絵演中毒攻撃光", 200, 0, null, true);
	Delete("絵板写");

//演出メモ：「氷」か「毒」（千代子）
//※敵の攻撃。「炎」の字セットで火の玉みたいなのが数弾飛んでくる。
//※セットしてる字は全体的に適当です。

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000090a01">
"Uh&, Ren&, defense&, please!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTxtinEffectS(3000,"蓮","御");

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
	Zoom("絵演中毒攻撃", 600, 5000, 5000, Dxl3, false);
	Move("絵演中毒攻撃", 600, 1024, @0, Axl3, false);

//※蓮にシールド張らせて防御する。火の玉は弾かれて他の方向へ飛んでいく。

	BezierMove("絵演蓮背景", 600, (@0,@0){-340,-190}{-250,-180}(-230,-140), Dxl3, false);
	Fade("絵演蓮背景", 600, 1000, null, true);

	Wait(100);

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

	Move("絵演蓮突進", 200, -610, -840, Dxl3, false);
	Zoom("絵演蓮突進", 200, 500, 500, Dxl3, true);
	MoveFFP1("@絵演蓮突進",900);

	EffectTxtinS(700,"蓮","御");

//※蒼葉の攻撃。「御」セット。蓮の腕から長い刃物が飛び出し、切り込みに行かせる。敵オールメイトが薄い盾で防御。ガリガリッてなって蓮の刃物が切り裂く。

	CreateColorEX("絵色黒", 3000, "000000");

	MoveFFP1stop();
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

//　相手のオールメイトにビリッと電流が走ってダメージを負わせる。

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000100a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000110a01">
"Hey&, why're you just standing there?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000120a03">
"You attacked first&, so you do it&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000130a01">
"Whaa!? What the hell!?"

{	Fw("fw蓮_通常_normal");}
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/2000140a06">
"Aoba&, instructions&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000150a01">
"Well then&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_衝撃_氷壊01");
	CreateTextureEX("絵演中毒攻撃", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	SetBlur("絵演中毒攻撃", true, 3, 500, 60, false);
	CreateTextureEXadd("絵演中毒攻撃光", 1120, Center, Middle, "cg/ef/efx05自然_氷の鎌01.jpg");
	Zoom("絵演中毒攻撃*", 0, 2000, 2000, null, true);
	Rotate("絵演中毒攻撃*", 0, @0, 180, @0, null,true);

	CreateTextureEX("絵演蓮防御", 2110, -540, -560, "cg/ev/l/ev950蓮バトル汎用防御a_l.jpg");
	Request("絵演蓮防御", Smoothing);
	Rotate("絵演蓮防御", 0, @0, @0, -110, null,true);

	Fw("fw蓮_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/2000160a06">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蓮が何かに気付いて横に飛びのく。が、一歩遅い。
//　さっき弾いた火の玉数発が戻ってきて蓮を襲う。
//　火の玉の１弾が蓮の足に当たる。

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演中毒攻撃*", 0, 1000, null, true);
	Zoom("絵演中毒攻撃*", 200, 1100, 1100, Dxl3, false);
	Fade("絵板写", 100, 0, null, false);
	Wait(200);
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
	Delete("絵演中毒*");
	Delete("絵演蓮防御");
	BGPlainShake(50,500,0,20,0,0,1000,Dxl3,false);

	FadeDelete("絵色白", 100, null, true);

//　蓮、ビリビリって全身が痺れたみたいになる。
//　ダメージのわりに蓮の衝撃の受け方が大きい感じ。（バグ感染を表現できるといいなー）

{	Fw("fw蒼葉_通常_shout2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000170a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常_pain");
	Position($C_次, $x1, $y1);
	CreateStencil("絵枠",0,$x1, $y1,128,"cg/st/st蓮_通常_normal.png",false);
	SetAlias("絵枠","絵枠");
	CreateTextureEXover("絵枠/絵背景", 800, -380, -450, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	DrawTransition("@絵枠/絵背景", 0, 0, 0, 0, null, "cg/data/mosaic_01_00_0.png", true);

	CreateSE("PSE01","se擬音_効果_火花01");
	MusicStartSet("PSE01",700,0,2000,null,false);

	CreateProcessEX("プロセス", "Procdm2020_vs_02Act");
	Request("プロセス", Start);

	FadeSt("C",200,true);
	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeStPro("C", 2000, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/2000180a06">
"&.&.&.I'm okay&."

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
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000190a01">
"It was my fault&, sorry&."

{	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//※人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/2000200a06">
"Don't mind it&. At any rate&, give your instructions&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/2000210a01">
"&.&.&.Right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FwPro("fwノイズ_通常_normal",3000,"fwノイズ_通常_normal3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000220a03">
"&.&.&.I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//ウサギ顔カットイン定義
	CreateTextureEX("絵覆縁", 4990, Center, Middle, "cg/mask/ciライン_01_00z.png");
	CreateMaskEX("絵覆", 0, Center, Middle, "cg/mask/ciライン_01_00.png", false);
	SetVertex("絵覆縁", center, 212);
	SetVertex("絵覆", center, 212);
	CreateColorSP("絵覆/絵色白", 5000, "FFFFFF");
	//CreateTextureSP("絵覆/絵割ウサギ背景", 4100, Center, Middle, "cg/ef/efbg効果02.jpg");
	CreateTextureSP("絵覆/絵割ウサギ顔", 4100, 330, -40, "cg/ev/l/ev960ウサギモドキ戦闘構え_l.jpg");
	Zoom("絵覆/絵割ウサギ顔", 0, 2000, 2000, null, true);
	Request("絵覆/絵割ウサギ顔", Smoothing);

	Zoom("絵覆", 0, 5000, 0, null, true);
	Zoom("絵覆縁", 0, 5000, 0, null, true);
//ウサギ顔カットイン定義ここまで↑↑↑

//※ノイズ、キューブ状のウサギモドキをチェーンからいくつかはずして空中に放る。
//　キューブがうウサギモドキに変身。ノイズ、「破」セット。

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateTextureEX("絵演砂", 1110, -512, -288, "cg/ev/m/ev920ノイズ突進a_m.jpg");
	Rotate("絵演砂", 0, @0, 180, @0, null,true);
	SetBlur("絵演砂", true, 3, 500, 60, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演砂", 300, -110, -60, Dxl2, false);
	Fade("絵演砂", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/2000230a03">
"Go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete

//ウサギ顔カットイン開始
	Move("絵覆/絵割ウサギ顔", 600, -150, @0, Dxl2, false);
	Zoom("絵覆", 400, 1000, 800, Dxl3, false);
	Zoom("絵覆縁", 400, 1000, 800, Dxl3, false);

	Wait(200);

	Move("絵覆/絵割ウサギ顔", 10000, -170, @0, null, false);

	Fade("絵覆縁", 200, 1000, null, false);
	Fade("絵覆/絵色白", 200, 0, null, true);

	Wait(50);

	CreateVOICE("ウサギモドキ","dm20/2000240c09");//「リョーカイ！」
	$SETime = RemainTime("ウサギモドキ")-100;
	MusicStart("ウサギモドキ",0,1800,0,1000,null,false);

	WaitKey($SETime);

//ウサギ顔カットイン閉じ
	Fade("絵覆縁", 300, 0, null, false);
	Fade("絵覆/絵色白", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("絵覆縁", 200, 1000, 0, AxlDxl, false);
	Zoom("絵覆", 200, 1000, 0, AxlDxl, true);
	Delete("絵覆*");

	SetVolumeEX("ウサギモドキ", 150, 0, null);


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ウサギモドキリーダー】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm20/2000240c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

//※ウサギモドキたちが弾丸のように飛び出し、一斉にライム中毒者のオールメイトへ襲い掛かる。
//　オールメイト一発ＫＯ。ゲーム終了、解除。
	CreateTextureEX("絵演兎突進", 2110, 512, 520, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Rotate("絵演兎突進", 0, @0, 180, @0, null,true);
	Zoom("絵演兎突進", 0, 2000, 2000, null, true);
	//SetBlur("絵演兎突進", true, 3, 300, 30, false);
	CreateSE("SE01a","se戦闘_動作_跳躍低01");
	MusicStart("SE01a",0,700,0,1800,null,false);
	FadeFFR2("@絵演兎突進", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01b","se戦闘_動作_跳躍低01");
	MusicStart("SE01b",0,700,0,1800,null,false);
	Move("絵演兎突進", 0, -1404, -330, null, true);
	FadeFFR2("@絵演兎突進", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01c","se戦闘_動作_跳躍低01");
	MusicStart("SE01c",0,700,0,1800,null,false);
	Move("絵演兎突進", 0, -1964, -240, null, true);
	FadeFFR2("@絵演兎突進", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01d","se戦闘_動作_跳躍低01");
	MusicStart("SE01d",0,700,0,1800,null,false);
	Move("絵演兎突進", 0, 318, -264, null, true);
	FadeFFR2("@絵演兎突進", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01e","se戦闘_動作_跳躍低01");
	MusicStart("SE01e",0,700,0,1800,null,false);
	Zoom("絵演兎突進", 0, 600, 600, null, true);
	Move("絵演兎突進", 0, -512, -238, null, true);
	FadeFFR2("@絵演兎突進", 0,1000, 50, 0, 0, 60,null, true);

	CreateSE("SE01f","se戦闘_動作_跳躍低01");
	MusicStart("SE01f",0,700,0,1800,null,false);
	Zoom("絵演兎突進", 200, 5000, 5000, Axl3, false);

	Wait(180);

	SetVolumeEX("@dm*", 300, 0, null);
	CreateSE("SE02","se戦闘_打撃_ヒット低04");
	MusicStart("SE02",0,1000,0,1200,null,false);
	CreateSE("SE03","se戦闘_衝撃_破損01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 600, 1000, null, true);
	Wait(300);

	RMDControlInL(500,0);
	RMDControlOutL(1000);

	Wait(3000);

//※現実世界へ戻ってくる。

	ClearFadeAll(2000, true);
	Wait(2000);

//※次ファイル["dm2030.nss"]

}

/*
while(1){

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");

	WaitKey();

//あきゅん「演出：サンプルスクリプト、文字効果登場演出【平穏】」
//文字効果登場演出【平穏】

	CreateTextureEXsub("絵演効果雫上", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01a.png");
	SetVertex("絵演効果雫上", 456, 274);
	CreateTextureEXsub("絵演効果雫左上", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01b.png");
	SetVertex("絵演効果雫左上", 339, 415);
	CreateTextureEXsub("絵演効果雫右上", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01c.png");
	SetVertex("絵演効果雫右上", 661, 363);
	CreateTextureEXsub("絵演効果雫左下", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01d.png");
	SetVertex("絵演効果雫左下", 635, 591);
	CreateTextureEXsub("絵演効果雫右下", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01e.png");
	SetVertex("絵演効果雫右下", 336, 678);
	CreateTextureEXsub("絵演効果雫下", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01f.png");
	SetVertex("絵演効果雫下", 587, 718);
	//Zoom("絵演効果雫*", 0, 1500, 1500, null, true);

	Fade("絵演効果雫下", 0, 1000, null, true);
	FadeFFR2("絵演効果雫下", 0,1000, 200, 0, 0, 30,Dxl1, false);
	Wait(500);
	Fade("絵演効果雫左上", 0, 1000, null, true);
	FadeFFR("絵演効果雫左上", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait(80);
	Fade("絵演効果雫右下", 0, 1000, null, true);
	FadeFFR3("絵演効果雫右下", 0,1000, 200, 0, 0, 25,Dxl1, false);
	Wait(80);
	Fade("絵演効果雫左下", 0, 1000, null, true);
	FadeFFR4("絵演効果雫左下", 0,1000, 200, 0, 0, 30,Dxl1, false);
	Wait(80);
	Fade("絵演効果雫上", 0, 1000, null, true);
	FadeFFR2("絵演効果雫上", 0,1000, 200, 0, 0, 35,Dxl1, false);
	Wait(80);
	Fade("絵演効果雫右上", 0, 1000, null, true);
	FadeFFR("絵演効果雫右上", 0,1000, 200, 0, 0, 40,Dxl1, false);

	WaitKey(50);

	//WaitKey();

	CreateTextureEXsub("絵演効果外輪", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷_外輪01.png");
	Zoom("絵演効果外輪", 0, 500, 500, null, true);

	$Ef02TimeBase=500;
	$Ef02TimeZoom=$Ef02TimeBase*2.5;
	$Ef02TimeDrawEF=$Ef02TimeBase*4;
	$Ef02TimeDrawTR=$Ef02TimeBase*3;
	Zoom("絵演効果外輪", $Ef02TimeZoom, 1000, 1000, DxlAuto, false);
	DrawEffect("絵演効果外輪", $Ef02TimeDrawEF, "HighWave", 150, 0, Dxl2);
	Fade("絵演効果外輪", $Ef02TimeBase, 1000, null, false);
	DrawTransition("絵演効果外輪", $Ef02TimeDrawTR, 0, 1000, 50, null, "cg/data/zzex_turn_01_00_1 .png", true);

	$EF02TimeActionWait=$Ef02TimeDrawEF-$Ef02TimeDrawTR-200;
	Wait($EF02TimeActionWait);

	FadeFFR2("絵ベース", 0,1000, 200, 0, 0, 20,DxlAuto, false);

	//WaitKey();

//文字効果発動演出

	CreateTextureSPadd("絵演効果一", 1120, Center, Middle, "cg/ef/efv属性文字_感染者_氷b_s.png");//縮小素材版
	Request("絵演効果一", Smoothing);
	//Zoom("絵演効果一", 0, 1150, 1150, null, true);//通常サイズ
	Zoom("絵演効果一", 0, 2300, 2300, null, true);//縮小素材版

	CreateTextureSPmul("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷a.png");
	Request("絵演効果二", AddRender);
	SetBlur("絵演効果二", false);
	//Zoom("絵演効果二", 0, 2000, 2000, null, true);//通常サイズ

	Delete("絵演効果雫左上");
	Delete("絵演効果雫右上");
	Delete("絵演効果雫左下");
	Delete("絵演効果雫右下");
	Delete("絵演効果雫上");
	Delete("絵演効果雫下");
	Delete("絵演効果外輪");

	CreateTextureEX("絵演効果二微睡", 1100, Center, Middle, "cg/ef/efv属性文字_感染者_氷a_s.png");//縮小素材版
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
