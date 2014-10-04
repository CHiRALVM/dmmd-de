//<continuation number="140">
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


scene dm5500scr.nss_MAIN
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

	#bg206011_0_暴露蓮=true;
	#ev900ライム対戦蒼葉VSバグ蓮=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5510sl.nss";

}


scene dm5500scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 5000, "000000");
	OnBG(10,"bg206011_0_暴露蓮");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/l/bg206011_0_暴露蓮_l.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 800, 800, null, true);
	CreateTextureSP("絵背景EF", 100, Center, Middle, "cg/bg/bg206011_0_暴露蓮.jpg");
	Zoom("絵背景EF", 0, 2030, 2030, null, true);
	DrawEffect("絵背景EF", 0, "Ripple", 200, 200, null);
	Fade("絵背景EF", 0, 1000, null, true);
	Fade("絵背景", 0, 500, null, true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");
	Zoom("絵背景", 4500, 500, 500, Dxl1, false);
	Zoom("絵背景EF", 4500, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 2000, null, true);

	Wait(1000);
	Fade("絵背景", 1500, 1000, null, true);
	Delete("絵背景EF");

//※自分の頭の中へ入った蒼葉
//※蒼葉の映像がぐにゃんぐにゃんになった船酔いしそうなフィールドの中、人型の蓮が立っている。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
This is&.&.&.

I'm inside of my own head&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	Zoom("絵背景", 1500, 1000, 1000, AxlDxl, true);
	Wait(500);
	Move("絵背景*", 1000, @-500, @0, AxlDxl, true);

	Wait(500);
	Move("絵背景*", 2000, @1000, @0, AxlDxl, true);
	WaitKey();
*/

	Zoom("絵背景", 1500, 1000, 1000, AxlDxl, false);
	BezierMove("絵背景", 3000, (@0,@0){-500,0}{-600,-10}(-773,-88), AxlDxl, true);
	BezierMove("絵背景", 1000, (-773,-88){-770,-100}{-770,-100}(-790,-93), AxlDxl, true);
	BezierMove("絵背景", 2000, (-790,-93){-400,-100}{-300,-100}(-22,-173), AxlDxl, true);
	BezierMove("絵背景", 1000, (-22,-173){-25,-160}{-30,-180}(-22,-173), AxlDxl, true);
	BezierMove("絵背景", 1000, (-22,-173){-30,-200}{-15,-250}(-12,-288), AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
The scenery that expands in front of my eyes leaves me 
dumbfounded&.

Pictures of me are everywhere&, filling the dome-like area&.

It resembles a public Rhyme field&, but it's a little 
different&.

It's not like one because this time&, it's in my head&.

And probably&.&.&. where Ren's consciousness is hiding&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(200);
	CreateTextureSP("キャラ蓮", 500, 1024, -52, "cg/bu/bu蓮_通常マントなし_normal.png");
	Fade("キャラ蓮", 0, 500, null, true);
	CreateTextureSP("キャラ蓮2", 300, 1024, -52, "cg/bu/bu蓮_通常マントなし_normal.png");
	Fade("キャラ蓮2", 0, 500, null, true);

	CreateTextureEX("蓮バグ01", 300, 167, -52, "cg/bu/bu蓮_通常バグ_normal.png");
	CreateTextureEXmul("蓮バグ02", 300, 167, -52, "cg/bu/bu蓮_通常バグ_normal.png");
	CreateTextureEXsub("蓮バグ03", 300, 167, -52, "cg/bu/bu蓮_通常マントなし_normal.png");

	DrawEffect("蓮バグ01", 0, "SuperWave", 20, 20, null);
	//DrawEffect("蓮バグ02", 0, "SuperWave", 300, 200, null);
	//DrawEffect("蓮バグ03", 0, "Ripple", 50, 50, null);

	DrawTransition("蓮バグ01", 0, 300, 300, 200, null, "cg/data/check_03_00_0.png", true);
	DrawTransition("蓮バグ02", 0, 300, 300, 200, null, "cg/data/check_02_00_1.png", true);
	//DrawTransition("蓮バグ03", 0, 500, 500, 100, null, "cg/data/check_02_00_1.png", true);

	$ライトナット名１ = @蓮バグ01;
	$ライトナット名２ = @蓮バグ02;
	$ライトナット名３ = @蓮バグ03;
	$ライトタイム = 550;

	CreateProcess("プロセス表示１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセス表示１","プロセス表示１");

	RhymeDrawSet("キャラぶれ",1000,167,-52,"cg/bu/bu蓮_通常バグ_normal.png");

	//RhymeDrawLoop();
	CreateProcess("プロセスぶれ１", 150, 0, 0, "RhymeDrawLoop");
	SetAlias("プロセスぶれ１","プロセスぶれ１");

	Move("キャラ蓮", 300, 167, @0, AxlDxl, false);
	Move("絵背景*", 300, @-500, @0, AxlDxl, false);
	Move("キャラ蓮2", 300, 162, @0, AxlDxl, true);

	SetBlur("キャラ蓮2", true, 2, 200, 100, false);
	MoveFTP1("@キャラ蓮2",3000,15,4);

	Request("プロセスぶれ１", Start);
	Request("プロセス表示１", Start);

	Wait(1000);
	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	SoundPlay("@dm017",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I turn and find Ren standing behind me&.

The human version&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000020a01">
"Ren&.&.&.!"

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/0000030a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
He glares at me&, motionless&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(300);
	CreateTextureEX("event", 10000, -539, -259, "cg/ev/l/ev900ライム対戦蒼葉VSバグ蓮_l.jpg");
	Request("event", Smoothing);

	Zoom("event", 0, 700, 700, null, true);

	Zoom("event", 800, 600, 600, Dxl1, false);
	Fade("event", 500, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024a]
His body&.&.&. had changed an awful lot&.

Maybe because of that bug&. He's covered in errors&, and his arm is distorted like I've never seen before&.

Just looking at him makes it painful to breathe&.

Why&.&.&.
Probably because I couldn't save him earlier&.

Before he turned out this way&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(200);

	FadeDelete("event", 500, null, true);

	Wait(500);

	CreateTextureEX("絵板写", 2000, Center, Middle, "cg/ef/efbg効果01.jpg");
	Request("絵板写", Smoothing);
	Zoom("絵板写", 0, 1000, 1000, null, true);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Request("絵板写", Smoothing);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵板写", 100, 1000, null, false);
	Zoom("絵板写", 250, 1500, 1500, Dxl1, true);

	Request("プロセス*", Stop);
	Delete("キャラ*");
	Delete("プロセス*");
	Delete("蓮*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Before I could even speak to him&, Ren dashed towards me 
across the surface of the smooth floor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateTextureEX("絵背景", 200, Center, Middle, "cg/bg/l/bg206011_0_暴露蓮_l.jpg");
	Request("絵背景", Smoothing);
	Fade("絵背景", 0, 1000, null, true);

	CreateTextureEXadd("絵背景EF01", 3000, center, -729, "cg/ef/efx01剣閃02.jpg");
	Rotate("絵背景EF01", 0, @0, @0, 90, null,true);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	CreateSE("SE02","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 300, @0, 0, Dxl2, false);

	FadeDelete("絵背景EF01", 200, Axl1, false);

	Move("絵背景", 300, 0, @0, Dxl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵板写", 200, 2000, 2000, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);

	Wait(100);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000040a01">
"-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I somehow avoid his attack by jumping&, and fall 
in a heap to the side&.

When I try to get up&, Ren jumps up and slashes me with his arms which were as sharp as blades&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	CreateTextureEX("キャラ蓮", 500, 280, -50, "cg/bu/bu蓮_通常バグ_normal.png");
	Zoom("キャラ蓮", 0, 800, 800, null, true);

	Zoom("キャラ蓮", 200, 1000, 1000, Dxl1, false);
	Shake("キャラ蓮", 200, 5, 0, 0, 0, 1000, null, false);
	Fade("キャラ蓮", 200, 1000, null, false);
	Move("絵背景", 200, -50, @0, Dxl2, false);
	Move("キャラ蓮", 200, 162, @0, Dxl2, false);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000050a01">
"&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(100);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");

	CreateTextureEXadd("絵背景EF01", 1000, -716, -729, "cg/ef/efx01剣閃01.jpg");
	CreateTextureEXadd("絵背景EF02", 1000, 0, -729, "cg/ef/efx01剣閃03.jpg");
	Rotate("絵背景EF02", 0, @0, @0, 180, null,true);

	MusicStart("SE03",0,700,0,1000,null,false);

	Zoom("キャラ蓮", 120, 2000, 2000, Axl1, false);
	FadeDelete("キャラ蓮", 120, Axl2, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 200, 0, 0, Dxl2, false);
	FadeDelete("絵背景EF01", 200, Axl2, false);

	Wait(80);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵背景EF02", 0, 1000, null, true);
	Move("絵背景EF02", 200, -716, 0, Dxl2, false);
	FadeDelete("絵背景EF02", 200, Axl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I dodge both of his swings&. But his offensive is in no way slow&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 500, 10, 5, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 500, null, false);


	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000060a01">
"Guh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Unable to escape this attack&, I guard myself with my fists against his arms&.

The back of my hand is shocked and numbed by the ferocity 
of the blows raining down on it&.

Ren&.&.&. is seriously trying to kill me&.

Even with Ren as close as he is&, his eyes don't show 
any emotion&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000070a01">
"&.&.&.I'm sorry&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
The words come out of my mouth&.

And at that moment&, Ren threw me away&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵板写", 2000, Center, Middle, "cg/ef/efbg効果03.jpg");
	Request("絵板写", Smoothing);
	Zoom("絵板写", 0, 1000, 1000, null, true);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Request("絵板写", Smoothing);

	CreateTextureEXadd("絵背景EF01", 3000, center, middle, "cg/ef/efx01剣閃01.jpg");
	CreateColorEX("絵色黒", 5000, "BLACK");

	CreateSE("SE01","se戦闘_打撃_ヒット低03");
	CreateSE("SE02","se戦闘_動作_跳躍高01");

	MusicStart("SE02",0,700,0,1000,null,false);

	Zoom("絵背景EF01", 200, 2000, 2000, Dxl1, false);
	Shake("絵背景EF01", 300, 10, 20, 0, 0, 1000, null, false);

	Fade("絵背景EF01", 0, 1000, null, true);
	FadeDelete("絵背景EF01", 300, null, false);

	Fade("絵板写", 100, 1000, null, false);
	Zoom("絵板写", 350, 1500, 1500, Dxl1, false);

	Wait(150);

	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景", 1000, 0, 10, 0, 0, 1000, null, false);
	Move("絵背景", 300, -512, @0, Dxl2, false);
	FadeDelete("絵板写", 200, null, false);

	Fade("絵色黒", 500, 1000, Axl1, true);
	CreateSE("SE04","se人体_衝撃_転倒01");
	MusicStart("SE04",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000080a01">
"&.&.&.!!"

{	DeleteFw();}
Without any defenses&, I took the blow and hit the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(50);

	CreateTextureEX("絵背景", 200, Center, Middle, "cg/bg/bg206011_0_暴露蓮.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Fade("絵背景", 0, 1000, null, true);

	CreateTextureSP("キャラ蓮", 500, 1024, -52, "cg/bu/bu蓮_通常マントなし_normal.png");
	Fade("キャラ蓮", 0, 500, null, true);
	CreateTextureSP("キャラ蓮2", 300, 1024, -52, "cg/bu/bu蓮_通常マントなし_normal.png");
	Fade("キャラ蓮2", 0, 500, null, true);

	CreateTextureEX("蓮バグ01", 300, 167, -52, "cg/bu/bu蓮_通常バグ_normal.png");
	CreateTextureEXmul("蓮バグ02", 300, 167, -52, "cg/bu/bu蓮_通常バグ_normal.png");
	CreateTextureEXsub("蓮バグ03", 300, 167, -52, "cg/bu/bu蓮_通常マントなし_normal.png");

	DrawEffect("蓮バグ01", 0, "SuperWave", 20, 20, null);
	//DrawEffect("蓮バグ02", 0, "SuperWave", 300, 200, null);
	//DrawEffect("蓮バグ03", 0, "Ripple", 50, 50, null);

	DrawTransition("蓮バグ01", 0, 300, 300, 200, null, "cg/data/check_03_00_0.png", true);
	DrawTransition("蓮バグ02", 0, 300, 300, 200, null, "cg/data/check_02_00_1.png", true);
	//DrawTransition("蓮バグ03", 0, 500, 500, 100, null, "cg/data/check_02_00_1.png", true);

	$ライトナット名１ = @蓮バグ01;
	$ライトナット名２ = @蓮バグ02;
	$ライトナット名３ = @蓮バグ03;
	$ライトタイム = 550;

	CreateProcess("プロセス表示１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセス表示１","プロセス表示１");

	RhymeDrawSet("キャラぶれ",1000,167,-52,"cg/bu/bu蓮_通常バグ_normal.png");

	//RhymeDrawLoop();
	CreateProcess("プロセスぶれ１", 150, 0, 0, "RhymeDrawLoop");
	SetAlias("プロセスぶれ１","プロセスぶれ１");

	Move("キャラ蓮", 0, 167, @0, null, false);
	Move("絵背景*", 0, @-500, @0, null, false);
	Move("キャラ蓮2", 0, 162, @0, null, true);

	Request("@キャラ*", Smoothing);
	Request("@蓮*", Smoothing);

	//Rotate("絵背景", 0, @0, @0, -15, null,true);
	//Rotate("@キャラ*", 0, @0, @0, -15, null,true);
	//Rotate("@蓮*", 0, @0, @0, -15, null,true);
	Zoom("@キャラ*", 0, 1200, 1200, null, true);
	Zoom("@蓮*", 0, 1200, 1200, null, true);

	//SetBlur("キャラ蓮2", true, 2, 200, 100, false);
	//MoveFTP1("@キャラ蓮*",3000,5,3);
	//MoveFTP2("@絵背景",3000,4,2);

	Request("プロセスぶれ１", Start);
	Request("プロセス表示１", Start);

	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
While I was rolling over on the floor&, I saw Ren walking 
up to me&.

Ren&.&.&.

The mortifying way Ren was acting hurt more than the 
pain&.&.&. I was sad&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000090a01">
"&.&.&.Ren&, I'm sorry&. It&.&.&. It must hurt so much&."

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/0000100a06">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000110a01">
"I'm sorry for not realizing&.&.&. I'm so sorry for not
 understanding you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I hold the pain and stand up as Ren looked directly at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000120a01">
"I finally understood&. I remembered you&. Ren&, you&.&.&. were
 always inside of me&. You always watched over me&, didn't
 you?"

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/0000130a01">
"But I still didn't realize&, and kept being spoiled by
 you&.&.&. I'm so sorry&."

{	DeleteFw();}
//人型
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/0000140a06">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateMovieEX("絵動画", 1000, 270, 40, true, true, "dx/mv0003集中線01_白&.ngs");
	Zoom("絵動画",0,2800,2750,null,true);
	Request("絵動画",Smoothing);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵動画", 80, 1000, null, false);

	Zoom("@キャラ*", 200, 1400, 1400, Dxl2, false);
	Zoom("@蓮*", 200, 1400, 1400, Dxl2, true);

	Fade("絵動画", 300, 0, Axl1, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
When I try to take a step forward&, Ren glares at me&.


{	CreateSE("SE01","se人体_衝撃_ビンタ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSPadd("絵色白", 5000, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	FadeDelete("絵色白", 300, null, true);

}
And just then&, a strong spark flashed&, the sound as loud 
as fireworks&.

Unable to even see myself moving forward&, my legs buckle 
and I trip over my own feet&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//以下、dm5510sl.nssへ移動（千代子
//　これは……
//　……拒まれてる？
//　蓮が俺を近付けまいとして、防御の「壁」を張り巡らせる。

	SetVolumeEX("@dm*", 5000, 0, null);

	TextBoxDelete(0);
	Wait(100);
	CreatePlainEX("絵板写", 5000);
	SetShade("絵板写", HEAVY);
	Fade("絵板写", 1500, 1000, null, true);

	Request("プロセス*", Stop);
	Delete("キャラ*");
	Delete("プロセス*");
	Delete("蓮*");

//※次ファイル["dm5510sl.nss"]

}
