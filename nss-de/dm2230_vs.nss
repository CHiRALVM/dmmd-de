//<continuation number="320">
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


scene dm2230_vs.nss_MAIN
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
	#bg301041_5_プラチナジェイル通り路地02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2240.nss";

}


scene dm2230_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//嶋：ＢＧＭ仮
	SoundPlay("@dm008",0,450,true);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se人体_足音_走る01");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateSE("SE11","se人体_足音_走る03複数L");//あきゅん「ＳＥ：se人体_足音_走る03複数L」
	MusicStart("SE11",0,500,0,600,null,true);

	CreateSE("SE12","se人体_足音_走る03複数L");
	MusicStart("SE12",0,500,0,700,null,true);

	CreateColorSP("絵黒幕", 5000, "Black");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We escape into a back alley&, an area small and dark 
compared to the dazzling Main Street&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se人体_足音_走る01");
	MusicStart("SE02",0,700,0,800,null,false);

	SetVolumeEX("SE1*", 3000, 0, null);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	OnBG(10,"bg301021_5_プラチナジェイル中通り2ゲーセン");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(200);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg301011_5_プラチナジェイル大通り2ゲーセン");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(200);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I can't tell if it's the police or the yakuza&, but 
someone's following us&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
We make countless left turns&, and eventually we don't hear the footsteps anymore&.

Did we shake them off&.&.&.?

We stop running and look over our shoulders&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ざっと蒼葉たちの前に立ち塞がる悪島
	CreateSE("SE01","se人体_足音_一歩02");//あきゅん「ＳＥ：se人体_足音_一歩02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000010b08">
"WAIIIIIIIIIIITTT!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se人体_足音_一歩01");
	MusicStart("SE03",0,700,0,900,null,false);
	CreateSE("SE02","se人体_足音_一歩01");
	MusicStart("SE02",0,700,0,800,null,false);

//※慌てて立ち止まる蒼葉とノイズ

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000020a01">
"Huh!?"

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000030a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「↓：アップで。シルエットから登場上にパンして顔アップみたいな」

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureEX("絵st100", 1200, -50, -100, "cg/st/x/st悪島_通常ハイパー_laugh_x.png");

	CreateStencil("マスク１",1500,-50,-426,128,"cg/st/x/st悪島_通常ハイパー_laugh_x.png",false);
	SetAlias("マスク１","マスク１");
	CreateColor("マスク１/色１", 1500, 0, 0, 1024, 576, "BLACK");
	SetAlias("マスク１/色１","マスク１/色１");

//	DrawTransition("マスク１/色１", 0, 0, 750, 800, null, "cg/data/slide_02_00_0.png", true);
	Fade("マスク１/色１", 0, 1000, null, true);

	FadeDelete("絵板写", 1000, null, true);

	Move("絵背景100", 2000, @0, 141, AxlDxl, false);
	Move("マスク１", 2000, @0, -100, AxlDxl, true);

	Wait(100);

	Fade("絵st100", 100, 1000, Axl1, false);

	Fade("マスク１/色１", 2000, 0, Axl1, false);
	DrawTransition("マスク１/色１", 2000, 1000, 0, 800, Axl1, "cg/data/slide_02_00_0.png", true);

	Delete("マスク１/色１");
	Delete("マスク１");

//	St("C",740, @0,@0,"st悪島_通常ハイパー_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Someone jumps out in front of us&.

When I see his face&, I can only stand there&, shocked still&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵背景100");
	Delete("絵st100");

	St("C",740, @0,@0,"st悪島_通常ハイパー_laugh");
	FadeSt("C",200,true);
	FadeDelete("絵板写",300,null,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000040a01">
"Akushima!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000050b08">
"YOU BASTAAAAARDS&, YOU'RE WAAAANTEEEEED!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000060a01">
"Why are you here&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000070b08">
"I transferred to Platinum Jail JUST TO DEAL WITH YOU DAMN
 TERRORIIIISTS&, HAHAHAHAHAHAHA!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
He's so persistant&.&.&.
But he seeems a little off&.

He's always been a crazy old coot&, but now his smile is 
uncannily wide and his eyes aren't focused&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000080b08">
"Time to KILL THE CRIMINAAALS!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

//嶋：座標注意
	CreateTextureSP("絵背景100", 1000, Center, 70, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵st100", 1200, 0, InBottom, "cg/fu/fu悪島_通常ハイパー_laugh.png");
	CreateTextureEX("絵st200", 1200, Center, InBottom, "cg/fu/fu悪島_戦闘ハイパー_normal.png");
	Move("絵st100", 300, 62, @0, Dxl1, false);

	FadeDelete("絵板写", 300, null, true);

	CreateSE("SE01","se戦闘_メガ砲_構える01");//あきゅん「ＳＥ：se戦闘_メガ砲_構える01」
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵st200", 250, 1000, Dxl1, false);
	Fade("絵st100", 250, 0, null, true);

{	St("C",740, @0,@0,"st悪島_戦闘ハイパー_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
Akushima opens up his arms wide to the sky&, pointing 
something at us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
What is that&.&.&.?
It looks like a giant&, modded megaphone&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");

//嶋：マクロ注意
	HyperAkSet(1250);

	MusicStart("SE01",0,700,0,1000,null,true);

//嶋：後で色変更
//	CreateColorEXmul("絵色赤", 4000, CC0000);
//	Fade("絵色赤", 150, 1000, null, true);
//	Wait(300);
//	DrawTransition("絵色赤", 300, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

//※キュイィィィィンな充填音＆電気球発射音

	Fw("fwノイズ_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000090a03">
"-!"

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000100a01">
"!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);
	DeleteAllSt(0,true);

	HyperAkDelete();
	Delete("絵st100");
	Delete("絵st200");
	Delete("絵背景100");
	Delete("絵色赤");

	FadeDelete("絵板写",300,null,true);

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Suddenly&, Noiz pushes me down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//嶋：台詞中変更予定【fw蒼葉_通常_shock2】
	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000110a01">
"What're&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵背景200",Smoothing);
	Zoom("絵背景200", 0, 1450, 1450, null, true);
	CreateTextureEXadd("絵背景300", 1000, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵背景300",Smoothing);
	Zoom("絵背景300", 0, 1450, 1450, null, true);
	SetVertex("絵背景200", 266, 304);
	SetVertex("絵背景300", 266, 304);

	CreateColorEXadd("絵色白", 5000, "White");


	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景300", 300, -1500, 800, Dxl1, false);
	Move("絵背景200", 300, -1500, 800, Dxl1, false);
	Zoom("絵背景200", 250, 5000, 5000, Dxl1, false);
	Zoom("絵背景300", 250, 5000, 5000, Dxl1, false);
	Fade("絵背景200", 100, 1000, null, false);
	Fade("絵背景300", 150, 1000, null, true);
	Fade("絵色白", 200, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景300");
	Fade("絵色白", 200, 0, null, true);

//	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
//	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Akushima's megaphone is charging with bolts of electricity&,and a blaze had just missed my head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 4000, FFFFFF);
	Wait(30);
	Delete("絵演効果");
	CreateColorEXadd("絵色黄", 3000, FFFF00);

	CreateSE("SE01","se戦闘_衝撃_破損01");//あきゅん「ＳＥ：se戦闘_衝撃_破損01」

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黄", 0, 1000, null, false);
	DrawTransition("絵色黄", 200, 0, 1000, 50, Dxl1, "cg/data/slide_04_00_1.png", false);
	Fade("絵色白", 300, 1000, null, false);
	DrawTransition("絵色白", 300, 100, 1000, 50, Axl1, "cg/data/slide_04_00_1.png", true);
//	FadeDelete("絵色白", 500, null, true);
	CreateTextureSP("絵背景200", 1000, Center, Middle, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	Delete("絵色黄");
	Shake("絵背景200", 300, 1, 2, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵色白", 200, null, true);
	FadeDelete("絵背景200",200,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
What was that just now&.&.&.!?

When I try to get up and turn my head around&, I see the 
bolt had completely blasted the wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※電気球が壁に当たって盛大な音を立てて消滅

	Fw("fwノイズ_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000120a03">
"That's definitely bad news&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	St("C",740, @0,@0,"stノイズ_通常_angry2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Noiz and I get up from the ground&, eyes centered on 
Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000130a03">
"He's trouble&. We gotta deal with him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000140a01">
"Can we even do that? He's got that weird weapon&."

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",0,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000150a03">
"We have to&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw悪島_戦闘ハイパー_laugh");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000160b08">
"DIIIIIIIEEEEEEEEEEEEEE!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※キュイィィィィンな充填音＆電気球発射音
	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");
	MusicStart("SE01",0,700,0,1000,null,true);
//嶋：色味調整
	CreateColorEXmul("絵色赤", 4000, "YELLOW");
	Fade("絵色赤", 150, 1000, null, true);
	Wait(300);
	FadeDelete("絵色赤", 300, null, true);

{	Fw("fw蒼葉_通常_rage");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000170a01">
"Whoa&, this again&.&.&.!"

{
	DeleteFw();
	St("C",740, @0,@0,"stノイズ_通常_pinch");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000180a03">
"Guh-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵背景200",Smoothing);
	Zoom("絵背景200", 0, 1450, 1450, null, true);
	CreateTextureEXadd("絵背景300", 1000, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵背景300",Smoothing);
	Zoom("絵背景300", 0, 1450, 1450, null, true);
	SetVertex("絵背景200", 266, 304);
	SetVertex("絵背景300", 266, 304);

	CreateColorEXadd("絵色白", 5000, "White");


	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景300", 300, -1500, 800, Dxl1, false);
	Move("絵背景200", 300, -1500, 800, Dxl1, false);
	Zoom("絵背景200", 250, 5000, 5000, Dxl1, false);
	Zoom("絵背景300", 250, 5000, 5000, Dxl1, false);
	Fade("絵背景200", 100, 1000, null, false);
	Fade("絵背景300", 150, 1000, null, true);
	Fade("絵色白", 200, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("絵背景200");
	Delete("絵背景300");
	Fade("絵色白", 200, 0, null, true);

//	Wait(100);

	CreateColorEXadd("絵色白", 4000, FFFFFF);
	Wait(30);
	Delete("絵演効果");
	CreateColorEXadd("絵色黄", 3000, FFFF00);

	CreateSE("SE01","se戦闘_衝撃_破損01");//あきゅん「ＳＥ：se戦闘_衝撃_破損01」

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黄", 0, 1000, null, false);
	DrawTransition("絵色黄", 200, 0, 1000, 50, Dxl1, "cg/data/slide_04_00_1.png", false);
	Fade("絵色白", 300, 1000, null, false);
	DrawTransition("絵色白", 300, 100, 1000, 50, Axl1, "cg/data/slide_04_00_1.png", true);
//	FadeDelete("絵色白", 500, null, true);
	CreateTextureSP("絵背景200", 1000, Center, Middle, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	Delete("絵色黄");
	Shake("絵背景200", 300, 1, 2, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵色白", 200, null, true);
	FadeDelete("絵背景200",200,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
More bolts launch at us&, and we dodge each one&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_戦闘ハイパー_normal");
	FadeSt("C",200,true);}

//※ＳＥ：電気球が壁に当たって盛大な音を立てて消滅
	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");
	MusicStart("SE01",0,700,0,1000,null,true);
//嶋：色味調整
	CreateColorEXmul("絵色赤", 4000, "YELLOW");
	Fade("絵色赤", 150, 1000, null, true);
	Wait(300);
	DrawTransition("絵色赤", 300, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000190b08">
"YOU'RE NOT GETTING AWAAAAAYYYYYYYYYYY!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：キュイィィィィンな充填音＆電気球発射音

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000200a01">
"Are you serious!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島１", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵悪島１",Smoothing);
	Zoom("絵悪島１", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);

	FadeFR2("絵悪島１",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島４", 1100, Center, -50, "cg/ef/efx04ビーム_メガ砲H02_s.jpg");
	Request("絵悪島４",Smoothing);
	Rotate("絵悪島４", 0, 0, 0, 90, null,true);
	Zoom("絵悪島４", 0, 2000, 2000, null, true);

	FadeFR2("絵悪島４",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島２", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵悪島２",Smoothing);
	Rotate("絵悪島２", 0, 0, 180, @0, null,true);
	Zoom("絵悪島２", 0, 1500, 1500, null, true);

	FadeFR2("絵悪島２",0,1000,100,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島３", 1100, Center, -104, "cg/ef/efx04ビーム_メガ砲H02_s.jpg");
	Request("絵悪島３",Smoothing);
//	Rotate("絵悪島３", 0, 0, 180, @0, null,true);
	Zoom("絵悪島３", 0, 2000, 2000, null, true);

	Zoom("絵悪島３", 150, 1500, 1500, null, false);
	FadeFR2("絵悪島３",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵悪島５", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵悪島５",Smoothing);
	Zoom("絵悪島５", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);

	FadeFR2("絵悪島５",0,1000,150,0,0,100,null, true);

	Wait(50);

	CreateSE("SE02","se戦闘_衝撃_破損01a");//あきゅん「ＳＥ：se戦闘_衝撃_破損01a」
	MusicStart("SE02",0,700,0,1000,null,false);
//色味調整予定
	CreateColorSPadd("絵フラッシュ白", 5000, FFFFFF);
	Delete("絵悪島*");

	Wait(30);
	FadeDelete("絵フラッシュ白", 1000, null, true);

/*=========================================
//あきゅん「↓：発射演出激しく」
	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

//※ＳＥ：電気球が壁に当たって盛大な音を立てて消滅
	CreateSE("SE01","se戦闘_衝撃_破損01a");//あきゅん「ＳＥ：se戦闘_衝撃_破損01a」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵演効果");
	FadeDelete("絵色白", 500, null, true);

=========================================*/

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 20, -10, 10, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
One of Akushima's bolts almost hits me&, but misses and 
disappears into the wall&, making a bright flash and a 
large booming noise&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000210a01">
"That was dangerous&.&.&."

{	Fw("fwノイズ_通常_pinch");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000220a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");//あきゅん「ＳＥ：se戦闘_動作_跳躍低01」
	CreateTextureEX("絵ＥＶ", 1100, -361, -268, "cg/ev/ev920ノイズ突進.jpg");
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ", true, 2, 200, 30, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵ＥＶ", 0, 1000, null, false);
	Move("絵ＥＶ", 200, 0, 0, Dxl1, false);
	Zoom("絵ＥＶ", 200, 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Akushima stops attacking for a second&.

And in that moment&, Noiz dashes towards him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000230a01">
"You idiot! Stop!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「↓：カット演出で悪島も表示」

	DeleteFw();

	CreatePlainSP("絵板写", 5000);
	Delete("絵ＥＶ");

	CreateMask("マスク１", 1400, 0, 0, "cg/mask/ciスラッシュ_00_00.png", false);
	SetAlias("マスク１","マスク１");
	CreateTextureSP("マスクライン", 1500, Center, Middle, "cg/mask/ciスラッシュ_00_00z.png");
	CreateTextureSP("マスク１/絵背景", 1400, -530, -14, "cg/ev/m/ev920ノイズ突進_m.jpg");
	CreateTextureSP("絵背景100", 1000, 170, 120, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵st200", 1200, -122, 44, "cg/fu/fu悪島_戦闘ハイパー_laugh.png");

	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");
	MusicStart("SE01",0,700,0,1000,null,true);
	Move("マスク１/絵背景", 200, -500, @0, Dxl1, false);
	Move("絵背景100", 200, 200, @0, Dxl1, false);
	Move("絵st200", 200, -142, @0, Dxl1, false);
	FadeDelete("絵板写",200,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000240b08">
"DIIIIIIIIIIIEEEEEEEEEEEEEEEEEE!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※キュイィィィィンな充填音＆電気球発射音
//※電気球が壁に当たって盛大な音を立てて消滅
	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵背景200",Smoothing);
	Zoom("絵背景200", 0, 1450, 1450, null, true);
	CreateTextureEXadd("絵背景300", 2000, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01_s.jpg");
	Request("絵背景300",Smoothing);
	Zoom("絵背景300", 0, 1450, 1450, null, true);
	SetVertex("絵背景200", 266, 304);
	SetVertex("絵背景300", 266, 304);

	CreateColorEXadd("絵色白", 5000, "White");


	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景300", 300, -1500, 800, Dxl1, false);
	Move("絵背景200", 300, -1500, 800, Dxl1, false);
	Zoom("絵背景200", 250, 5000, 5000, Dxl1, false);
	Zoom("絵背景300", 250, 5000, 5000, Dxl1, false);
	Fade("絵背景200", 100, 1000, null, false);
	Fade("絵背景300", 150, 1000, null, true);

	Fade("絵色白", 200, 1000, null, true);

	Delete("絵ＥＶ");
	Delete("マスク１");
	Delete("マスクライン");
	Delete("絵背景");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵st200");

	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev920ノイズ突進.jpg");
	Request("絵ＥＶ", Smoothing);
	SetBlur("絵ＥＶ", true, 2, 200, 30, false);

	Fade("絵ＥＶ", 0, 1000, null, false);
	Move("絵ＥＶ", 300, -200, 0, null, false);
	Zoom("絵ＥＶ", 300, 1500, 1500, Dxl1, false);

	Fade("絵色白", 200, 0, null, true);

	CreateSE("SE02","se戦闘_打撃_ヒット高04");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高04」
	MusicStart("SE02",0,1200,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵演効果");
	Delete("絵ＥＶ");

	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Noiz avoids a bolt by an inch&, runs up to Akushima&, and 
slams his knuckles into his chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※バキィッ！！とかなりすごい音
	CreateSE("SE02","se戦闘_打撃_ヒット高04");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高04」
	MusicStart("SE02",0,1200,0,1000,null,false);
	FadeFR2("絵板写",0,1000,150,0,0,50,null, true);

//嶋：顔ウィンドウない方がいいかも
	Fw("fw悪島_戦闘ハイパー_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000250b08">
"Guh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//あきゅん「演出：本来なら蒼葉が直に受けた場合以外、画面を揺らさないが特例的に揺らす」

//※バキィッ！！とかなりすごい音
	CreateSE("SE02","se戦闘_打撃_ヒット低02");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高04」
	MusicStart("SE02",0,1200,0,1000,null,false);
//	CreatePlainEX("絵板写", 100);
//	FadeFR2("絵板写",0,1000,150,0,0,50,null, true);

	Wait(100);

//※バキィッ！！とかなりすごい音
	CreateSE("SE02","se戦闘_打撃_ヒット高04");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高04」
	MusicStart("SE02",0,1200,0,1000,null,false);
//	FadeFR2("絵板写",0,1000,150,0,0,50,null, true);

//嶋：顔ウィンドウない方がいいかも
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000260b08">
"Gahhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000270a01">
"&.&.&.! Stop! Hey&, Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se戦闘_打撃_ヒット高04");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高04」
	MusicStart("SE02",0,1200,0,800,null,false);
//	FadeFR2("絵板写",0,1000,150,0,0,50,null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Noiz successfully lands a hit&.

His mercilessness frightens me a little&.

Akushima's attacks are bad&, but he's overdoing it&.&.&.!

He'll die like that&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※バキィッ！！とかなりすごい音
	CreateSE("SE02","se戦闘_打撃_ヒット高04");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高04」
	MusicStart("SE02",0,1200,0,1000,null,false);

//	FadeFR2("絵板写",0,1000,150,0,0,50,null, true);
//	Delete("絵板写");

	Wait(200);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
Akushima&, battered and beaten&, slides down&.

No way&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000280b08">
"&.&.&.&.&.Fuhahahahahahahahaaa!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000290a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateWindow("絵マスク", 2000, 0, 100, 1024, 374, false);
	SetAlias("絵マスク","絵マスク");
	Zoom("絵マスク", 0, 1000, 0, null, true);

	CreateTextureEX("マスクライン上", 2000, Center, Middle, "cg/mask/ciウィンドウ横01.png");
	CreateTextureEX("マスクライン下", 2000, Center, Middle, "cg/mask/ciウィンドウ横01.png");


	CreateTextureSP("絵マスク/絵背景100", 1000, -118, -116, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	CreateTextureSP("絵マスク/絵背景100", 1000, -118, -116, "cg/bg/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ.jpg");
	Zoom("絵マスク/絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵マスク/絵背景100", MEDIUM);

	CreateTextureSP("絵マスク/絵st200", 1200, Center, -244, "cg/fu/fu悪島_戦闘ハイパー_laugh.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Aksuhima suddenly raises his bloodied face and smiles with his big mouth&.

{
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	Fade("マスクライン*", 0, 1000, null, false);
	Move("マスクライン上", 250, @0, 90, null, false);
	Move("マスクライン下", 250, @0, 474, null, false);
	Zoom("絵マスク", 250, 1000, 1000, null, true);}
He grabbed Noiz's neck with one hand&, and pointed his giant
megaphone to his stomach with the other&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/3000300a03">
"-!"

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/3000310a01">
"Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("マスクライン上", 150, @0, 281, null, false);
	Move("マスクライン下", 150, @0, 281, null, false);
	Zoom("絵マスク", 150, 1000, 0, null, true);
	Fade("マスクライン*", 50, 0, null, true);
	Delete("マスクライン*");
	Delete("絵マスク/絵背景100");
	Delete("絵マスク/絵st200");
	Delete("絵マスク");

	Fw("fw悪島_戦闘ハイパー_laugh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm22/3000320b08">
"NOW&, DIIIIIIIIIIEEEEEEEEE!!!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※キュイィィィィンな充填音＆電気球発射音
	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");
	MusicStart("SE01",0,700,0,1000,null,true);

//嶋：色味調整
	CreateColorEXmul("絵色赤", 4000, "YELLOW");
	Fade("絵色赤", 150, 1000, null, true);
	Wait(300);
	FadeDelete("絵色赤", 300, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
And at that moment&.&.&.

{
	CreateSE("SE81","se戦闘_動作_走る01");
	MusicStart("SE81",0,700,0,1000,null,false);
}
Before any thoughts can enter my mind&, I begin to run&.

Every sound outside of my body fades out&, and the only 
thing I can hear is my own heartbeat and a certain ringing 
in my ears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 300, 0, null);

//※次ファイル["dm2240.nss"]

}
