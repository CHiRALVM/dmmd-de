//<continuation number="330">
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


scene dm0440.nss_MAIN
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
	$GameName = "dm0450.nss";

}


scene dm0440.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg101051_5_旧住民区通り裏路地06.jpg");
	Rotate("絵背景100", 0, @0, @180, 360, null, true);
	Fade("絵背景100", 0, 1000, null, true);

//※足音_２人_走ってきて立ち止まる
	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_足音_走る01L");
	MusicStart("SE02",0,600,0,800,null,false);
	FadeDelete("上背景", 1000, null, true);

	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetFrequency("SE*", 1600, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Koujaku and I slow down and stop running once we realize 
that we don't hear the sound of any people after us 
anymore&.

We're both completely out of breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000010a01">
"&.&.&.We should be fine if we're this far ahead&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000020a02">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Just to make sure&, Koujaku turns around and checks behind 
us&, and then he gives me an apologetic look&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"st紅雀_通常_sad");
	St("C",740, @0,@0,"st紅雀_通常_cranky2");
	FadeSt("C",200,true);
	FadeStPro("C", 8100, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000030a02">
"&.&.&.Sorry about this&. I came to your place again but ended
 up just making a racket&. I lost my cool&.&.&. to that little
 shit back there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Koujaku's expression then turns serious&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000040a02">
"Aoba&. He's the guy who pulled you into that Drive-By Rhyme match&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
His exact guess startles me&.

He came up with it just by looking at my reactions&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	St("C",740, @0,@0,"st紅雀_通常_cranky3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000060a02">
"So you knew already&. I didn't think you would've&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000070a01">
"&.&.&.Sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
	FadeStPro("C", 2200, 180);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000080a02">
"No&, I'm not trying to put you down&. But he's been
 following you around since that Drive-By&, hasn't he? What
 happened?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000090a01">
"&.&.&.What should I say&, uh-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
There's no reason to hide it now&.

I decide to tell Koujaku the truth straight out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000100a01">
"When he dragged me into Rhyme&, I didn't even know what
 to do&. I've never done Rhyme before&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FwPro("fw蒼葉_通常_sad",6600,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000110a01">
"At the end I sort of blanked out and I don't remember
 exactly what happened&, but&.&.&. he said that I won&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000120a02">
"You did?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_worry4",6600,"fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000130a01">
"Yeah&. I don't remember it at all either&, and there's no
 way I could've&. But he said that I won&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000140a02">
"So he's following you so he can get some payback&, huh&. He
 has no pride&, that little shit&."

{	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000150a02">
"In or out of Rhyme&, if you lose&, you lose&. A real man
 accepts his defeats&."

{	St("C",740, @0,@0,"st紅雀_通常_cranky");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000160a02">
"And you even blacked out&, didn't you? At this point he's
 just plain harrassing you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000170a01">
"I guess&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000180a02">
"What? Are you worried about something?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000190a01">
"&.&.&.When I was in Rhyme&, I heard someone's voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000200a02">
"What do you mean? Not that guy's?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000210a01">
"I think it was someone else&. It was more like his voice
 came from my head rather than outside it&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000220a01">
"And then I started to give instructions to Ren&. It was
 like I just instinctively knew how to fight&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000230a02">
"And you haven't done Rhyme ever&, either&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000240a01">
"Yeah&. But then why did I give instructions? I don't even
 know&. And that's what bothers me&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("@dm*", 1500, 0, null);

	DeleteSt("C", 200,true);

	CreateSE("SE01","se人体_動作_叩く02");
	MusicStart("SE01",0,400,0,1400,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I hang my head down because the conversation makes me feel uncomfortable&, and Koujaku lightly grabs my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_normal");
	St("C",740, @0,@0,"bu紅雀_通常_cranky2");
	St("C",740, @0,@0,"bu紅雀_通常_cheese2");
	FadeSt("C",200,true);
	FadeFadeStPro("C", 6700, 200, 2000, 200);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000250a02">
"Don't think too hard about it&. That's always been a bad
 habit of yours&. Otherwise Ren tell you&, 'Aoba&, your
 thoughts look like they're about to burst out of your
 head&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000260a01">
"Okay&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
Koujaku's impression of Ren gets me to smile a bit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000270a02">
"And being just suddenly dragged into Rhyme might've just
 confused you&. But you can always tell me anything&, just
 so you know&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000280a01">
"Yeah&, thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_smile2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000290a02">
"Because Tae-san always makes the best food&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cheese");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000300a01">
"Because of that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_smile2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000310a02">
"Haha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
I laugh together with Koujaku&, and the gloom starts to 
fade a little bit&.

You always feel relieved when you talk to someone else&.

That's right&.&.&. I'm not the best at it&, but it's not good 
to clam up about things like this&.

If you do&, it becomes something like a sickness&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000320a02">
"Oh yeah&, want to go hit up the guys in Dry Juice?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_normal",3300,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000330a01">
"Sure&. I'm worried about Mizuki too&.&.&. Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000340a02">
"What's wrong?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000350a01">
"I should be working! Haga-san is out so I have to go watch the store!"

{	St("C",740, @0,@0,"bu紅雀_通常_sad2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000360a02">
"Hey&, hey! Aren't you going to get in trouble?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000370a01">
"I'll go call him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
I call Haga-san on my Coil in a rush&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	//★『徒歩コイル確認』


	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"ko0170","Haga-san",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);


	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(2000);

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@3,@5,"st羽賀_通常_normal");

//覇：下記の羽賀さん音声加工お願いします。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm04/4000380b07">
"Hello&, you've reached Junk Shop Heibon&."

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000390a01">
"Haga-san!? I'm so sorry&, I&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteFw();
	//▼⑧コイル電話顔
	CoilPhone_Face(@3,@5,"st羽賀_通常_normal2");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm04/4000400b07">
"Oh&, Aoba-kun&. I was wondering what happened since you
 weren't at the shop&.&.&. did something urgent come up?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000410a01">
"Well&, I&, uh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
Noiz suddenly showed up to the shop and&.&.&. he wouldn't 
understand me even if I said that&, anyway&.

Not knowing how I could possibly explain it to him&, I 
dodge the question and apologize profusely&. 

He sounded a little bitter about it&, but he forgave me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@3,@5,"st羽賀_通常_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0088]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm04/4000420b07">
"It's okay for today&. I'm here&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000430a01">
"I'm so sorry about this&.&.&.! I'll make sure to pay
 attention next time!" 

{	DeleteFw();}

//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm04/4000440b07">
"I know you will&. Well then&, good work&. Be safe&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000450a01">
"Good work today!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//通話切る
	//▼⑧コイル電話終了
	CoilPhone_End();

	Wait(500);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPhone",300,-50,370);
	//○コイル待ち
	CoilWait();

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000460a01">
"Haa&.&.&."

{	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm04/4000470a02">
"Everything okay?"

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/4000480a01">
"I guess&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
As much as Haga-san lets me off&, I still didn't take care  of my responsibilities as an adult&.&.&.

I'll apologize more later&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景100");

	CreateColor("絵回想色", 3000, 0, 0, 1024, 768, #624a2b);
	SetAlias("絵回想色","絵回想色");
	Request("絵回想色",OverlayRender);

	CreateTextureSPmul("絵回想", 3000, Center, Middle, "cg/ef/effi回想01.jpg");

	Delete("絵色上");

	CreateTextureSP("絵背景100", 100, 0, 0, "cg/bg/bg101021_5_旧住民区通り裏路地01ドライジュース.jpg");

	Wait(500);

	FadeDelete("絵黒幕", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Dry Juice's turf is in the&.&.&. East district&.
"Yukisagi"&, where there's tons of alleyways filled with 
good food&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 500, 1000, null, true);

	SetVolumeEX("SE*", 1000, 0, null);
	ClearFadeAll(0, true);

//※次ファイル["dm0450.nss"]

}
