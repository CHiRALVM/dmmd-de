//<continuation number="210">
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


scene dm3690.nss_MAIN
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

	#bg304121_5_東江タワー東江の間=true;
	#bg304122_5_東江タワー東江の間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3700_vs.nss";

}


scene dm3690.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);

/*
※ここからはミンク視点が入ります。
　ミンク視点の時はセリフのみで心理＆情景描写は出てきません。


※背景：タワー内／東江の部屋

※ドアがスライドして部屋の中にミンクが入る。
　ミンク、歩いていって立ち止まる。
　目の前に東江がいる。東江との距離は２ｍくらい。
　無表情に東江を見つめるミンク。東江は薄く笑っている。
*/

	CreateSE("SE01","se物体_ドア東江の間_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(5000);

	FadeDelete("上背景", 1000, null, true);

	Wait(2000);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu東江_通常_normal");

	Fade("絵背景", 500, 1000, null, false);
	FadeSt("C",500,true);

	Wait(1000);
{	Fw("fwミンク_通常正面_serious");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000010a05">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"bu東江_通常_normal");
	FadeSt("C",200,true);
}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000020b02">
"I was waiting for you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

	CreatePlainSP("絵板写", 5000);
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	Delete("絵背景");
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);
	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",300,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000030b02">
"&.&.&.No&, actually I admire your efforts&. You were able to
 make it this far without being torn apart by the song&."

//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000040b02">
"The bodily sensation that song evokes is a vicarious
 experience within the listener&, their deepest wounds
 amplified to the maximum&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000050b02">
"Most people end up with their central nerves beyond
 repair&. However you climbed over that hurdle&. As expected
 of a survivor from such a race&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000060a05">
"It was him who broke that song apart&. Not me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000070b02">
"Aoba-kun&, right? Speaking of which&, wasn't he here
 with you before?"

{	Fw("fwミンク_通常正面_serious");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000080a05">
"My objective is you&. He has nothing to do with this&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000090b02">
"I see&. So you let him free&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000100b02">
"I supposed that you were the kind to not let anyone close
 &.&.&. I guess he is a special case&."

{	Fw("fwミンク_通常_angry2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000110a05">
"Who said I let him free? Don't put words into my mouth&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000130a05">
"I don't need your pretentious speeches&. I've always
 been waiting for this moment&.&.&. You're going to die&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000140b02">
"Keep at that then&. It's nothing you need to rush&. The
 truth is that as I had guessed as to when you would make
 it here&, I had some time to think about some things&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000150b02">
"Like how it would be such a splendid thing if you were
 thinking about killing me&. God decided that I would be
 killed by you&."

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000160b02">
"However&, it's just not as fun if it's simply an instant
 kill&. Don't you think so?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwミンク_通常正面_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000170a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000180b02">
"It wouldn't have been necessary if you didn't make it this
 far&.&.&. but I think I'll be trying out my last bit of
 resistance&. It'll be a very simple thing&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※東江、数歩前へ進んでミンクとの距離をちょっとだけ詰める。
//　ミンク、東江の動きに警戒。

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	//St("C",740, @0,@0,"stミンク_通常_normal");
	//FadeSt("C",0,true);

	Wait(300);

	SetVolumeEX("SE01", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000190b02">
"I won't use any weapons&. And I won't fight back&. However
 the effectivness is amazing&. Now let me give a gift&.&.&.
 to you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(36);

//あきゅん「↓：東江適当にカットイン、蒼葉の力発動を真似る感じで」
	CreateSE("SE01","se擬音_効果_力東江01");

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	CreateColorEX("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 0, 400, 400, 200, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureEX("立", 100, Center, 110, "cg/bu/bu東江_通常_serious.png");
	Request("立", Smoothing);
	Fade("立", 0, 1000, null, true);
	Zoom("立", 0, 1500, 1500, null, true);


//	St("C",740, @0,@0,"bu東江_通常_serious");

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色黒", 500, 500, null, false);
	Fade("立", 500, 1000, null, false);
	Fade("絵背景", 500, 1000, null, true);


	CreatePlainSP("絵板写", 5000);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 300, null, false);
	Zoom("絵板写", 300, 1100, 1100, null, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//※力発動
//【東江】
<voice name="東江" class="東江" src="voice/dm36/9000200b02">
"&.&.&.You won't die&. You can't die&. Ever&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwミンク_戦闘_pinch");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/9000210a05">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	ClearFadeAll(1000, true);
	Wait(1500);

//※次ファイル["dm3700_vs.nss"]

}
