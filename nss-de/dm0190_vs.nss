//<continuation number="590">
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


scene dm0190_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	CreateTxtinEffect("蓮",4000);
	CreateTxtinEffect("ノイズ",4000);
	RMScaningSet();
	RMScaningCSet("蒼葉");
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
	#bg201011_0_ライムパブリックフィールド=true;
	#bg201012_0_ライムパブリックフィールド=true;
	#bg201021_0_ライムノイズ01=true;
	#bg201022_0_ライムノイズ02=true;
	#ev900ライム対戦蒼葉VSウサギ頭=true;

	//▼２回目以降のムービーはかっとばせる
	#dm0190_vs_Movie=true;

	//コノタビハ文字全消し
	Delete0190moji();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0190sl.nss";
	}else {		$GameName = "dm0191_vs.nss";
	}

}


scene dm0190_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 15000, "FFFFFF");

	CreateMovieSP("絵演動画", 20, Center, Middle, true, false, "dx/mvフィールドパブリック.ngs");
	CreateTextureSP("絵演背景", 10, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	CreateSurfaceEX("絵効果サフ", 1000,1000,"@絵演動画");
	SetSurface("絵演背景","絵効果サフ");
	Fade("絵効果サフ", 0, 1000, null, true);

	Zoom("絵効果サフ", 0, 3000, 3000, null, true);
	Move("絵効果サフ", 0, @0, @-560, null, true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色白", 3000, null, true);

	Create0190moji();

	Wait(500);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000060a01">
"What is this place&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm010",0,450,true);//電脳バトル
	CreateProcessEX("プロセス", "Proc_dm0190_vs_01Act");
	Request("プロセス", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
It's&.&.&.

It's almost like I've been sucked into a game&.

The wire-frame floor emits light and continues on forever&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Request("プロセス", Stop);

	if($Proc_dm0190_vs_01Act==true){
	}else{
	CreatePlainSP("絵板写", 10000);
	Move("@絵効果サフ", 0, @0, 0, DxlAuto, true);
	Zoom("@絵効果サフ", 0, 1000, 1000, null, true);
	FadeDelete("絵板写", 500, null, true);
	}
	$Proc_dm0190_vs_01Act=false;
	Delete("プロセス");

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033a]
//【アナウンス】
<voice name="アナウンス" class="アナウンス" src="voice/dm01/9000070e10">
"Configuring Rhyme field settings&. Configuring Rhyme field settings&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	CreateSoundAkk("アナウンス", "voice/dm01/9000070e10");//「ライムフィールド、セッティング中。
	SoundEffect("アナウンス","CONCERTHALL");
	MusicStart("アナウンス",0,2000,0,1000,null,false);

	Wait(2000);

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000080a01">
"Rhyme&.&.&. That kind of Rhyme!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("アナウンス", 300, 0, null);

	CreatePlainSP("絵板写", 5000);

	Zoom("絵効果サフ", 0, 3000, 3000, null, true);
	Move("絵効果サフ", 0, @0, -560, null, true);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateTextureEXover("絵窓/絵演立絵", 2950, Center, -340, "cg/st/x/st蓮_通常_normal_m足元01.png");
	Position("@絵窓/絵演立絵", $x1, $y1);

	CreateStencil("絵窓/絵演覆朧",0,$x1,$y1,128,"cg/st/x/st蓮_通常_normal_m足元01.png",false);
	SetShade("絵窓/絵演覆朧", HEAVY);
	SetAlias("絵窓/絵演覆朧","絵窓/絵演覆朧");
	CreateColorEXadd("絵窓/絵演覆朧/絵色青", 2800, "00CCFF");

	CreateStencil("絵窓/絵演覆",0,$x1,$y1,128,"cg/st/x/st蓮_通常_normal_m足元01.png",false);
	SetAlias("絵窓/絵演覆","絵窓/絵演覆");
	CreateColorEXadd("絵窓/絵演覆/絵色白", 2810, "FFFFFF");

	Wait(6);
$SYSTEM_full_scene_update=true;
	Move("絵窓", 0, @0, 576, null, true);

	FadeDelete("絵板写", 300, null, true);

	Fade("絵窓/絵演覆朧/絵色青", 0, 900, null, true);
	Fade("絵窓/絵演覆/絵色白", 0, 900, null, true);

	CreateSE("SE01","se物体_コイル_ゲージ溜まる05L");
	MusicStart("SE01",0,700,0,500,null,true);

	Shake("絵窓", 2000, 10, 100, 0, 0, 1000, null, false);
	Fade("絵窓/絵演立絵", 2000, 1000, null, false);
	Move("絵窓", 2000, @0, 0, null, true);
$SYSTEM_full_scene_update=false;
	SetVolumeEX("SE01", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
As I continue to look around&, the space before me shines 
pale blue&.

The shape of a person begins to form&, starting from their 
feet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵窓");

	Zoom("絵効果サフ", 0, 1000, 1000, null, true);
	Move("絵効果サフ", 0, 0, 0, null, true);

	FadeDelete("絵板写", 300, null, true);

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
[text0037]
The sight of the person that forms in front of me almost 
causes me to fall backwards&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	St("C",1740, @0,@0,"bu蓮_通常_normal");
	FadeSt("C",0,true);
	Zoom("@絵効果サフ", 0, 1500, 1500, null, true);

	Delete("絵窓");
	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000090a01">
"Ren!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000100a06">
"Aoba&, are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000110a01">
"What&, what just happened? And why do you look like that?"

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000120a06">
"It seems that Allmates are reflected in their online mode
 here&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000130a01">
"Isn't online mode used mainly in Rhyme? I've only seen you in that form on the setting screen&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000140a01">
"And the announcement earlier said something about
 Rhyme&.&.&."

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000150a06">
"Looks like it&. Only&, our present location is the same as
 before coming here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【アナウンス】
<voice name="アナウンス" class="アナウンス" src="voice/dm01/9000160e10">
"Rhyme field set-up completed&. Developing field&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

	CreateSoundAkk("アナウンス", "voice/dm01/9000160e10");//「ライムフィールド、セッティング中。
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

	Delete("蓮外套*");
	Delete("@絵効果サフ");
	DeleteAllSt(0,true);

	CreateMovieSPvol("絵演動画", 4900, Center, Middle, false, false, "dx/mvフィールド変化ノイズ.ngs",750);
	//SetAlias("絵演動画","絵演動画");

	FadeDelete("絵色白", 300, null, true);
	MovieSkipPlay("@絵演動画","dm0190_vs_Movie");
/*

	if(#dm0190_vs_Movie==true){
	$SETime = RemainTime("絵演動画");
	WaitKey($SETime);
	Request("絵演動画", Stop);
	}else{
	WaitPlay("絵演動画", null);
	}
	#dm0190_vs_Movie=true;
*/
	OnBG(10,"bg201021_0_ライムノイズ01");
	Move("@OnBG*", 0, @0, -576, null, true);
	FadeBG(0,true);

	Request("絵演動画", Stop);
	FadeDelete("絵演動画", 500, null, true);

//あきゅん「※：蓮は黒蒼葉が出てくるまでは表情変えないようにしています」

	Fw("fw蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000170a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE01a","se戦闘_動作_跳躍低01");
	MusicStart("SE01a",0,700,0,1500,null,false);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000180a01">
"Gah!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
Ren pushes me away and I roll onto the floor while a 
fierce wind goes over my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000190a01">
"What was that&.&.&.!?"

{	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000200a06">
"Aoba&, this is a public Rhyme field&. It seems we were
 forcibly dragged into Rhyme&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000210a01">
"What!? Is that even&.&.&."

{	St("C",740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000220a06">
"Aoba&, something's coming&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateTextureEX("絵専", 1120, 807, 1222, "cg/ev/l/ev900ライム対戦蒼葉VSウサギ頭_アップ_l.jpg");
	Zoom("絵専", 0, 3000, 3000, null, true);
	Rotate("絵専", 0, @0, @0, -17, null,true);
	CreateTextureEXsub("絵演兎頭", 1200, 807, 1222, "cg/ev/ev900ライム対戦蒼葉VSウサギ頭_アップ.jpg");
	Zoom("絵演兎頭", 0, 6000, 6000, null, true);
	Rotate("絵演兎頭", 0, @0, @0, -17, null,true);

	CreateSE("SE01","se擬音_効果_ノイズ01L");
	MusicStart("SE01",0,700,0,2000,null,true);
	FadeFFR3("絵専", 0,1000, 150, 0, 0, 50,null, false);
	FadeFFR2("絵演兎頭", 0,1000, 150, 0, 0, 50,null, true);
	Delete("絵演兎頭");
	Fade("絵専", 0, 0, null, true);
	SetVolumeEX("SE01", 0, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
I follow Ren's line of sight and what I see shocks me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵専", 0, 1000, 1000, null, true);
	Rotate("絵専", 0, @0, @0, 0, null,true);
	Move("絵専", 0, -370, -170, null, true);
	Fade("絵専", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0067]
A rabbit's head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",740, @0,@0,"stウサギ頭_通常_normal");
	FadeSt("C",0,true);
	FadeDelete("絵専", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068]
&.&.&.A person wearing a rabbit head stands there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000230a01">
"Does this mean Rhyme started already&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「未組み込み：文字演出」
//入れました（千代子
	//読込、配置→頭に移動


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//※合成音声的な声変え
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000240a03">
//「……コノタビハ」
{Start0190moji01("「 ...This time」","voice/dm01/9000240a03");}<BR>

{Show0190moji01();}

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	Delete0190moji01();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//※合成音声的な声変え
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000250a03">
//「コノタビハ、オ越シイタダキ至極光栄」
{Start0190moji02("「 This time, it is such an honor.」","voice/dm01/9000250a03");}<BR>

{Show0190moji02();}

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete0190moji02();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//※合成音声的な声変え
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000260a03">
//「ソレデハ、楽シイげーむヲ始メヨウ」
{Start0190moji03("「 So let's have a fun game, shall we?」","voice/dm01/9000260a03");}<BR>

{Show0190moji03();}

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	Delete0190moji03();

//※ＳＥ：サイレン
	CreateSE("SE01","se擬音_ライム_アラート01");
	MusicStart("SE01",0,700,0,500,null,false);

//あきゅん「※：戦闘曲、なぁ……」
	SoundPlay("@dm008",0,450,true);//疾走

	CreateTextureEX("絵専三", 1130, 0, 0, "cg/ev/l/ev900ライム対戦蒼葉VSウサギ頭_l.jpg");
	Move("絵専三", 500, -720, -330, Dxl2, false);
	Fade("絵専三", 500, 1000, null, true);

{	DeleteFw();}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000270a06">
"Aoba&, it's coming&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000280a01">
"Coming!? What should I&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 4990, "000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreatePlainSP("絵板写", 5000);
	CreateColorSP("絵色黒", 4990, "000000");

	CreateTextureEX("絵演背景", 2020, Center, InBottom, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");
	Zoom("絵演背景", 0, 1500, 1500, null, true);
	Fade("絵演背景", 0, 1000, null, true);

//ウサギブロック変形素材定義↓ここから↓

//変形後のウサギ
	CreateTextureEX("絵演兎", 2750, Center, Middle, "cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png");
//ウサギのマスク
	Position("@絵演兎", $x1, $y1);
	CreateStencil("覆",0,$x1,$y1,128,"cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png",false);
	SetAlias("覆","覆");

//落下するブロック
	CreateTextureSP("絵演兎四角", 2755, Center, Middle, "cg/st/x/stAMウサギモドキ_通常_normal_xm.png");
	Request("絵演兎四角", Smoothing);
	Zoom("絵演兎四角", 0, 800, 800, null, true);
//落下するブロック発光体
	CreateTextureEXadd("覆/絵演兎四角白", 2760, Center, Middle, "cg/st/x/stAMウサギモドキ_通常_normal_xm白版.png");
	Request("覆/絵演兎四角白", Smoothing);
	Zoom("覆/絵演兎四角白", 0, 800, 800, null, true);

//変形時の煙
	CreateTextureEX("絵演兎左煙", 2760, 340, 200, "cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙のみ01.png");
	CreateTextureEX("絵演兎右煙", 2760, 600, 180, "cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙のみ02.png");

//ＳＥ地面にあたるブロックの
	CreateSE("SE01","se物体_グラス_弾く01");
	SoundEffect("SE01","SEWERPIPE");

//ＳＥ変形中の音
	CreateSEEX("SE02","se戦闘_メガ砲_チャージ01");

//ＳＥ変形完了、コミカルで落ち
	CreateSE("SE03","se擬音_コミカル_ボワン02");

//ウサギブロック変形素材定義↑ここまで↑

	Delete("絵板写");
	DrawDelete("絵色黒", 150, 100, null, "slide_01_02_1", true);

//落下するウサギブロック
	Move("絵演兎四角", 1000, @0, 250, null, false);
	Move("覆/絵演兎四角白", 1000, @0, 250, null, false);
	Rotate("絵演兎四角*", 1000, @0, @0, 1080, null,false);
	Rotate("覆/絵演兎四角白", 1000, @0, @0, 1080, null,false);
	Move("絵演背景", 1000, @0, -2304, null, true);

//地面から跳ねるウサギブロック
	MusicStart("SE01",0,700,0,1750,null,false);
	Move("絵演兎四角*", 50, @0, 220, null, false);
	Move("覆/絵演兎四角白", 50, @0, 220, null, true);

	MusicStart("SE02",0,600,0,100,null,true);
	SetFrequency("SE02", 12000, 300, Dxl3);
	Fade("覆/絵演兎四角白", 2000, 1000, null, false);

	Move("覆/絵演兎四角白", 6000, @0, 180, null, false);
	Move("絵演兎四角*", 6000, @0, 180, null, false);
	Wait(2000);
	Delete("絵演兎四角");

	Zoom("覆/絵演兎四角白", 7000, 1400, 3000, AxlDxl, false);
	Wait(2400);
	SetVolumeEX("SE02", 600, 0, Dxl3);
	Wait(100);
	MusicStart("SE03",0,700,0,1000,null,false);
	Zoom("覆/絵演兎四角白", 300, 5000, 10000, null, true);
	Fade("絵演兎", 0, 1000, null, true);
	FadeDelete("覆/絵演兎四角白", 200, null, false);

	Wait(80);

//煙をポワっと
	Move("絵演兎左煙", 600, 310, 190, Dxl3, false);
	Move("絵演兎右煙", 600, 630, 170, Dxl3, false);
	Fade("絵演兎左煙", 300, 1000, null, false);
	Fade("絵演兎右煙", 300, 1000, null, true);

	Fade("絵演兎左煙", 300, 0, null, false);
	Fade("絵演兎右煙", 300, 0, null, true);

	//CreateTextureEX("絵演背景", 2020, Center, -2304, "cg/bg/l/bg201021_0_ライムノイズ01_l.jpg");
	//Zoom("絵演背景", 0, 1500, 1500, null, true);
	//Fade("絵演背景", 0, 1000, null, true);

	CreateWindowEX("絵窓二", 0, 0, 1024, 576, false);
	SetVertex("絵窓二", center, 90);
	CreateWindowEX("絵窓三", 0, 0, 1024, 576, false);
	SetVertex("絵窓三", center, 230);
	CreateWindowEX("絵窓四", 0, 0, 1024, 576, false);
	SetVertex("絵窓四", center, 0);
	CreateWindowEX("絵窓五", 0, 0, 1024, 576, false);
	SetVertex("絵窓五", center, 330);

	CreateTextureEX("絵窓五/絵演兎五", 2800, -300, -10, "cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png");//１
	CreateTextureEX("絵窓四/絵演兎四", 2640, -90, -360, "cg/st/x/stAMウサギモドキ_リーダー_normal_xm01.png");//２
	CreateTextureEX("絵窓二/絵演兎二", 2640, 300, -300, "cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png");//３
	CreateTextureEX("絵窓三/絵演兎三", 2800, 540, -130, "cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png");//４
	Zoom("絵窓五/絵演兎五", 0, 2000, 2000, null, true);
	Zoom("絵窓四/絵演兎四", 0, 500, 500, null, true);
	Zoom("絵窓二/絵演兎二", 0, 300, 300, null, true);
	Zoom("絵窓三/絵演兎三", 0, 750, 750, null, true);
	Request("絵窓五/絵演兎*", Smoothing);
	Request("絵窓四/絵演兎*", Smoothing);
	Request("絵窓三/絵演兎*", Smoothing);
	Request("絵窓二/絵演兎*", Smoothing);

	Rotate("絵窓二/絵演兎二", 0, @0, @180, @0, null,true);
	Rotate("絵窓三/絵演兎三", 0, @0, @180, @0, null,true);
	Rotate("絵窓五/絵演兎五", 0, @0, @180, @0, null,true);

	Position("@絵窓五/絵演兎五", $x1, $y1);
	CreateStencil("絵窓五/覆五",0,$x1,$y1,128,"cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png",false);//１
	SetAlias("絵窓五/覆五","絵窓五/覆五");
	Rotate("絵窓五/覆五", 0, @0, @180, @0, null,true);
	Zoom("絵窓五/覆五", 0, 2000, 2000, null, true);
	SetShade("絵窓五/覆五", SEMIHEAVY);
	CreateColorEXadd("絵窓五/覆五/絵色黒", 2805, "FFFFFF");

	Position("@絵窓四/絵演兎四", $x1, $y1);
	CreateStencil("絵窓四/覆四",0,$x1,$y1,128,"cg/st/x/stAMウサギモドキ_リーダー_normal_xm01.png",false);//２
	SetAlias("絵窓四/覆四","絵窓四/覆四");
	Zoom("絵窓四/覆四", 0, 500, 500, null, true);
	SetShade("絵窓四/覆四", MEDIUM);
	CreateColorEXadd("絵窓四/覆四/絵色黒", 2645, "FFFFFF");

	Position("@絵窓二/絵演兎二", $x1, $y1);
	CreateStencil("絵窓二/覆二",0,$x1,$y1,128,"cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png",false);//３
	SetAlias("絵窓二/覆二","絵窓二/覆二");
	Zoom("絵窓二/覆二", 0, 300, 300, null, true);
	SetShade("絵窓二/覆二", SEMIHEAVY);
	Rotate("絵窓二/覆二", 0, @0, @180, @0, null,true);
	CreateColorEXadd("絵窓二/覆二/絵色黒", 2645, "FFFFFF");

	Position("@絵窓三/絵演兎三", $x1, $y1);
	CreateStencil("絵窓三/覆三",0,$x1,$y1,128,"cg/st/x/stAMウサギモドキ_ボクサー_normal_xm煙なし.png",false);//４
	SetAlias("絵窓三/覆三","絵窓三/覆三");
	Rotate("絵窓三/覆三", 0, @0, @180, @0, null,true);
	Zoom("絵窓三/覆三", 0, 750, 750, null, true);
	SetShade("絵窓三/覆三", SEMIHEAVY);
	CreateColorEXadd("絵窓三/覆三/絵色黒", 2805, "FFFFFF");

	Wait(16);

	Zoom("絵窓二", 0, @0, 0, Dxl2, true);
	Zoom("絵窓三", 0, @0, 0, Dxl2, true);
	Zoom("絵窓四", 0, @0, 0, Dxl2, true);
	Zoom("絵窓五", 0, @0, 0, Dxl2, true);

	CreateProcessEX("プロセス１", "Proc_dm0190_vs_01aAct");
	CreateProcessEX("プロセス２", "Proc_dm0190_vs_01bAct");
	CreateProcessEX("プロセス３", "Proc_dm0190_vs_01cAct");
	CreateProcessEX("プロセス４", "Proc_dm0190_vs_01dAct");

	CreateSE("SE_Proc_dm0190_vs_01aAct","se擬音_コミカル_ボワン02");
	CreateSE("SE_Proc_dm0190_vs_01bAct","se擬音_コミカル_ボワン02");
	CreateSE("SE_Proc_dm0190_vs_01cAct","se擬音_コミカル_ボワン02");
	CreateSE("SE_Proc_dm0190_vs_01dAct","se擬音_コミカル_ボワン02");
	MusicStartSet("SE_Proc_dm0190_vs_01aAct",700,0,1000,null,false);
	MusicStartSet("SE_Proc_dm0190_vs_01bAct",700,0,1000,null,false);
	MusicStartSet("SE_Proc_dm0190_vs_01cAct",700,0,1000,null,false);
	MusicStartSet("SE_Proc_dm0190_vs_01dAct",700,0,1000,null,false);

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	Request("プロセス１", Stop);
	Request("プロセス２", Stop);
	Request("プロセス３", Stop);
	Request("プロセス４", Stop);

//※ノイズ側の攻撃。ウサギモドキの司令官が命令。

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureEX("絵専", 3110, 0, 0, "cg/ev/l/ev960ウサギモドキ戦闘構え_l.jpg");
	Request("絵専", Smoothing);
	Zoom("絵専", 600, 1500, 1500, Dxl3, false);
	Move("絵専", 600, 190, -140, Dxl3, false);
	Fade("絵専", 500, 1000, null, true);

	Delete("プロセス１");
	Delete("プロセス２");
	Delete("プロセス３");
	Delete("プロセス４");
	Delete("絵演*");
	Delete("覆*");
	Delete("絵窓*");
	Delete("絵専三*");
	Delete("SE_Proc_dm0190_vs_01*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm01/9000290c10">
"DEATH set!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1500,null,false);
	SetBlur("絵専", true, 3, 500, 60, false);
	Wait(16);
	Move("絵専", 500, -512, -367, DxlAuto, false);
	Zoom("絵専", 500, 500, 500, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm01/9000300c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※「亡」セット。複数のウサギモドキたちがいっぺんに蒼葉目掛けて飛んでくる。
	EffectTxtinA("ノイズ","亡");
	EffectTxtinB("ノイズ","亡");

	Wait(16);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_動作_跳躍低01");
	CreateSE("SE05","se戦闘_動作_跳躍低01");

	Delete("絵専");

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("絵専二", 3110, -980, -10, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
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

	FadeFFR("絵専二", 0,1000, 150, 0, 0, 20,null, true);

	CreateSE("SEProc_dm0190_vs_02Act","se戦闘_動作_跳躍低01");
	MusicStartSet("SEProc_dm0190_vs_02Act",700,0,2000,null,false);

	CreateProcessEX("プロセス", "Proc_dm0190_vs_02Act");
	Request("プロセス", Start);

	FwPro("fw蒼葉_通常_shock",900,"fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000310a01">
"Eh!? Aaaah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	if($Proc_dm0190_vs_02Act==true){
	}else{
	Request("プロセス", Stop);
	Zoom("@絵専二", 0, 2000, 2000, Dxl2, true);
	}
	Delete("プロセス");
	$Proc_dm0190_vs_02Act=false;

	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateTextureSP("絵演背景", 1010, -1024, InBottom, "cg/bg/l/bg201022_0_ライムノイズ02_l.jpg");
	SetBlur("絵演背景", true, 3, 500, 30, false);
	Move("絵演背景", 300, 0, @0, Dxl3, false);
	FadeDelete("絵専二", 300, null, true);

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000320a01">
"That was dangerous! Hey&, wait a minute!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("SEProc_dm0190_vs_02Act");

	CreateSE("SE02","se人体_足音_一歩01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureEX("絵専", 1110, 0, -50, "cg/ev/ev900ライム対戦蒼葉VSウサギ頭.jpg");
	Move("絵専", 600, @0, 0, DxlAuto, false);
	Fade("絵専", 600, 1000, null, true);
	Fade("絵演背景", 0, 0, null, true);


	//Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000330a01">
"I want nothing to do with Rhyme! Cut it out!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演三", 1210, Center, 0, "cg/ev/ev900ライム対戦蒼葉VSウサギ頭_アップ.jpg");
	Move("絵演三", 600, @0, -70, DxlAuto, false);
	Fade("絵演三", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000340a03">
"Rhyme name&, Sly Blue&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000350a01">
"Wha?"

{	DeleteFw();}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000360a03">
"Seragaki Aoba&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000370a01">
"Why do you know my name&.&.&.? And what's this Sly thing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000380a03">
"Fight&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000390a01">
"I've never done Rhyme before!"

{	DeleteFw();}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000400a03">
"Fight&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000410a01">
"But I said I've never done this before&.&.&.!"

{	DeleteFw();}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm01/9000420a03">
"&.&.&.Fight&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※一方的に攻撃してくるノイズ
//ボカーン！ボカーン！

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_動作_跳躍低01");
	CreateSE("SE05","se戦闘_動作_跳躍低01");

	Delete("絵専");

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("絵専二", 1310, -980, -10, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
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

	FadeFFR("絵専二", 0,1000, 150, 0, 0, 20,null, true);

	Wait(30);

	CreateSE("SE06","se戦闘_動作_跳躍高01");
	MusicStart("SE06",0,700,0,1500,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Fade("絵演背景", 0, 1000, null, true);
	Delete("絵演三");
	Delete("絵専二");
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE06a","se物体_東江タワー_地割れ01");
	MusicStart("SE06a",0,700,0,1500,null,false);
	BGPlainShake(2000,300,0,20,0,0,1000,null,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000430a01">
"It's useless&, he won't listen!"

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000440a01">
"Let's run!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//走り出す蒼葉。
//ウサギモドキが追ってくる。
	CreateSE("SE01","se人体_足音_走る03L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演効果背景", 2100, Center, Middle, "cg/ef/efbg効果02.jpg");

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000450a01">
"Ren&, can't we do something!? Is there a way to get out of
 here or something?"

{	Fw("fw蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000460a06">
"I tried&, but the logout function itself seems to have been disabled&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000470a01">
"Seriously&, what's up with this Rhyme!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//ノイズの攻撃が後方から。
//ボカーン！！！

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_動作_跳躍低01");
	CreateSE("SE05","se戦闘_動作_跳躍低01");

	Delete("絵演効果背景");

	SetVolumeEX("SE*", 300, 0, null);

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("絵専二", 1310, -980, -10, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
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

	Zoom("絵専二", 500, 8000, 8000, Dxl3, false);
	FadeFFR("絵専二", 0,1000, 150, 0, 0, 20,null, true);

	Wait(50);

	CreateSE("SE06","se戦闘_動作_跳躍低01");
	MusicStart("SE06",0,700,0,500,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵背景");
	Delete("絵専二");
	Delete("絵演背景");

	CreateTextureSP("絵演画面背景", 100, -720, -1400, "cg/bg/l/bg201022_0_ライムノイズ02_l.jpg");
	SetBlur("絵演画面背景", true, 3, 500, 30, false);
	CreateSurfaceEX("絵効果サフ", 1000,2150,"@絵演画面背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	Fade("絵色白", 70, 0, null, true);

	Zoom("絵効果サフ", 750, 8000, 8000, Dxl3, false);
	Rotate("絵効果サフ", 1000, @0, @0, 1080, Dxl3,false);
	Move("絵演画面背景", 500, -710, -1190, Dxl3, true);

	CreateColorSP("絵色黒", 10, "000000");

	CreateSE("SE07","se戦闘_打撃_ヒット高04");
	MusicStart("SE07",0,1200,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵効果サフ", 0, 0, null, true);
	Fade("絵色白", 0, 0, null, true);

	Wait(150);

	CreateSE("SE08","se人体_衝撃_転倒01");
	MusicStart("SE08",0,1000,0,1000,null,false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000480a01">
"Uah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//風圧に吹っ飛ばされてフィールド上のブロックにぶつかる。

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "000000");
	Fade("絵効果サフ", 0, 1000, null, true);
	Zoom("絵効果サフ", 0, 1000, 1000, null, true);
	Rotate("絵効果サフ", 0, @0, @0, 0, null,true);
	Move("絵演画面背景", 0, 0, -1636, null, true);
	Wait(16);
	SetBlur("絵演画面背景", false, 3, 500, 200, false);
	Move("絵演画面背景", 800, 0, -1536, DxlAuto, false);
	FadeDelete("絵色黒", 500, null, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000490a01">
"Ouuch&.&.&.!"


{	WaitAction("@絵演画面背景", null);
	St("C",1740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000500a06">
"Aoba&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000510a01">
"&.&.&.It hurts pretty badly&."

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000520a06">
"Rhyme doesn't inflict damage on the real body&. It is all
 an illusion in the brain&. It is controlled so that it does
 not cause any further influence&."

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000530a06">
"But in this field&, the control of the damage level seems
 to be excluded for some reason&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000540a01">
"Doesn't that mean&.&.&."

{	St("C",1740, @0,@0,"st蓮_通常_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000550a06">
"When taking damage here&, some influences may be exerted on the real body&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000560a01">
"Then isn't this the worst case scenario&.&.&.!?"

{	Fw("fwAMウサギモドキ_ボクサー_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm01/9000570c09">
"You can't get away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,500,0,1500,null,false);
	SetBlur("絵演画面背景", true, 3, 500, 30, false);
	Move("@StNameC/C*", 500, @0, @686, Dxl1, false);
	Move("絵演画面背景", 500, 0, -850, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
When I look up&, a rabbit peeps at me from a block nearby&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ノイズ側の攻撃。ウサギモドキの司令官が命令。

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演背景", 1110, Center, Middle, "cg/ev/ev960ウサギモドキ戦闘構え.jpg");

	DeleteAllSt(0,true);
	Delete("絵色白");
	Delete("絵効果サフ");
	Delete("絵演画面背景");
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm01/9000580c10">
"'LOSS' set!"

//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm01/9000590c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※「失」セット。ウサギモドキが発光したミサイルのようにひゅんひゅん飛んでくる
	EffectTxtinA("ノイズ","失");
	EffectTxtinB("ノイズ","失");

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_動作_跳躍低01");
	CreateSE("SE05","se戦闘_動作_跳躍低01");

	Delete("絵演効果背景");

	SetVolumeEX("SE*", 300, 0, null);

	MusicStart("SE01",0,700,0,2000,null,false);
	CreateTextureSP("絵専二", 1310, -980, -10, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Request("絵専二", Smoothing);
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

	FadeFFR("絵専二", 0,1000, 150, 0, 0, 20,null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
Crap&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//※次ファイル["dm0190sl.nss"]※他ＥＤクリア後出現
//※次ファイル["dm0191_vs.nss"]


	//ClearFadeAll(1000, true);

}

/*
//あきゅん「演出：サンプルスクリプト、文字効果登場演出【祝福】」
//文字効果登場演出【祝福】
	CreateTextureSP("絵ベース", 1090, Center, Middle, "cg/ev/ev950蓮、武器発現.jpg");

while(1){

	CreateTextureEXmul("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_蓮_慶_ラフ03a.png");
	Request("絵演効果二", Smoothing);
	Zoom("絵演効果二", 0, 2000, 2000, null, true);
	//Zoom("絵演効果二", 0, 4000, 4000, null, true);
	Rotate("絵演効果二", 0, @0, @0, 900, null,true);
	SetBlur("絵演効果二", true, 2, 500, 50, false);

	Zoom("絵演効果二", 300, 1000, 1000, null, false);
	//Zoom("絵演効果二", 300, 2000, 2000, null, false);
	Fade("絵演効果二", 300, 1000, null, false);
	Rotate("絵演効果二", 300, @0, @0, 0, null,true);

	WaitKey(50);

	FadeFFR2("絵ベース", 0,1000, 200, 0, 0, 20,DxlAuto, false);

	CreateTextureSPadd("絵演効果一", 1120, Center, Middle, "cg/ef/efv属性文字_蓮_慶_ラフ03b_s.png");
	Request("絵演効果一", Smoothing);
	//Zoom("絵演効果一", 0, 1150, 1150, null, true);
	Zoom("絵演効果一", 0, 2300, 2300, null, true);

	//CreateTextureSPadd("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_蓮_慶_ラフ03a.png");
	Request("絵演効果二", AddRender);
	SetBlur("絵演効果二", false);
	//Zoom("絵演効果二", 0, 2000, 2000, null, true);
	//Request("絵演効果二", Smoothing);
	CreateTextureEX("絵演効果二微睡", 1100, Center, Middle, "cg/ef/efv属性文字_蓮_慶_ラフ03a_s.png");
	Request("絵演効果二微睡", Smoothing);
	DrawEffect("絵演効果二微睡", 0, "Ripple", 0, 250, null);
	Zoom("絵演効果二微睡", 0, 2000, 2000, null, true);


	Wait(80);
	Request("絵演効果二", NormalRender);
	Fade("絵演効果一", 500, 0, AxlAuto, false);
	Zoom("絵演効果一", 500, 6000, 6000, Dxl3, false);
	//Zoom("絵演効果一", 500, 3000, 3000, Dxl3, false);
	Wait(300);
	FadeDelete("絵演効果一", 400, null, false);
	Wait(100);

	//Zoom("絵演効果一", 10000, 2500, 2500, Dxl2, false);
	Zoom("絵演効果一", 10000, 5000, 5000, Dxl2, false);

	Wait(400);

	DrawEffect("絵演効果二微睡", 150, "Ripple", 0, 400, null);
	Fade("絵演効果二微睡", 150, 1000, Dxl3, false);
	FadeDelete("絵演効果二", 150, null, true);
	Wait(100);
	Zoom("絵演効果二微睡", 2000, 1700, 1700, null, false);
	FadeDelete("絵演効果二微睡", 1000, null, true);

	Wait(100);

	WaitKey();

}

	WaitKey();

	FadeFFR2("絵ベース", 0,1000, 200, 0, 0, 20,DxlAuto, false);
	CreateTextureSPadd("絵演効果一", 1090, Center, Middle, "cg/ef/efv属性文字_祝福ラフ02.png");

	CreateTextureSP("絵演効果二", 1100, Center, Middle, "cg/ef/efv属性文字_祝福ラフ01.png");

	Fade("絵演効果一", 1000, 0, null, true);

	WaitKey();
*/
/*
&.ボツスクリプト
&.&.ノイズの足元に顕現するウサギモドキＢ
	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク右", 3000, 0, 0, "ciスラッシュ_03_01", true, "ciスラッシュ_03_01z");
	CreateTextureSP("絵マスク右/絵演背景", 2010, Center, Middle, "cg/ef/efbg効果03.jpg");
	Rotate("絵マスク右/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵マスク右/絵演背景", 0, 1050, 1050, null, true);
	SetShade("絵マスク右/絵演背景", SEMIHEAVY);

	CreateTextureSP("絵マスク右/絵演立絵", 2750, 1024, -1350, "cg/st/x/stウサギ頭_通常_l_全身.png");

	CreateTextureEX("絵マスク右/絵演立絵兎一", 2770, 140, 576, "cg/st/x/stAMウサギモドキ_ボクサー_normal_x01_足削.png");
	CreateTextureEX("絵マスク右/絵演立絵兎二", 2760, -1024, 90, "cg/st/x/stAMウサギモドキ_ボクサー_normal_x01_足削.png");
	CreateTextureEX("絵マスク右/絵演立絵兎三", 2730, 270, 576, "cg/st/x/stAMウサギモドキ_ボクサー_normal_x01_足削.png");
	Rotate("絵マスク右/絵演立絵兎二", 0, @0, @180, @0, null,true);
	Rotate("絵マスク右/絵演立絵兎三", 0, @0, @180, @0, null,true);

	Move("絵マスク右/絵演立絵", 600, 100, @0, Dxl2, false);
	DrawDelete("絵板写", 300, 100, null, "slide_01_02_0", true);

	WaitAction("@絵マスク右/絵演立絵", null);

	WaitKey();

	Fade("絵マスク右/絵演立絵兎*", 0, 1000, null, true);
	Move("絵マスク右/絵演立絵兎一", 500, 50, -220, DxlAuto, false);
	Wait(300);
	Move("絵マスク右/絵演立絵兎二", 500, -390, 0, DxlAuto, false);
	Wait(150);
	Move("絵マスク右/絵演立絵兎三", 500, 330, -300, DxlAuto, true);
*/