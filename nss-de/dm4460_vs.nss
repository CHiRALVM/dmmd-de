//<continuation number="370">
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


scene dm4460_vs.nss_MAIN
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
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4470scr.nss";

	//▼頭痛レベル設定
	$HALevel=4;

}


scene dm4460_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm008",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",200,true);
}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/6000010b02">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);
	St("C",700, @0,@0,"stクリアα2_通常マスクなし_normal");
	FadeSt("C",180,true);

//―――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Toue looks to α２ while watching α and Clear fight&.

α２ turns his head towards me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000020a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	DeleteFw();

	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	St("C",700, @0,@0,"buクリアα2_通常マスクなし_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I try to dash forward and escape&, but someone grabs my arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000030a01">
"Let go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面マスクなし_serious2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000040a04">
"Aoba-san!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1100,null,false);

	CreateSE("SE02","se人体_動作_絞める01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.Shit&.

α２ holds onto my arm with a solid grip&.
It's like he's made out of metal&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/6000050b02">
"Clear's attention is focused on you&, but I'd like to
 understand something&. Aoba-kun&."

{	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/6000060b02">
"I've heard that your voice has a power to it&, but I
 haven't heard anything much besides that&, only because
 it's taken you so long to notice it yourself&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/6000070b02">
"So please&, let me examine you further&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000080a01">
"This isn't funny&.&.&.!"

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/6000090b02">
"Show Aoba-kun to a different room&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 400, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
α２ pulls my arms and starts to walk&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000100a01">
"Stop&, let me go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304122_5_東江タワー東江の間.jpg");

	St("C",740, @0,@0,"stクリア_正面マスクなし_angry");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000110a04">
"Let go of Aoba-san!!"

{	Fw("fwクリアα_通常マスクなし_sigh");}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/6000120b18">
"Where do you think you're looking?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※クリアαがクリアを殴る
	CreateSE("SE01","se戦闘_打撃_ヒット低03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl3, true);

	DeleteSt("C", 50,true);

	Shake("絵背景", 200, 15, 15, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵色白", 50, Dxl3, true);

	Wait(200);


	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000130a04">
"Guh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
α punches Clear in the face&.

Clear is beaten and tattered&, but is somehow still able to stand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);

	CreateTextureSP("絵演出背景弐", 100, Center, Middle, "cg/bg/m/bg304121_5_東江タワー東江の間_m.jpg");
	CreateTextureSP("絵演出背景", 1000, 0, 0, "cg/ef/efbg効果91.jpg");
	CreateTextureEX("絵演出立絵", 1501, 0, 0, "cg/fu/x/fuクリアα_マスクなし_normal_x01.png");
	CreateTextureEX("絵演出立絵弐", 800, Center, 0, "cg/st/m/stクリアα_通常マスクなし_pride_m.png");
	CreateTextureEXmul("絵演裏", 2001, Center, Middle, "cg/ef/efbg効果01.jpg");

	CreateColorEX("絵演白", 5000, "WHITE");
	Fade("絵背景", 1000, 1000, null, true);

	SetBlur("絵演出立絵", true, 2, 300, 200, false);
	Move("絵演出立絵", 0, @-900, @-100, null, true);
	Move("絵演出立絵弐", 0, @50, @-100, null, true);
	Move("絵演出背景弐", 0, @-200, @-50, null, true);

	Zoom("絵演出背景", 0, 1500, 1000, null, true);
	Move("絵演出背景", 0, @500, @0, null, true);

	Move("絵演出背景", 4600, @-4500, @0, null, false);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演出立絵", 1000, 100, @0, null, false);
	FadeDelete("絵板写", 200, null, true);
	StepStep_ara("プロクリア","絵演出立絵");
	FadeDelete("絵演出立絵", 1000, null, true);

	Wait(1000);

//覇：音に合わせて画面シェイクと光
	CreateSE("SE01","se戦闘_打撃_ヒット複数02");
	MusicStart("SE01",0,700,0,1100,null,false);

	//200
	Fade("絵演白", 0, 1000, null, true);
	DrawTransition("絵演白", 100, 0, 1000, 100, Axl1, "cg/data/circle_11_00_0.png", true);
	Wait(50);
	Fade("絵演白", 100, 0, Dxl3, true);
	//450

	Wait(100);

	//550
	Fade("絵演白", 0, 1000, null, true);
	DrawTransition("絵演白", 50, 0, 1000, 100, Axl1, "cg/data/circle_07_00_0.png", true);
	Wait(10);
	Fade("絵演白", 50, 0, Dxl3, true);
	//660
	Fade("絵演白", 0, 1000, null, true);
	DrawTransition("絵演白", 50, 0, 1000, 100, Axl1, "cg/data/circle_01_00_0.png", true);
	Wait(10);
	Fade("絵演白", 50, 0, Dxl3, true);
	//770

	Wait(50);

	//820
	Fade("絵演白", 0, 1000, null, true);
	DrawTransition("絵演白", 50, 0, 1000, 100, Axl1, "cg/data/circle_08_00_0.png", true);
	Wait(10);
	Fade("絵演白", 50, 0, Dxl3, true);
	//930

	Wait(100);

	//1030
	Fade("絵演白", 0, 1000, null, true);
	DrawTransition("絵演白", 50, 0, 1000, 100, Axl1, "cg/data/circle_10_00_0.png", true);
	Wait(10);
	Fade("絵演白", 50, 0, Dxl3, true);
	//1140

	Wait(100);

	//1240
	Fade("絵演白", 0, 1000, null, true);
	DrawTransition("絵演白", 50, 0, 1000, 100, Axl1, "cg/data/circle_12_00_0.png", true);
	Wait(10);
	Fade("絵演白", 50, 0, Dxl3, true);
	//1350

	SetVolumeEX("SE*", 200, 0, null);
	Wait(300);

	Fade("絵演出立絵弐", 500, 1000, null, false);
	Move("絵演出立絵*", 2000, @30, @0, Dxl1, false);

	Wait(500);

	FadeDelete("絵演出立絵", 500, null, false);
	FadeDelete("絵演出背景", 500, null, false);
	Move("絵演出背景弐", 2000, @-15, @0, Dxl1, false);
	Move("絵演出立絵*", 2000, @-30, @0, Dxl1, false);

	Wait(1000);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl1, true);

	DeleteSt("C", 0,true);
	Delete("絵演*");
	Delete("絵演出*");
	Delete("プロ*");
	Delete("絵板*");
	Delete("絵背景");

	FadeDelete("絵色白", 300, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
α laughs and circles Clear&, attacking him as he goes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl1, true);
	FadeDelete("絵色白", 100, Dxl1, true);

	CreateTextureEX("絵背景100", 100, -256, -144, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
	Move("絵背景100", 300, -86, -272, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fwクリア_正面マスクなし_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000140a04">
"Urgh&.&.&."

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000150a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演出", 1000, Center, Middle, "cg/ef/efx03血飛沫02.jpg");
	Request("絵演出", Smoothing);
	Zoom("絵演出", 0, 1300, 1300, null, true);

	CreateSE("SE01","se戦闘_血_垂れる02");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeFR("絵演出",300,800,300,5,-10,50,Dxl1, true)

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
α kicks him in the stomach&, and Clear falls to his knees&. Red blood drips from his mouth and parts of his skin are 
scattered about on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
A smell rises to my nose&.

It doesn't smell like blood&. Is it oil&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景100");
	Delete("絵演出");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	St("C",700, @0,@0,"stクリアα_通常マスクなし_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/6000160b18">
"Well&, let's end this&. I'll make sure to finish you off&."

{	Fw("fwクリア_正面マスクなし_pinch");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000170a04">
"&.&.&.&.&."

{	St("C",700, @0,@0,"stクリアα_通常マスクなし_pride");
	FadeSt("C",200,true);}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/6000180b18">
"This time&, it's bye-bye for real&. Okay&, brother?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	Delete("絵背景");

	FadeDelete("絵板写", 500, null, true);

	Wait(100);

	St("C",740, @0,@0,"stクリア_正面マスクなし_serious");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
With an expression not unlike that of a predator cruelly 
tormenting his prey&, α stands in front of Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：位置要調整口元だけ

	CreateWindowEX("絵窓", 0, 0, 1024, 350, false);
	CreateTextureEX("絵窓/絵立絵", 1000, Center, -175, "cg/fu/fuクリア_正面マスクなし_pride.png");

	CreatePlainSP("絵板写", 5000);
	CreatePlainEX("絵霞", 800);
	CreateTextureSP("絵窓上枠", 1100, 0, -177, "cg/mask/ciライン_00_00z.png");
	CreateTextureSP("絵窓下枠", 1100, 0, 63, "cg/mask/ciライン_00_00z.png");
	CreateColorEX("絵色黒下", 801, "000000");

	DrawTransition("絵窓/絵*", 0, 0, 520, 0, Dxl1, "cg/data/slide_05_00_1.png", true);

	SetShade("絵霞", SEMIHEAVY);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
Clear glares at him silently&.&.&.<k><?>

{
	DeleteAllSt(200,false);
	SetVolumeEX("@dm*", 1000, 0, null);
	Fade("絵窓/絵立絵", 0, 1000, null, true);
	Fade("絵色黒下", 300, 500, null, false);
	Fade("絵霞", 300, 1000, null, false);
	Move("絵窓/絵立絵", 300, @0, -204, Dxl1, false);
	DrawDelete("絵板写", 300, 200, Dxl3, "slide_05_01_0", true);

	FadeDelete("絵色黒下", 250, null, false);
	CreatePlainSP("絵板写", 5000);
	Delete("絵窓/絵*");
	Delete("絵霞*");
	Delete("絵窓*");
	DrawDelete("絵板写", 250, 100, Dxl1, "slide_05_01_1", true);
}
and a smile widens on his   face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/6000190b18">
"What&, are you completely broken now?"

{	St("C",740, @0,@0,"stクリア_正面マスクなし_serious");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000200a04">
"&.&.&.I was a failed work&, so I can do something that you'd
 never expect&."

{	St("C",740, @0,@0,"stクリア_正面マスクなし_think");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000210a04">
"So I have no reason to be afraid anymore&. You can't
 understand anything beyond your calculations&."

{
	St("C",740, @0,@0,"stクリア_正面マスクなし_smile");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000220a04">
"And I&.&.&. can do anything I want without someone's
 instruction&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
Clear puts his hand in his coat pocket and takes something out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵窓", 2010);//ナット名、優先度

	CreateStencil("絵窓/絵刃",1002,center,Middle,128,"cg/ef/efクリアナイフ.png",false);
	CreateColorSP("絵窓/絵刃/絵色黒", 1001, "BLACK");
	CreateTextureSP("絵窓/絵シェード用", 500, -300, InBottom, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	Move("絵窓/絵刃", 0, @0, @-71, Dxl1, true);

	SetVolumeEX("SE*", 0, 0, null);

	SetShade("絵窓/絵シェード用", MEDIUM);

	FadeDelete("絵板写", 100, null, false);

	Move("絵窓/絵刃", 500, @0, @-50, Dxl1, false);
	OpenTateMask("絵窓",200, 1100,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

	Rotate("絵窓/絵刃", 500, @0, @0, @90, null,false);
	Move("絵窓/絵刃", 500, @80, @-410, Dxl1, false);

	Wait(200);

	CloseTateMask("絵窓",300,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	CreateSE("SE01","se戦闘_動作_ナイフ構える01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Wait(10);
	Delete("絵窓*");
	FadeDelete("絵色白", 100, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
Is that&.&.&. a knife!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/6000230b18">
"&.&.&.What are you up to?"

{
	St("C",740, @0,@0,"buクリア_正面マスクなし_smile");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000240a04">
"Something that you couldn't even dream of doing&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵霞", 100, Center, Middle, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");

	St("L",740, @0,@0,"fuクリア_正面マスクなし_smile");
	FadeSt("L",0,true);

	SetShade("絵霞", MEDIUM);

	Move("@StNameL/L*", 0, -170, @0, null, true);
	Move("絵霞", 0, @-30, @0, null, true);

	Move("@StNameL/L*", 1000, -195, @0, Dxl1, false);
	Move("絵霞", 1000, @-10, @0, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);
//	DrawDelete("絵板写", 500, 100, null, "beam_01_00_1", true);

	Wait(500);
	CreateSE("SE01","se戦闘_銃_構える02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl3, true);

//	CreatePlainSP("絵板写", 3000);

	CreateMaskSetSP("絵窓右", 2000, 0, 0, "ciスラッシュ_05_01", true, "ciスラッシュ_05_00z");
	CreateTextureSP("絵窓右/絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	Move("絵窓右/絵背景", 0, @384, @0, null, true);

	St("R",740, @0,@0,"stクリアα_通常マスクなし_shock");
	FadeSt("R",0,true);

//	FadeDelete("絵色白", 100, Dxl3, true);
//	Wait(500);

	DrawDelete("絵色白", 200, 100, Dxl1, "circle_09_00_1", true);

	Wait(500);
*/

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵霞", 100, -260, -100, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");

	St("ML",740, @0,@0,"buクリア_正面マスクなし_smile");
	FadeSt("ML",0,true);

	SetShade("絵霞", MEDIUM);

	DeleteSt("C", 0,true);

	Move("@StNameML/ML*", 800, @-85, @0, Dxl1, false);
	Move("絵霞", 800, -323, -100, Dxl1, false);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);
	CreateSE("SE01","se戦闘_銃_構える02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl3, true);

	CreateMaskSetSP("絵窓右", 2000, 0, 0, "ciスラッシュ_05_01", true, "ciスラッシュ_05_00z");
	CreateTextureSP("絵窓右/絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	Move("絵窓右/絵背景", 0, 245, 0, null, true);

	St("R",740, @0,@0,"stクリアα_通常マスクなし_shock");
	FadeSt("R",0,true);

	DrawDelete("絵色白", 200, 100, Dxl1, "circle_09_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
A fearless grin floats to his face&, and he points the 
knife's tip to his own head and holds it there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000241a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
What is he trying to do&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/6000250b02">
"&.&.&.Oh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
Toue's voice holds a tint of wonder in it&, and I free one 
of my hands from α２'s grip&.

α２&, who was taking me along&, stops moving&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @-85,@0,"buクリア_正面マスクなし_serious2");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000260a04">
"I'm certain that the key lock circut is around here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("R",740, @0,@0,"stクリアα_通常マスクなし_pinch");
	FadeSt("R",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/6000270b18">
"! No way&.&.&. I can't believe you'd do something so stupid&.
 I don't understand you&."

{	St("ML",740, @-85,@0,"buクリア_正面マスクなし_serious");
	FadeSt("ML",200,true);}

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000280a04">
"It's fine if you don't&. You don't need to&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	CreatePlainSP("絵板写", 8000);

//	DeleteSt("C", 0,true);
	DeleteSt("ML", 0,true);

	Delete("絵窓/絵*");
	Delete("絵窓*");
	Delete("絵霞");

	CreateTextureSP("絵霞", 1000, Center, Middle, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	CreateTextureSP("絵立絵大", 2005, -450, Middle, "cg/fu/x/fuクリア_通常マスクなし_worry_x01.png");
	CreateTextureSP("絵立絵大弐", 2004, -450, Middle, "cg/fu/x/fuクリア_通常マスクなし_worry2_x01.png");

	Request("絵霞", Smoothing);
	Zoom("絵霞", 0, 1300, 1300, null, true);
	SetShade("絵霞", SEMIHEAVY);

	Move("絵立絵大*", 1500, @-50, @0, Dxl1, false);
	Move("絵霞", 1500, @-30, @0, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);
*/

	CreatePlainSP("絵板写", 8000);

	DeleteAllSt(0,true);
	Delete("絵窓/絵*");
	Delete("絵窓*");
	Delete("絵霞");

	CreateTextureSP("絵霞", 500, -235, -0, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	Request("絵霞", Smoothing);
	SetShade("絵霞", SEMIHEAVY);

	FadeDelete("絵板写", 500, null, true);

	St("C",740, @15,@0,"fuクリア_通常マスクなし_worry");
	Move("@StNameC/C*", 300, @-15, @0, Dxl1, false);
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
Clear takes a sidelong glance to me&.

I can see a tender sadness in his eyes&, mixed with 
different colors&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuクリア_通常マスクなし_worry2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000290a04">
"Aoba-san&. I will keep my promise&. I will definitely
 protect you&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000300a01">
"Stop&, Clear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuクリア_通常マスクなし_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000310a04">
"It'll be fine&. Please believe in me&."

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000320a01">
"That's not what I mean!"

{

	St("C",740, @0,@0,"fuクリア_通常マスクなし_serious");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000330a04">
"I will protect you&, not because I'm ordered to&, but
 because I choose to&, as the first thing I'll do using my
 own free will&."

{
	St("C",740, @0,@0,"fuクリア_通常マスクなし_smile");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/6000340a04">
"So please&, let me protect you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
A fleeting smile flashes by his face while holding the 
knife in his hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
	Delete("絵立*");
	Delete("絵霞");

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 300, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0295]
Without hesitation&, his hand&.&.&. swings to the side&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常力行使_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000350a01">
"Clear!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
I scream with all I have to try to stop Clear&.

I look at him with desperate&, pained eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：３
$HALevel=3;
//※どくん、と頭痛
//頭痛エフェクト(0)

	SetVolumeEX("@dm*", 0, 0, null);

	HAFade(2000, 0,false);

	CreateColorEX("絵色黒2", 1000, "000000");
	Fade("絵色黒2", 1000, 300, null, false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/6000360a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：４
$HALevel=4;

//※どくん、どくんと頭痛
//頭痛エフェクト(0)
//頭痛エフェクト(0)

//※頭痛レベル：４
//※どくん、と頭痛
//頭痛エフェクト(0)

	HAFade(2000, 0,false);

	Fade("絵色黒2", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0312]
My head hurts&.
It feels like it's ripping apart&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※白蒼葉の幻影

/*
	CreateTextureEX("絵ＥＶ", 50, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	CreateColorSP("絵演黒隠", 60, "000000");
	DrawTransition("絵演黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵ＥＶ", 0, 1000, null, true);

	CreateSE("SE01","se擬音_効果_ドン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", 100, 0, Dxl2, true);
	Wait(200);
	Fade("絵色黒", 100, 1000, Dxl2, true);

	Wait(500);

	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");
	MusicStart("SCRAPINSE01",3000,700,0,1000,null,true);
*/

	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

	Delete("絵色黒2");

	CreateColorSP("絵色黒2", 1099, "000000");

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,45,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	$HALevel=4;

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,true);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
This sensation&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");
	MusicStart("SCRAPINSE01",3000,700,0,1000,null,true);

	SetVolumeEX("SCRAPINSE01", 200, 200, null);
	EfRecoIn1(10000,200);

	Delete("絵演*");
	Delete("絵色黒*");

	CreateTextureSP("絵効果背景", 100, Center, Middle, "cg/bg/bg104021_5_蒼葉宅台所.jpg");

	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",0,true);

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//※回想
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm44/6000370b03">
"If you're doing it to someone you know well&, and have a
 deep wish or desire&, you will most likely be able to plant
 that into their consciousness with your own&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SCRAPINSE01", 2000, 700, null);
	EfRecoOut1(100);

	Delete("絵ＥＶ*");
	Delete("絵効果*");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
Then&, maybe I can&.&.&.

Scrap&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ScrapIn("転送暴露a",2000);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();
	Wait(2000);

//※次ファイル["dm4470scr.nss"]

}
