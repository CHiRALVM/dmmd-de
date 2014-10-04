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


scene dm0490.nss_MAIN
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
	$GameName = "dm0500.nss";

}


scene dm0490.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//※背景変更予定
	OnBG(10,"bg101041_3_旧住民区通り裏路地05");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
As evening approaches&, a light delicious smell begins to 
float through the streets&.

So it's dinner time&.
That reminds me&, I wonder if Granny's home?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/bg/bg104021_5_蒼葉宅台所.jpg");
	St("C",1200, @0,@0,"buタエ_通常_normal");
	FadeSt("C",0,true);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Around this time of day&, from time to time I go out with   some people&.

Granny&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");
	DeleteAllSt(0,true);

	FadeDelete("絵板写２", 500, null, true);

	Wait(300);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
&.&.&.I wonder what it is&.

Ever since I played that game&, I've had a bad feeling that won't go away&.

In that game&, Granny was stolen away by some black bats&.

&.&.&.&.&.

Why did that game get sent at such a weird time?

Was it by accident?

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コイル_電話
//※コイル_コイルを操作して電話をかける

	//★『徒歩コイル確認』

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm0490_01","Granny",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Just thinking about it makes my chest hurt&, so I try to 
call Granny from my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コイル_電話
//※コイル_コイルの通信音がしばらく続く

	//○コイル待ち
	CoilWait();

	Wait(5000);

//	SetVolumeEX("SE*", 2500, 1, null);

	//▼⑧コイル電話終了
	CoilPhone_End();

	Wait(1000);

	//▼⑦⑧⑨⑩コイル電話消去
	$coilintoON=true;
	CoilPhoneDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.It isn't going through&.

I'll try the home phone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コイル_コイルの通信音がしばらく続く

	//○コイル待ち
	CoilWait();

	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm0490_02","Home",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//▼①コイル演出表示
	//CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();

	Wait(5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
She's not picking up&.

{
	//▼⑧コイル電話終了
	CoilPhone_End();

	//▼⑦⑧⑨⑩コイル電話消去
	$coilintoON=true;
	CoilPhoneDelete();
}
I'll try Granny's Coil one more time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//○コイル待ち
	CoilWait();

	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm0490_03","Granny",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//▼①コイル演出表示
	//CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();

	Wait(5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.She isn't picking up&.

But she never really used her Coil from the start&.

Instead of sending me a message&, she'd leave a letter by 
the entryway&.

That's why she might've gone out knowing that I probably 
was out with some people&.

Probably&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//▼⑧コイル電話終了
	CoilPhone_End();

	Wait(500);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPhone",300,-50,370);
	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	//CoilAllDelete(300,-50,370);

	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Definitely&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,100);

	CreateTextureSP("絵効果背景", 1000, 0, Middle, "cg/bg/m/bg101021_5_旧住民区通り裏路地01モルヒネ_m.jpg");

	EfRecoIn2(100);

	Wait(500);

	EfRecoOut1(100);

	Delete("絵効果*");
	Delete("絵背景");

	EfRecoIn2(400);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/9000020a01">
"&.&.&.Damn it!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I try hard not to worry&, but I keep thinking about the 
bloodstains scattered everywhere at the Dry Juice hangout&.

I think that's what's gotten me so nervous today&.

I'm thinking too much about not being able to reach Granny&.

But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
&.&.&.I can't do this&. I'm going home&.

I'll feel better when I get home and see Granny safe 
and sound&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I make up my mind&, and run full-speed back home&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0500.nss"]

	Wait(1000);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

	ClearFadeAll(0, true);

}
