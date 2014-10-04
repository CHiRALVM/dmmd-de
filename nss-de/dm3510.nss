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


scene dm3510.nss_MAIN
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
	#ev960クリアα力行使a=true;
	
	#bg304102_5_東江タワー中ホールアングル別=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3520.nss";

}


scene dm3510.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se人体_動作_指鳴らす01");//あきゅん「ＳＥ：se人体_動作_指鳴らす01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);}
As Toue says that&, he raises his hand and snaps his 
fingers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリアα_通常マスクあり_normal");
	FadeSt("C",200,true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
One of the guards from the back walks up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/1000010b02">
"Originally&, I didn't want to use such measures&.&.&. but
 you're my last hope&. I can't just let you go&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
The guard spans his arms out and takes a deep breath&.
He looks as if he's posing as an opera singer&.

But&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm020",2000,450,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/1000020a01">
"&.&.&.Wait&, a song?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：クリアα歌声」
	CreateTextureEX("絵ＥＶ", 1100, Center, -500, "cg/ev/ev960クリアα力行使a.jpg");
	Move("絵ＥＶ", 1500, @0, 0, Dxl1, false);
	Fade("絵ＥＶ", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The guard actually started to sing&.

It rings out at a high key and the strange melody echoes 
throughout the white space&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ", 500, @0, 0, Dxl1, true);

	dm3510song();

	FwPro("fw蒼葉_通常_worry4",1200,"fw蒼葉_通常_pinch");
//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/1000030a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainEX("絵板写", 5000);
	Zoom("絵板写", 0, 1050, 1050, null, true);
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeFFR2("絵板写", 0,800, 200, 0, 0, 50,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
As the melody enters my ears&, I'm hit with a shock of pain 
inside my head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：クリアα歌声効果、とりあえず仮入れ」
//あきゅん「↓：リップルよりもカメラをぐるぐる回したほうが効果的かも」
//	CreatePlainSP("絵板写", 5000);
//	DrawEffect("絵板写", 0, "Ripple", 100, 100, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("絵ＥＶ");
	dm3510songdelete();

	CreateTextureEX("絵霞", 1500, Center, 0, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	Request("絵霞", Smoothing);
	Zoom("絵霞", 0, 1250, 1250, null, true);


	$ループムーブナット名 = "@絵霞";
	$ループムーブタイム = 25000;
	CreateProcessEX("プロセスメマイ", "FlyMovingXXX");
	Request("プロセスメマイ", Start);

	Fade("絵霞", 0, 600, null, true);

	Wait(16);
	DrawDelete("絵黒幕", 200, 100, null, "slide_03_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
My vision goes darker and darker&, and I can feel my legs 
starting to give out from under me&.

What?
What's going on&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_戦闘_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/1000040a05">
"&.&.&.! This song&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Mink deeply groans as his expression twists in pain&.

Even Mink is affected&.&.&.?

Is it because of this song?
What the hell is that song doing&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st東江_通常_normal");
//	FadeSt("C",0,true);

//	CreatePlainSP("絵板写弐", 4990);
//	DrawEffect("絵板写弐", 0, "Ripple", 100, 100, null);

//	FadeDelete("絵板写", 1000, null, true);
	Fw("fw東江_通常_smile");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/1000050b02">
"Heh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Toue laughs behind the singing guard&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/1000060b02">
"Now&, this is a test&. I wonder how long you can hold
 out for?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DrawEffect("絵板写弐", 5000, "Ripple", 100, 200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I see Toue's face&.&.&. distorting&, as he speaks&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/1000070a01">
"&.&.&.Ugh&.&.&."

{	Fw("fwミンク_戦闘_pain");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/1000080a05">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	OnBG(10,"bg304102_5_東江タワー中ホールアングル別");
//	FadeBG(0,true);
//	St("C",740, @0,@0,"stミンク_戦闘_pain");
//	FadeSt("C",0,true);

//	CreatePlainSP("絵板写参", 4980);
	CreateTextureEXmul("絵背景", 2000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵背景", 0, 1250, 1250, null, true);
	CreateSE("SE01","se擬音_悪夢_もぞつく01L");//あきゅん「ＳＥ：se擬音_効果_ノイズ01」
	MusicStart("SE01",0,700,0,1000,null,true);
	Shake("絵背景", 100000, 2, 1, 0, 0, 500, null, false);
	Fade("絵背景", 0, 500, null, true);
	Fade("絵背景", 100, 0, null, true);
	Fade("絵背景", 0, 500, null, true);
	Fade("絵背景", 100, 0, null, true);
	Fade("絵背景", 0, 500, null, true);
	Fade("絵背景", 500, 0, null, true);
	CreateColorEX("絵色黒", 1500, "000000");
	SetVolumeEX("SE01", 2000, 0, null);
	Fade("絵色黒", 3000, 800, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.Not good&.

The song is echoing in my head&, his voice like a raging 
flood in my mind&.&.&.

I can't think&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DrawEffect("絵板写参", 0, "Ripple", 200, 200, null);
//	FadeDelete("絵板写弐", 500, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
In my hazy vision&, I see Mink staggering&.

Mink&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 100, 0, null);
	CreateSE("SE01","se擬音_効果_ノイズ01");//あきゅん「ＳＥ：se擬音_効果_ノイズ01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵演効果", 5000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演効果", 0, 1100, 1100, null, true);
	Wait(30);
	Fade("絵色黒", 0, 900, null, true);
	Fade("絵演効果", 70, 0, null, true);

//↓演出が入るなら以下２つ地の文なくてもいいような（千代子
//※削除しました

//※ざざっざざっと画面に砂嵐がちょいちょい入ってきて、

	CreateSE("SE01","se擬音_効果_ノイズ01");//あきゅん「ＳＥ：se擬音_効果_ノイズ01」
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演効果", 0, 1000, null, true);
	Wait(10);
	Fade("絵演効果", 70, 0, null, true);

	Wait(10);

	CreateSE("SE01","se擬音_効果_ノイズ01");//あきゅん「ＳＥ：se擬音_効果_ノイズ01」
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演効果", 0, 1000, null, true);
	Wait(10);
	Fade("絵演効果", 70, 0, null, true);
	Fade("絵色黒", 1000, 1000, null, true);

	CreateSE("SE01","se擬音_効果_ノイズ01");//あきゅん「ＳＥ：se擬音_効果_ノイズ01」
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演効果", 0, 1000, null, true);
	//Shake_Loop("@絵演効果","shake01");
	SetBlur("絵演効果", true, 2, 500, 10, false);
	Shake("絵演効果", 60000000, 0, 20, 0, 0, 1000, null, false);
	Delete("絵板写*");
	Delete("プロセスメマイ");
	Delete("絵霞");

//↓これ地の文？コメントアウト付け忘れた系の説明では。（千代子
//※削除しました

//※次ファイル["dm3520.nss"]

}
