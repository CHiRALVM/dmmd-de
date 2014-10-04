//<continuation number="40">
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


scene dm4492.nss_MAIN
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

	#bg304181_5_東江タワー白い部屋=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4493ed.nss";

}


scene dm4492.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304181_5_東江タワー白い部屋");
	FadeBG(0,true);

	Lens_Set("レンズ１",5000,-300,-400,1500,1500);
	Lens_Start(3500);

	FadeDelete("上背景", 1000, null, true);

//※演出：場面暗転

	DrawTransition("絵色黒", 500, 1000, 800, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("絵色黒", 500, 800, 1000, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
	DrawTransition("絵色黒", 1500, 1000, 300, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",3000,250,0,100,null,true);

	CreateSE("SE02","se擬音_コミカル_シュコー01");
	MusicStart("SE02",3000,300,0,500,null,true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
...When I open my eyes&, all I see is pure white&.

A while ceiling&, white walls&, a white floor&.

But it's different from Oval Tower&.

It's even more inhumanly cold&.

I can hear electric sounds beeping at fixed intervals&, and it bothers me&.

Unable to move&, I do nothing but stare at the ceiling&.

Drops of a clear liquid fall&, descending ever so slowly&.

Like a small snake eating at me&, a tube is fixated to my 
body&.

I don't know how many times my body has been tampered with&.

The violent pain from the examinations and the repeated 
experiments&.&.&.

I can't feel anything anymore&.

I wonder when I started to forget&.

All that I have is my white world&.

A completely isolated world&.

Whether I'm dead or alive&, it doesn't matter anymore&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 0, null);

	TextBoxDelete(0);

	DrawTransition("絵色黒", 3000, 300, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(2000);

//※こつこつと靴音が近付いてきて、立ち止まる
	CreateSE("SE03","se人体_足音_歩く03L");
	MusicStart("SE03",3500,600,0,900,null,false);

	CreateTextureSP("絵背景2", 2000, -383, -207, "cg/bg/m/bg304181_5_東江タワー白い部屋_m.jpg");

	Delete("レンズ*");

	Wait(4500);

	SetVolumeEX("SE*", 50, 0, null);

	CreateColorSP("絵黒幕", 5000, "BLACK");

	Wait(600);

	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9200010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Someone walks up to me&.

It must be another researcher in a white coat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

	CreateColorSPadd("絵色白", 2000, "FFFFFF");
	Fade("絵色白", 1500, 500, null, false);

	DrawDelete("絵黒幕", 1500, 100, null, "slide_05_00_0", true);
	Move("絵背景2", 800, @-80, @0, Dxl1, false);
	FadeDelete("絵色白", 800, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Or so I thought&, but a bright color comes to my eyes&.

And my world begins to blur&.&.&.<k>
It's like a bulb of light&.

A small light that shines over me as I lay trapped in this white world&.

I see two moles on his chin&.<k>
When I see them&, an old happiness fills my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(200);

	CreatePlainSP("絵板写", 10000);
	Delete("絵背景2");

//※演出：演出強化_視線移動→stの足元or口元を表示等
	CreateTextureSP("絵背景", 200, Center, -250, "cg/bg/m/bg304181_5_東江タワー白い部屋_m.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	CreateTextureSP("キャラ", 210, Center, -1550, "cg/st/x/stクリア_通常マスクなし_normal_x.png");

	FadeDelete("絵板写", 1000, null, false);

	Move("絵背景", 3000, @0, @300, Dxl1, false);
	Move("キャラ", 3000, @0, @150, Dxl1, true);

	CreatePlainSP("絵板写", 1000);

	Move("キャラ", 0, @0, -400, null, true);

	Wait(400);

	FadeDelete("絵板写", 1000, null, false);

	Move("絵背景", 3000, @0, @150, Dxl1, false);
	Move("キャラ", 3000, @0, -237, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9200020a04">
"Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
He smiles&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9200030a04">
"From now on&, we'll always be together&. I've gotten
 permission from Toue&. Always&, and forever&.&.&."

{
	CreatePlainSP("絵板写", 500);

	CreateTextureEX("キャラ2", 211, Center, -237, "cg/st/x/stクリア_通常マスクなし_normal2_x.png");
	Fade("キャラ2", 0, 1000, null, true);

	FadeDelete("絵板写", 300, null, true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9200040a04">
"You're mine now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 4000, 1000, Axl1, true);

	Wait(2000);

	ClearFadeAll(2000, true);

//※次ファイル["dm4493ed.nss"]

}
