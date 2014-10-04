//<continuation number="20">
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


scene dm2400.nss_MAIN
{
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

	//▼演出処理を初期化
	Request("@SE01", UnLock);
	Request("@SE01_ef", UnLock);
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2410scr.nss";

}


scene dm2400.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	if($PreGameName=="dm2390_vs.nss"){
	CreateTextureSP("絵演雑音", 1110, Center, Middle, "cg/ev/ev239殺人マシーンノイズvs蒼葉.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵演雑音", 0, 1080, 1080, null, true);
	}
	FadeDelete("上背景", 0, null, true);
	SetVolumeEX("@dm*", 150, 0, null);


	CreatePlainSP("絵板写", 10000);
	Delete("絵演雑音");

//※一瞬、白蒼葉の幻影がちらつく
//※ＳＥ：どくん、どくん、と心臓音ループ
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	CreateColorEX("絵色黒", 5000, "000000");

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	CreateSE("SE01","se人体_心臓_鼓動01");
	Delete("絵板写");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――――　Use it　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	Move("@絵演黒蒼葉誘惑", 0, @0, -180, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　――――　Use the power　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	Move("@絵演黒蒼葉誘惑", 0, @0, -220, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　――――　Use it　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	TemptationDelete("絵演黒蒼葉誘惑黒隠");
	CreateColorSP("絵色黒", 5000, "000000");
	Delete("絵板写");

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",3000,400,0,600,null,true);

	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
&.&.&.Again&.

The headache returns and I hear the voice&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 10000);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/ev900もう１人の蒼葉.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	CreateColorEX("絵色黒", 5000, "000000");

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

//※ＳＥ：どくん、どくん、と心臓音ループ
	//SetVolumeEX("SE*", 1000, 0, null);

	CreateSEEF("SE01","se人体_心臓_鼓動01L");
	Delete("絵板写");
	MusicStartEF("SE01",0,1000,0,1000,null,true);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
　――――　If you don't hurry&, it'll be too late　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-80,"cg/ev/ev900もう１人の蒼葉.jpg",1250,1250);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
　――――　Come on&, use it　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 300, 100, null, "cg/data/slide_05_00_0.png", true);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-120,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
　――――　Go inside his head　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 200, 100, null, "cg/data/slide_05_00_0.png", true);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-20,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",1500,1500);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	SetVolumeEF("@SE01",300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
　――――　and reveal it　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);
	Request("@SE01", UnLock);
	Request("@SE01_ef", UnLock);

	PrintGO("上背景", 20000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);
	TemptationDelete("絵演黒蒼葉誘惑黒隠");

	CreateSE("SE02","se擬音_効果_力クリア01");
	MusicStart("SE02",0,500,0,1500,null,false);
	SetVolumeEX("SE02", 2000, 1200, null);
	SetFrequency("SE02", 2000, 1470, null);

	FadeDelete("上背景", 2000, Axl2, true);
	SetVolumeEX("SE01", 600, 0, null);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/0000010a01">
"AAAAAAaaaaaaaaah!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

{	St("C",740, @0,@0,"buノイズ_正面洗脳_normal");
	FadeSt("C",0,true);}

	FadeDelete("絵色白", 1000, null, true);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
An intense spear of pain pierces through the inside of my  head and everything begins to move in slow motion&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
My hand grips Noiz's forehead on its own&.<k>
And&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 1900);
	Request("絵板写", Smoothing);
	Move("絵板写", 0, @0, 60, null, true);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	Fade("絵板写", 500, 1000, null, true);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//※力発動時
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/0000020a01">
"&.&.&.I'll go inside of you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

//※「暴露」発動
//※ノイズの精神世界へ
	ScrapIn("転送暴露a",2000);
	Delete("絵板写");
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();
	Wait(2000);

//※次ファイル["dm2410scr.nss"]

}
