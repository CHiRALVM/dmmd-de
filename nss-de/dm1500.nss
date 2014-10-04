//<continuation number="360">
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


scene dm1500.nss_MAIN
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

	//▼音を次ファイルまで継続
	Request("@EFWIN/SE01", Lock);
	Request("@EFWIN/合成音声", Lock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1510.nss";

$HALevel=1;

}


scene dm1500.nss
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

	FadeDelete("上背景", 0, null, true);


//あきゅん「演出：倒壊アラーム、未搭載」
//※非常アラームが鳴り響き、部屋全体の照明が赤くなる


//あきゅん「演出：タワー倒壊、とりあえずの仮入れ」
//※ごごごご、とタワーが揺れ始める
	CreateSE("SE01","se物体_東江タワー_爆発01");//あきゅん「ＳＥ：se物体_東江タワー_爆発01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 100);

//	dm3520RED(500);
	CreateColorEXmul("絵dm3520red", 500, RED);
	Fade("絵dm3520red", 300, 600, null, true);

	Shake("絵板写", 300, 10, 60, 0, 0, 1000, null, true);

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");//あきゅん「ＳＥ：se物体_東江タワー_地鳴り01L」
	Delete("絵板写");
	MusicStart("SE11",0,700,0,1000,null,true);
	dm1500ShakeLoop("絵シェイク","bg304091_5_東江タワー中ホール",400,1);

/*=============================================
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【合成音声】
<voice name="合成音声" class="合成音声" src="voice/dm15/0000010e14">
"A state of emergency has been declared&. Please exit the
 building immediately&. I repeat&, a state of emergency
 has been declared&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
=============================================*/
/*
*/

//あきゅん「※：ならしっぱだと五月蝿いので適にボリュームを落として下さい」
	CreateSE("@EFWIN/SE01","se物体_東江タワー_アラーム01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",0,700,0,1000,null,true);

//あきゅん「※：ならしっぱだと五月蝿いので適にボリュームを落として下さい」
	CreateVOICEEX("@EFWIN/合成音声","dm15/0000010e14","合成音声");
	Request("@EFWIN/合成音声", Lock);
	MusicStart("@EFWIN/合成音声",0,1500,0,1000,null,true);
	$CautionAlarm=true;
	Wait(1000);
	WaitKey(1000);

	Fw("fw紅雀_バーサク正気_angry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000020a02">
"A state of emergency&.&.&.!?"

{	Fw("fwm紅雀チームA_通常_normal");}
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/0000030e47">
"Urgh&.&.&. Wh-What&.&.&.!?"

{	Fw("fwm紅雀チームB_通常_normal");}
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/0000040e48">
"H-Hey that sounds bad&, man!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
The fallen Beni-Shigure members wake up in a panic at the 
announcement&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm紅雀チームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/0000050e48">
"I-Is the tower gonna collapse!? Koujaku-san&, Aoba-san&,
 let's get out of here fast!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@EFWIN/SE01", 10000, 300, null);
	SetVolumeEX("@EFWIN/合成音声", 10000, 700, null);

	St("C",740, @0,@0,"bu紅雀_バーサク正気_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000060a02">
"Yeah&. Aoba&, are you okay? Grab onto me&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000070a01">
"&.&.&.I'm fine&."

{	St("C",740, @0,@0,"bu紅雀_バーサク正気_angry4");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000080a02">
"Ah&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Koujaku gives me his shoulder and looks at me with a 
puzzled look&.

My head still hurts and the nausea hasn't passed&.&.&.

I think to myself that it's no use trying to shake it off&.

I still can hear the sound of that voice dying out&.

Keeping my vision in one place&.&.&. is painful&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000090a01">
"I'm fine&. But&, you guys&.&.&."

{	St("C",740, @0,@0,"bu紅雀_バーサク正気_angry4");
	FadeSt("C",0,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000100a02">
"&.&.&.What are you going on about?"

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000110a01">
"My power&, like this&.&.&. might be bad&. I might&.&.&.
 lose control&."

{	St("C",740, @0,@0,"bu紅雀_バーサク正気_angry3");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000120a02">
"With Scrap?"

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000130a01">
"Yeah&.&.&. I might hurt you guys&.&.&. and everyone else&.&.&.
 so&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_バーサク正気_angry4");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000140a02">
"&.&.&.Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	CreateSE("SE01","se人体_動作_掴む01");//あきゅん「ＳＥ：se人体_動作_掴む01」

	St("C",740, @0,@0,"fu紅雀_バーサク正気_angry4");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Koujaku lifts me up by my collar and looks into my eyes&.
His eyes are breathtakingly serious&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"fu紅雀_バーサク正気_angry3");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000150a02">
"Look into my eyes&, Aoba&. Don't pull this right now&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000160a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"fu紅雀_バーサク正気_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000170a02">
"I don't know what's going on with you right now&, but
 whatever it is&, it isn't good&. I'm not going to leave you
 here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_バーサク正気_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000180a02">
"You brought me back with that power&. I'm here because you
 broke through all the things holding me down back then&."

{	St("C",740, @0,@0,"fu紅雀_バーサク正気_angry4");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000190a02">
"So I don't think it's much of a power to be afraid of now&. Losing control? I'll just stop it if it even comes to
 that&."

{	Fw("fw蒼葉_通常_shock3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000200a01">
"Koujaku&.&.&."

{	St("C",740, @0,@0,"fu紅雀_バーサク正気_shout2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000210a02">
"So&, come on and get up&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_動作_抱く01");//あきゅん「ＳＥ：se人体_動作_抱く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,600,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
Koujaku forcibly pulls my arm over his shoulder and holds  me up by my torso&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_バーサク正気_cool2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000220a02">
"Weren't you the one who told me not to go off for selfish
 reasons in the first place? Now&, I'll take you with me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_バーサク正気_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000230a02">
"You can have the responsibility of calling me back&, if you want&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Koujaku looks at me with a firm grin&.

I sort of feel out of place right now&.&.&.

After all this time&, I still see him as my hero&.

A warm feeling overflows in my chest&, and I can feel my 
headache soften&.

My mind flickers and his figure&.&.&. feels as if it's 
getting farther away&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

$HALevel=1;

{	St("C",740, @0,@0,"bu紅雀_バーサク正気_cool2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000240a02">
"Hold on tight&. Let's go&."

{	Fw("fw蒼葉_通常_happy");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000250a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");

	OnBG(10,"bg304102_5_東江タワー中ホールアングル別");
	FadeBG(0,true);
	dm1500ShakeLoop("絵シェイク","bg304102_5_東江タワー中ホールアングル別",400,2);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
While I'm holding onto Koujaku&, we run to the door out of 
the shaking room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_バーサク正気_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000260a02">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Koujaku has a quizzical look on his face&, and turns around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000270a01">
"Whats's wrong?"

{	St("C",740, @0,@0,"bu紅雀_バーサク正気_think");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000280a02">
"Nothing&. I just felt like someone was watching us&.&.&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/0000290a01">
"Huh? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");

	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);
	dm1500ShakeLoop("絵シェイク","bg304091_5_東江タワー中ホール",400,2);

//あきゅん「確認：ここでの人影って誰よ？」
//※通常のセイ（白ではなく私服）でお願いします
	CreateTextureEX("絵演立絵", 700, Center, InBottom, "cg/st/stセイ_通常_serious.png");
	Move("絵演立絵", 0, @0, @60, null, true);
	Fade("絵演立絵", 0, 400, null, true);
	Fade("絵演立絵", 300, 0, null, false);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", false);
	Wait(100);
	DrawDelete("絵演立絵", 50, 100, null, "effect_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I follow Koujaku's line of sight&, and think I saw 
something shaped like a person for a second&.

Just now&, that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ますます揺れがひどくなる
	CreateSE("SE01","se物体_東江タワー_地割れ01");
	MusicStart("SE01",0,450,0,1000,null,false);

	$dm1500BG_SHAKEP=4;

{	Fw("fwm紅雀チームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/0000300e47">
"Isn't the floor crumbling!?"

{	Fw("fwm紅雀チームB_通常_normal");}
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/0000310e48">
"Oh&, shit! Koujaku-san&, Wh-Wh-What do we do!?"

{	Fw("fw紅雀_バーサク正気_shout2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000320a02">
"Don't just stand there confused!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Koujaku lets out a roar&, and all the timid members have a 
shocked look on their face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw紅雀_バーサク正気_shout2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000330a02">
"Keep yourself together for Pete's sake&, you're a Beni-
 Shigure member!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fwm紅雀チームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/0000340ex">
"Yessir!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//※同時
//【紅雀メンバーＡ】
//<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/0000340e47">
//「押忍！」
//※同時
//【紅雀メンバーＢ】
//<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/0000350e48">
//「押忍！」



	Fw("fw紅雀_バーサク正気_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/0000360a02">
"All right&, let's make our escape!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
We run out into the hallway&, the floor jolting and 
rumbling beneath us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se人体_足音_走る03複数L");
//	MusicStart("SE01",0,700,0,1000,null,true);
//	Wait(500);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

//	SetVolumeEX("SE01", 1000, 0, null);

//嶋：めちゃ危険
	$dm1500_SE11=true;
	Request("SE11",Lock);

	Wait(500);

//※次ファイル["dm1510.nss"]

}
