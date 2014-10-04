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


scene dm2070.nss_MAIN
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
	#bg305021_5_プラチナジェイルゲート前=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2080.nss";

}


scene dm2070.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg305021_5_プラチナジェイルゲート前");
	FadeBG(0,true);

	CreateColorSP("絵色白", 4000, "FFFFFF");

	DrawDelete("上背景", 500, 100, null, "circle_01_00_1", true);

//※ゲートが左右へ静かにスライドして開く
//※ぱぱぱぱーんとクラッカーの音、ファンファーレ
	CreateSE("SE01","se擬音_効果_ファンファーレ");//あきゅん「ＳＥ：se擬音_効果_ファンファーレ」
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(50);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(50);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(50);

	Fade("絵色白", 0, 1000, null, true);
	Wait(500);

	Request("絵色白", AddRender);

	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");

	SoundPlay("@dm002",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/7000010a01">
"!"

{	Fw("fwmパンダ_通常_normal");}
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm20/7000020e02">
"Welcome to Japan's biggest&, highest quality entertainment
 facility of love&, dreams and healing&, Platinum Jail!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, -490, -380, "cg/bg/l/bg305021_5_プラチナジェイルゲート前_l.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
As soon as the gate opens&, we're greeted by a showy 
fanfare and firecrackers&, accompanied by a strange panda&.

{Fade("絵背景",500,1000,null,true);}
On the other side of the room are five white doors&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm20/7000030e02">
"This is a paradise on earth where only the chosen can
 enter! Please have fun to your hearts' content!"

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/7000040a03">
"Damn suspicious&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/7000050a01">
"Yeah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The panda ignores us and presses a button on the wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Roulette("ノイズ");

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm20/7000060e02">
"Weeell then&, what will your destination be? Fun-fun
 roulette&, start!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ルーレット演出、内容によっては地の文を消す」
	RouletteFade();

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm20/7000070e02">
"Oooooh&, Your destination is Green Playground!
 Come&, come&, this way please!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The panda stands in front of the second door from the 
left&, one arm outstretched&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm20/7000080e02">
"This is the best playground equipped with the newest game
 centers and enjoyable amenities! You'll be in a world far
 from boredom for the rest of your life! Have a good time
 playing and bon voyage!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Still put off by the panda's show&, Noiz and I walk 
towards the door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm20/7000090e02">
"Well then&, go ahead! Please hold up your invitation ticket to the authentication monitor next to the door!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I bring up the invitation on my Coil and show it to the 
monitor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se物体_コイル_操作音03");//あきゅん「ＳＥ：se物体_コイル_操作音03」
//	MusicStart("SE01",0,700,0,1000,null,false);

	//★徒歩バンク
	CoilBank05a();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm20/7000100e06">
"Platinum ID confirmed&. Aoba-sama and guest&, welcome to
 Platinum Jail&. The admission formalities will now begin&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm20/7000110e06">
"Guest has been granted Guest ID&. Guest&, please show your 
 Coil to the monitor&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Noiz holds up his Coil to the monitor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音03");//あきゅん「ＳＥ：se物体_コイル_操作音03」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm20/7000120e06">
"Confirmed&, Guest ID now being transmitted&. All
 jurisdiction belongs to the Platinum ID holder&."

//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm20/7000130e06">
"The Guest ID has restricted use only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm20/7000140e06">
"Please read the detailed support section in the full
 Invitation Card&. Please enjoy&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//★徒歩バンク
	CoilBank05b();

//嶋：注ＢＧＭ継続
	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm2080.nss"]

}
