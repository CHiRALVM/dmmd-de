//<continuation number="0">
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


scene dm5310.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5320.nss";

}


scene dm5310.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 10, "000000");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg効果01.jpg");
	CreateTextureSPsub("絵背景弐", 101, Center, Middle, "cg/ef/efbg効果01.jpg");

	Zoom("絵背景", 0, 1200, 1200, null, true);

	Fade("絵背景弐", 0, 800, null, true);

	DrawEffect("絵背景", 10000, "LowWave", 0, 150, null);

	Wait(1000);

	CreateSE("SE01","se擬音_悪夢_もぞつく01L");
	MusicStart("SE01",1000,100,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.

&.&.&.

&.&.&.&.&.

&.&.&.&.&.I know this by now&.

It's this dream again&.

{SoundPlay("@dm006",0,450,true);}

The one where I can't move&.
Where my body is eaten&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se擬音_悪夢_もぞつく01L");
	MusicStart("SE11",1000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Even now&.&.&. It's still being eaten&.

There's nothing below my right elbow&.
There's nothing below my left knee&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
And now the lower part of my left elbow&.&.&.
And what's left below my right knee is being eaten&.

In this complete and utter darkness&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ばくん、ばくん、と腕と足が食われる衝撃
//※夢１、２よりも強化

	SetVolumeEX("SE*", 0, 200, null);
	CreateSE("SE01","se擬音_悪夢_噛み千切る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演出", 1000, Center, Middle, "cg/ef/efクリアαの歌声_l.jpg");
	Zoom("絵演出", 350, 2500, 2500, Axl2, false);
	Rotate("絵演出", 350, @0, @0, @300, Dxl2,false);
	Wait(50);
	Fade("絵演出", 200, 1000, Dxl1, true);
	Wait(50);
	CreateColorSP("絵色黒", 5000, "BLACK");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	Delete("絵演*");

	SetVolumeEX("SE11", 500, 700, null);
	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
But there's no pain&.
Just shock&.

In the sound of crunching&, the blackness completely 
devours my arms and legs&.

Gone forever&.
And then next&.&.&.

Is my&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ばくん、と胴体が食われる衝撃
	SetVolumeEX("SE*", 0, 200, null);
	CreateSE("SE01","se擬音_悪夢_噛み千切る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("絵演出", 1000, Center, Middle, "cg/ef/efクリアαの歌声_l.jpg");
	Zoom("絵演出", 350, 2500, 2500, Axl2, false);
	Rotate("絵演出", 350, @0, @0, @600, Dxl2,false);
	Wait(50);
	Fade("絵演出", 200, 1000, Dxl1, true);

	Wait(50);
	CreateColorSP("絵色黒", 5000, "BLACK");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Delete("絵演*");

	Wait(500);
	SetVolumeEX("SE11", 500, 700, null);
	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.My chest began to swell up as the darkness eats away at my torso&.

With an impulse&.

&.&.&.I want to destroy&.

Like how this darkness eats away at me&.

Anything&, everything&.

I want to destroy&. I want to destroy&.

I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.

I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.

That is my true wish&.

My true wish?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSPsub("絵色黒", 5000, "WHITE");

	CreateTextureSP("絵一枚絵", 100, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	Move("絵一枚絵", 0, @0, @-70, null, true);
	CreateSE("SE01","se擬音_効果_ドン01");
	MusicStart("SE01",0,500,0,800,null,false);
	Fade("絵色黒", 0, 0, null, true);
	Wait(100);
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
My&.&.&. true&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSPsub("絵色黒", 5000, "WHITE");

	CreateTextureSP("絵一枚絵", 100, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	Move("絵一枚絵", 0, @0, @-70, null, true);
	CreateSE("SE01","se擬音_効果_ドン01");
	MusicStart("SE01",0,500,0,800,null,false);
	Fade("絵色黒", 0, 0, null, true);
	Wait(100);
	Fade("絵色黒", 1000, 1000, null, true);


	Delete("絵背景*");
	Delete("絵一枚絵");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I want to destroy&.

I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045a]
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045b]
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045c]
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ここだけ白蒼葉
	SetVolumeEX("SE*", 150, 0, null);
	SetVolumeEX("@dm*", 150, 0, null);
	CreateTextureEX("絵一枚絵", 100, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	Fade("絵色黒", 1500, 0, null, true);

	Wait(2000);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,1500,0,1000,null,false);
	Fade("絵一枚絵", 0, 1000, null, true);
	Wait(200);
	Fade("絵一枚絵", 800, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginFN(150);//―――――――――――――――――――――――――――

	WaitAction("@絵一枚絵", null);

	CreateEffectSP("絵効果増大", 20020, Center, Middle, 1024, 576, "Plain");

	CreatePlainSP("絵板写", 20010);
	TextBoxDelete(0);
	Delete("@text0050");

	SetBlur("絵板写", true, 4, 500, 200, false);
	Zoom("絵板写", 2000, 10000, 10000, Axl3, false);
	FadeDelete("絵板写", 2000, null, true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	Zoom("絵一枚絵", 300, 2000, 500, Dxl1, false);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_1.png", true);

	ClearFadeAll(1000, true);

//※次ファイル["dm5320.nss"]

}
