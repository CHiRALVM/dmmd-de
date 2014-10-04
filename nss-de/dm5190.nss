//<continuation number="100">
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


scene dm5190.nss_MAIN
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

	#bg302011_5_グリッター部屋01天井=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5200.nss";

}


scene dm5190.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The next day&.

I wake up just before noon&.

The time does say it's before noon&, but as usual&, Platinum Jail is still in nighttime mode&.

Staying in a place like this is really going to mess me up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I sit up on the bed and rub my eyes&.

I feel like I just had an awful dream&.

I don't remember what it was about&, but my head still 
hurts a little&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：背景or描写後ほど調整
	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I pick up Ren and leave the room&, the strange anxiety left over from the dream still lingering with me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreateTextureEX("絵背景100", 100, -132, -285, "cg/bg/m/bg302021_5_グリッター居間_m.jpg");
	Move("絵背景100", 500, @0, @50, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I wondered about how the Special Commemoration Event will 
play out&, so I sat down on the sofa and turned on the TV&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEXadd("絵演効果", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	CreateTextureSP("絵演背景1000", 1000, Center, -44, "cg/bg/m/bg301011_5_プラチナジェイル大通り_m.jpg");
	Fade("絵演効果", 0, 300, null, true);


	CreateSE("SE01","se物体_テレビ_オン");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵板写", 1000, null, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Just like I thought it would&, the luxurious and lively 
Main Street comes up on the screen&.

The smiling reporter is explaining the current state of 
the event&.

A showy parade goes along Main Street&, music blasting&, and people are jam-packed onto the sidewalks&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵色黒");
	Delete("絵演*");

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/9000020a01">
"Wow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The same image shows on the screen&, and then switches to 
an announcer in a studio&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEXadd("絵演効果", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	CreateTextureSP("絵演背景500", 500, Center, Middle, "cg/bg/m/bg304121_5_東江タワー東江の間_m.jpg");
	St("C",740, @0,@0,"bu東江_通常_normal");
	FadeSt("C",0,true);

	Fade("絵演効果", 0, 300, null, true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//※加工:テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm51/9000030e07">
"&.&.&.At 1PM in Japan&, Oval Tower's representative&, the great Toue&, will be giving a greeting to everyone&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//※加工:テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm51/9000040e07">
"All of it will be broadcasted on this channel&. If you wish
 to see it in person&, please make your way to the plaza in
 front of the tower&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵色黒");
	Delete("絵演*");
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The announcer finishes and the screen flickers over to 
Toue's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/9000050a01">
"&.&.&.Toue&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, 0, -141, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_l.jpg");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I would never forget his face&.

I remember what happened when I got caught in that 
Drive-By while looking for Granny&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/9000060a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
A miserable bitterness rises up in my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I won't let this man continue doing whatever he wants&.

Today at 1PM&.
Toue will be giving a greeting at Oval Tower&.

I still have a little time left before then&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,700,0,1200,null,false);

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I should start preparing right away&.

I stand&, scoop up Ren&, and resolve myself&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/9000070a01">
"Ren&, how are you doing? Are you okay?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/9000080a06">
"No issues&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/9000090a01">
"I see&. Then we're going to go out to the event I was
 talking about yesterday&, the one Toue's appearing in&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/9000100a06">
"Roger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
At a glance&, nothing seems to be wrong with Ren&.
But my uneasiness over what happened yesterday hasn't 
faded&.

I pay special attention to Ren's condition and go upstairs to get ready&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(1000, true);

	Wait(500);

//※次ファイル["dm5200.nss"]

}
