//<continuation number="80">
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


scene dm5330.nss_MAIN
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
	#bg304061_5_東江タワー階段=true;
	#bg304062_5_東江タワー階段別アングル=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5340.nss";

	//▼頭痛レベル設定
	$HALevel=4;

}


scene dm5330.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm018",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304141_5_東江タワーパーティホール無人");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -918, -572, "cg/bg/l/bg304141_5_東江タワーパーティホール無人_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);
}
Looking for a safe place to go&, I head towards a door 
inside the hall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Behind it is a staircase&. I began to trek up&, wary for any 
guards going after me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -320, -574, "cg/bg/l/bg304061_5_東江タワー階段_l.jpg");
	Move("絵背景100", 2000, -655, -412, Dxl1, false);
	Fade("絵背景100", 2000, 1000, null, true);

	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
My headache&.&.&. feels even worse while going up the stairs&.
But somehow I keep my feet moving&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//頭痛エフェクト(0)
	HAFade(2000, 0,true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000010a01">
"&.&.&.Ugh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

	Move("絵背景100", 2000, -646, -88, Dxl1, true);

	CreateTextureEX("絵背景霞", 101, -646, -88, "cg/bg/l/bg304061_5_東江タワー階段_l.jpg");
	SetShade("絵背景霞", MEDIUM);
	Fade("絵背景霞", 500, 1000, null, true);
	FadeDelete("絵背景霞", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
&.&.&.Not good&.

It's terrible&. I feel faint&.

{
	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,700,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵背景102", 102, 0, -574, "cg/bg/l/bg304061_5_東江タワー階段_l.jpg");
	Move("絵背景102", 500, -85, -574, Dxl1, false);
	Fade("絵背景102", 500, 1000, null, true);
	Delete("絵背景100");

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 7, 0, 0, 500, null, true);
	Delete("絵板写");
}
When I made it to the stair landing&, I leaned against a 
wall and sat down&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000020a01">
"Haah&, ha&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//頭痛エフェクト(0)
	HAFade(2000, 0,true);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Vehemently going through my bag&, I take out my headache 
medicine&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ピルケース_流しこむ01");
	MusicStart("SE01",0,500,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I just wanted to soften the pain&, so I popped a few pills 
into my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
//頭痛エフェクト(0)
	HAFade(2000, 0,false);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000030a01">
"Urgh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
The streams of sweat run down my temple to my chin&.

I had to wait for the medicine to kick in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
I start to breathe hard&, and take Ren out from my bag 
and put him on my thigh&.

I try to start him up again&, but his small body still 
won't move&.

My chest hurts as I look at him&.

What happened to him&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：コイル演出は後回し
//※コイル操作

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑪蓮メンテ
	CoilRenSet(382,150);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑪蓮メンテ表示
	CoilRenFade();

	//待ち
	CoilWait();

	//○⑪蓮メンテスタート
	CoilRenStart();

	Wait(2000);

	//○⑪蓮メンテ完了
	CoilRenComp();

	Wait(500);

	//×⑤⑪蓮メンテ収納
	$coilintoON=true;
	CoilRenDelete();

	//○コイル待ち
	CoilWait();

	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	//CoilAllDelete(300,400,350);

	//蓮メンテ：メインフレーム開く：エラー
	SetOpenMaintenance(2);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
I open up the control panel on my Coil to see his status&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：コイルエラー

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The entire panel was covered in error messages&.
In short&, he couldn't operate at all&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000040a01">
"Ren&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//蓮メンテ：サブモニター開く(1か2)
	SetOpenSubMaintenance(1);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I mess around on the panel to possibly fix the issue with 
a tap&.

But it's no good&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//蓮メンテ：閉じる
	CloseMaintenance();

	CoilNewDelete(400,100);

	//待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Too exhausted for words&, I closed the control panel and 
held Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵一枚絵", 1000, -28, -107, "cg/ev/m/ev004犬蓮起動_m.jpg");
	Move("絵一枚絵", 1000, -28, -178, Dxl1, false);
	Fade("絵一枚絵", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
He was just like a toy with his eyes closed like that&.

The regret and sadness rushed in as I looked at his husk 
of a body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
What if I can't return him to normal?

I'll do as much as I can&, but Ren is an old type and his 
parts are long out of production&.

My Allmate&.&.&. no&. Ren&, my partner&, is irreplaceable&.

I'm losing what I've always taken for granted&.

The reality of it all leaves me hopeless&.

It's not that I've never thought of what it'd be like 
without Ren&, but reality and my imagination are 
different things&.

It beats down on me how long I've been relying on Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵一枚絵");

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000060a01">
"What should I do now&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 2000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
When I close my eyes&, a face I miss appears&.

Granny&.&.&.

What should I do at a time like this?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※回想→同じシーンと合わせたいがセリフが違う？ため要注意
//※仮→後ほど強化

	CreatePlainSP("絵板写１", 10000);

	Delete("絵黒幕");

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/bg/bg104051_5_蒼葉宅居間.jpg");
	St("C",1740, @0,@0,"stタエ_通常_shout");
	FadeSt("C",0,true);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

//回想元：dm0830.nss"（千代子
//<voice name="タエ" class="タエ" src="voice/dm08/3000330b03">
//「そして、何があっても立ち止まるな。自分が決めた道を信じて、前へ突き進むんだよ」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//※加工：回想
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm53/3000070b03">
"And never stop&, no matter what happens&. Just believe in
 your own choices along the way and keep pushing forward&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 9000, "BLACK");
	Fade("絵黒幕", 500, 1000, null, true);

	Delete("回想*");
	DeleteAllSt(0,true);

	Wait(800);

	DrawDelete("絵黒幕", 500, 100, null, "slide_05_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Believe in your own choices along the way&, and keep pushing
forward&.

&.&.&.That's right&.

I can't let myself stop here&.

There are things I have to do&.

Stop Toue&.
And then save everyone in the Old Resident District&.

So&.&.&.

{
	SoundPlay("@dm016",0,450,true);
}
No matter how much it hurts&, I can't stay at a standstill&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/3000080a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景102", 600, @0, @50, Dxl1, false);
	FadeDelete("絵背景102", 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I put Ren back into my bag&, and then somehow get myself up by pushing my back up against the wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//頭痛エフェクト(0)
	HAFade(2000, 0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
My headache still hasn't gone down&, but I begin to go back up the staircase once more&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景103", 103, Center, Middle, "cg/bg/bg304062_5_東江タワー階段別アングル.jpg");
	Fade("絵背景103", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
I need to get higher&.

Higher&.&.&.
Up to Toue&.

I have no other choice but to go&.

It's something&.&.&. only I can do&.

Stumbling&, with my hands against the wall&, I went up&, step by step&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景104", 104, -247, 0, "cg/bg/l/bg304061_5_東江タワー階段_l.jpg");

	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
&.&.&.While going up the stairs&, I find my journey upwards 
interrupted by a door&.

Did I make it to the highest floor&.&.&.?

When I get closer to the door&, I put up the ID card that I stole from the guard by the side entrance to the 
confirmation monitor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//※次ファイル["dm5340.nss"]

}
