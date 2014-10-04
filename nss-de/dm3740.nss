//<continuation number="250">
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


scene dm3740.nss_MAIN
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
	$GameName = "dm3750.nss";

$HALevel=1;

}


scene dm3740.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 5000, "FFFFFF");
	CreateColorSP("絵色黒", 4000, "000000");

	CreateTextureEX("絵背景", 20, 220, -285, "cg/bg/bg304061_5_東江タワー階段.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Fade("絵背景", 0, 1000, null, true);

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色白", 500, 1000, null, true);
	Wait(500);
	Delete("絵色黒");
	FadeDelete("絵色白", 2000, null, true);


//※場面切替／蒼葉視点

//※暴露から抜け出てくるムービー？エフェクト？
//※蒼葉が悪島を暴露して現実に戻ってきたというところから
//　始まりたいんですが、演出的に不自然だったら
//　軽く悪島を暴露してるセリフとか入れます。

$HALevel=1;

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/4000020b08">
"U&.&.&.gh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※ＳＥ：どしゃっと床に崩れ落ちる
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Akushima falls down with his eyes and mouth both wide open&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000030a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.It went perfectly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 800, @0, @80, DxlAuto, false);
	FadeDelete("絵背景", 800, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
With a sigh of relief&, I slowly stand up&.

The other Scratch members seem to have made it down&, as 
time started up again from after I had been in Scrap&.

Another headache should be coming on&.

I prepared myself for it&.&.&. but nothing happened this time&.

And it was as if the headache from before had faded away&.

The headaches should be getting worse the more I use it&.&.&.
Why?

The reason might be&.&.&.

&.&.&.Because I wanted to use it this time&, from the bottom 
of my heart&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
When I wished to use it for myself&, it made a pathway&, 
maybe&.&.&.

Maybe that's it&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//※ＳＥ：どーんと遠くで爆発音（タワーに仕掛けた爆薬）
	CreateSE("SE01","se物体_東江タワー_爆発01");
	MusicStart("SE01",0,400,0,1000,null,false);
	BGPlainShake(50,2000,0,5,0,0,1000,DxlAuto,true);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000040a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
The sound of an explosion booms from somewhere&, and the 
hallway starts to shake and sway&.

&.&.&.Maybe this is what the Scratch members were talking 
about?

Blowing up the tower&.<k>
But&, what about Mink?

&.&.&.&.&.
{	Wait(300);}
&.&.&.Mink&.

He never had the intention to come back alive from the 
start&.

So that's why he gave that order to the other team 
members&.

To blow up the tower and leave him behind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_エンジンふかす02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwAMトリ_バイク_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000050b12">
"Get on&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
The bike stops right in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000060b12">
"It's my duty to get you down safely&. That's what Mink
 told me&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000070a01">
"Eh&.&.&. Mink did?"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000080b12">
"Yeah&. He personally requested me to get both you and the
 rest of the team members down from here&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Mink found his way to use my power to get what he wanted&.

But he never intended to take me along with him&.

Mink was thinking about it until the last moment&.

He never meant for anyone else to die except him&.

That's how far his "plan" went&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000100a01">
"&.&.&.What the hell&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
Completely manipulating others&, and only letting me know 
until the final moment&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000110a01">
"That's so selfish!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	CreateColorSP("絵色黒２", 500, "000000");
	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",0,true);


	Fade("絵色黒", 500, 500, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
He eliminated all emotions in a single strike so he could 
precisely and swiftly obtain his objective&.

If he were to lose any focus at all&, the success rate 
would fall&.

So Mink acted that way&. I thought he was just that kind of person&.

But the members that adored him had no choice but to think he was a marvel&.

They must have known what sort of person he really was&.

He might have just shown me that side of him so he could 
use me as a tool&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「確認：ここの蒼葉のセリフをどこにかけてるかによって、地鳴り演出の箇所を調整」
//※これは↑の心理描写にかかってます。（山

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000120a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//※ゴゴゴゴゴ、と地鳴り＆警報が鳴り始める
//あきゅん「演出：タワー倒壊、とりあえずの仮入れ」
	CreateSE("SE01","se物体_東江タワー_爆発01");
	MusicStart("SE01",0,400,0,1000,null,false);

	Fade("絵色黒", 300, 1000, null, true);
	FadeDelete("絵色黒２", 0, null, true);
	DeleteAllSt(0,true);


	CreatePlainSP("絵板写", 100);
	Shake("絵板写", 300, 10, 60, 0, 0, 1000, null, true);

	FadeDelete("絵色黒", 300, null, true);

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	Shake_Loop("@絵板写","shake01");

	CreateSE("SE12","se物体_東江タワー_アラーム01L");
	MusicStart("SE12",0,300,0,1000,null,true);


	CreateColorEXmul("絵色赤", 500, RED);
	Fade("絵色赤", 300, 600, null, true);

	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000130b12">
"Quickly&, get on&."

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000140a01">
"&.&.&.I know&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
The emotions swell up in my chest&, and I straddle myself 
onto the bike seat&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000150b12">
"We're going to bolt out of here until the tower
 collapses&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000160a01">
"Ah&.&.&. Give me a second&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Akushima&.&.&.

He'll die if I leave him alone in the tower when it 
crumbles down&.

&.&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000170a01">
"Shit!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
I can't bring myself to leave him here&.
He'll haunt me in my dreams&.

I get off the bike&, run up to the knocked out Akushima&, 
and pull up his body&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	CreateSE("SE02","se人体_動作_引きずる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);


	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0089]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000180a01">
"He's so heavy&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I settle him down by the tail&.&.&. Or rather&, hang him from 
it and hold onto his back while I'm in the seat&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000190b12">
"You're going to take him too?"

{	Fw("fw蒼葉_通常_cranky2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000200a01">
"I guess&.&.&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000210b12">
"Hm&. That's like you&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000220a01">
"Really?"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000230b12">
"It's both a good and a bad thing about you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_エンジンふかす01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I feel like he was making fun of me&, and I fasten my grip 
as the bike immediately takes off&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/4000240b12">
"Hold on tight&. And hold onto him tight&, too&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/4000250a01">
"Yeah&. I'm counting on you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//※バイクが発進して走り去っていく音
	CreateSE("SE01","se乗物_改造バイク_急加速01");
	CreateSE("SE02","se乗物_改造前バイク_走り去る");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(2000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("合成*", 2000, 0, null);

	ClearFadeAll(2000, true);

	Wait(2000);

//※次ファイル["dm3750.nss"]

}
