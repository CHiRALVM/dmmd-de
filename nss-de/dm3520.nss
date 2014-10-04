//<continuation number="120">
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


scene dm3520.nss_MAIN
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
	#ev900昔の荒れてた蒼葉a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3530.nss";

}


scene dm3520.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	//OnBG(10,"bg101011_1_旧住民区通り表");
	//FadeBG(0,true);

//	CreateTextureSP("絵演効果", 3000, Center, Middle, "cg/data/noize_01_00_0.png");
//	Zoom("絵演効果", 0, 1100, 1100, null, true);
//	SetBlur("絵演効果", true, 2, 500, 10, false);
//	Shake("絵演効果", 60000000, 0, 20, 0, 0, 1000, null, false);

	CreateSE("SE11","se擬音_効果_ノイズ01L");//あきゅん「ＳＥ：se擬音_効果_ノイズ01」
	MusicStart("SE11",0,400,0,1000,null,true);
	dm3520noize();
	dm3520noizeFade(0,1000);

	FadeDelete("上背景", 0, null, true);


//※ここから蒼葉の過去（トラウマシーン）チラ見せ
//あきゅん「確認：ノイズの上にシーン乗せたほうが良いか」

	CreateSE("SE01","se擬音_効果_キーン01");//あきゅん「ＳＥ：se擬音_効果_キーン01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateMaskEX("絵覆", 0, 0, 0, "cg/data/effect_01_00_0.png", false);
	CreateTextureSP("絵覆/絵ＥＶ", 3100, Center, Middle, "cg/ev/ev900昔の荒れてた蒼葉.jpg");#ev900昔の荒れてた蒼葉a=true;
	Wait(30);
	Fade("絵覆/絵ＥＶ", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000010a01">
"Is this all you've got?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000020a01">
"Shouldn't you use what you have? Come on&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Is that&.&.&.

My voice?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000030a01">
"It's not like you're going to break anything&. I don't
 exactly get your reasons&, but I've been watching you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	CreateSE("SE01","se擬音_効果_キーン01");//あきゅん「ＳＥ：se擬音_効果_キーン01」
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵覆/絵ＥＶ", 0, 1000, null, true);
	Wait(30);
	Fade("絵覆/絵ＥＶ", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
This is&.&.&.

&.&.&.Me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

SoundPlay("@dm006",0,450,true);

	SetVolumeEX("SE11", 1000, 0, null);

	CreateTextureEX("絵効果", 1100, Center, Middle, "cg/bg/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ.jpg");
	Fade("絵効果", 0, 1000, null, true);
	dm3520noizeFade(1000,75);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
A crowd of people around my age come in doing whatever 
they please&.

There are people taking drugs&, playing around with girls&, 
drinking booze&, and some sleeping&. And&.&.&. some doing Rhyme&.

I mix in with them&, and walk up to the Rhyme players I 
know&.

I'm watching myself do this&.
I'm on the outside looking in&.

But sometimes a weak sound buzzes&.

Like I was immersed in a 3D film&, the fake world I had 
never seen before expanded around me&.

&.&.&.One that I've never seen before?

Wrong&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I&.&.&. know this place&. I've been here&.
And a number of times&, too&.

This is&.&.&.

My past&.

My rough years&.&.&. The memories I had forgotten&.

But why right now&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
//※画面がライムバトル中に切り替わる
	CreateTextureEX("絵背景1", 1000, 0, 0, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	Fade("絵背景1", 0, 1000, null, true);
	Delete("絵効果");

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵フラッシュ白", 200, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000040a01">
"No need to say anything! I can already see it all!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
&.&.&.That's right&, that time&.

For reasons unknown&, I could see my opponent's weaknesses 
in Rhyme&, and that made me an unrivaled champion&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 1000, 0, -200, "cg/ev/m/ev900昔の荒れてた蒼葉_m.jpg");
	Move("絵背景", 500, -256, 0, Dxl1, false);
	CreateSE("SE01","se擬音_効果_力汎用01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000050a01">
"This is boring as fuck&, so I'm gonna just smash you
 right now!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I never wondered why or how I could see that kind of thing&.

It was useful&, anyway&.

That's what I thought&.
That was me back then&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Fade("絵フラッシュ白", 0, 1000, null, true);
	Fade("絵フラッシュ白", 50, 0, null, true);
	Fade("絵フラッシュ白", 0, 1000, null, true);
	Delete("絵背景");
	FadeDelete("絵フラッシュ白", 100, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000060a01">
"Haha&, hahahaha! Ahahahahaha! See you!"

//【対戦者】
<voice name="対戦者" class="対戦者" src="voice/dm35/2000070e57">
"Uwaahhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
&.&.&.Stop!!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 500, "000000");

	SetVolumeEX("@dm*", 300, 0, null);
//※蒼葉の攻撃で対戦者がダウン、ゲームオーバー
//嶋：ＳＥ間違えたらすいません
	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵背景1", 300, 1500, 0, DxlAuto, true);

	Wait(2000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);

	CreateTextureEX("絵bg", 100, Center, Middle, "cg/bg/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ.jpg");
	Fade("絵bg", 0, 1000, null, true);

	CreateTextureEXsub("絵bg2", 100, 0, 0, "cg/bg/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ.jpg");
	Zoom("絵bg2", 0, 1025, 1025, null, true);

	CreateSE("SE11","se環境_ガヤ_ざわつき01L");//あきゅん「ＳＥ：se環境_ガヤ_ざわつき01L」
	MusicStart("SE11",2000,700,0,1000,null,true);

	CreateSE("SE12","se乗物_救急車_サイレン01L");//あきゅん「ＳＥ：se乗物_救急車_サイレン01L」
	MusicStart("SE12",2000,700,0,1000,null,true);

	CreateSE("SE20","se人体_心臓_鼓動02L");

	dm3520RED(100);
	FadeDelete("絵色黒",2000,null,true);
	SetVolumeEX("SE12", 5000, 0, null);


//※画面切り替わる？
//※ざわざわと人がざわめく声、救急車の音とか？
//	CreateSE("SE11","se環境_ガヤ_ざわつき01L");//あきゅん「ＳＥ：se環境_ガヤ_ざわつき01L」
//	MusicStart("SE11",2000,700,0,1000,null,true);
//あきゅん「↓：赤ランプのプロセス流す、だんだんと赤ランプが警告みたいな感じになっていき、明滅の速度が上がり、フラッシュ状態へ。蒼葉の鼓動に繋がるイメージ」
//	CreateSE("SE12","se乗物_救急車_サイレン01L");//あきゅん「ＳＥ：se乗物_救急車_サイレン01L」
//	MusicStart("SE12",2000,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.No&, please stop&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE1*", 2000, 0, null);
	MusicStart("SE20",5000,600,0,1000,null,true);
	dm3520REDS(500,50);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm35/2000080b04">
"A direct hit to the brain&."

{	Shake("絵bg", 300, 0, 3, 0, 0, 1000, null, false);
	SetVolumeEX("SE20", 200, 600, null);
	dm3520REDS(600,50);}
//※キャラが誰かわからないように顔表示なし
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm35/2000090b09">
"It's always worked like this&. They never come back too&."

{	Shake("絵bg", 300, 0, 3, 0, 0, 1000, null, false);
	SetVolumeEX("SE20", 200, 700, null);
	dm3520REDS(700,50);}

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm35/2000091b09">
"Rhyme Name: Sly Blue&, huh&.&.&. He's a reckless one&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Shake("絵bg", 300, 15, 5, 0, 0, 1000, null, false);
//※キャラが誰かわからないように顔表示なし

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
No&.
I don't want to remember&.

{	Shake("絵bg", 300, 10, 5, 0, 0, 1000, null, false);
	Fade("絵bg2", 0, 1000, null, true);
	Fade("絵bg2", 200, 0, null, false);}
That's&.&.&.

{	Shake("絵bg", 300, 10, 5, 0, 0, 1000, null, false);
	Fade("絵bg2", 0, 1000, null, true);
	Fade("絵bg2", 200, 0, null, false);}
That's&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Shake("絵bg", 300, 10, 5, 0, 0, 1000, null, false);
	Fade("絵bg2", 0, 1000, null, true);
	Fade("絵bg2", 1000, 0, null, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	dm3520REDS(700,300);
	Fade("絵bg2", 8000, 600, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000100a01">
"&.&.&.No-"

{	dm3520REDS(750,400);}
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000110a01">
"No&.&.&. I couldn't&.&.&. I couldn't have done-"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
I didn't know&.

That by seeing someone's weakness&, I was tampering with 
the part of a person's mind that I shouldn't have&.

I didn't know&, and took pride and superiority in being 
able to see&.&.&.

I&.&.&. 

{	dm3520REDS(800,500);}

broke people&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	dm3520REDS(900,700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I broke their minds&.

I destroyed and crushed a part of their being&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);

	dm3520REDS(1000,900);
	Shake("絵bg", 100000, 5, 10, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//※過去回想
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/2000120a01">
"AAAAAHHHHHHHHHHHHHHHHH!!!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色赤", 18000, "Black");
	Fade("絵色赤", 100, 1000, Axl2, false);
	DrawTransition("絵色赤", 1000, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	dm3520REDDelete();
	dm3520noizeFade(0,0);
	Delete("絵bg");
	Delete("絵bg2");
	Delete("絵背景1");
	Delete("絵覆/絵*");
	Delete("絵覆");

	ClearFadeAll(0, true);
	Wait(1000);

//※次ファイル["dm3530.nss"]


}
