//<continuation number="530">
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


scene dm1180.nss_MAIN
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
	$GameName = "dm1190.nss";

}


scene dm1180.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	//おがみ：BGM：切ない系
	SoundPlay("@dm012",0,450,true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We enter Glitter&, and Koujaku carries me on his back all 
the way up to the second floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000010a02">
"Can you take off your clothes? They're completely dirty&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000020a01">
"Sure&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I take off my jacket and throw it to Koujaku&, plopping 
onto the mattress&.

I sink into the bed&, utterly exhausted&. I take long and 
deep breaths through my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000030a02">
"Tired?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000040a01">
"Yeah&.&.&."

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
<voice name="紅雀" class="紅雀" src="voice/dm11/8000050a02">
"How do you feel?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000060a01">
"Better than a few minutes ago&."

{	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000070a02">
"I see&. Hey&, Ren&. I'll put you up here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Koujaku puts Ren on the bed&.

Ren curls and snuggles up to me&. I calm down&, petting his 
blue fur&.

Koujaku leaves the room&, but immediately comes back and 
puts something on the table&.

{
	CreateSE("SE01","se物体_グラス_置く01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
A glass of water&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000080a02">
"Drink this and go to sleep&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000090a01">
"Thanks&.&.&. for everything&."

{	St("C",740, @0,@0,"st紅雀_通常_smile2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000100a02">
"No problem&. Is there anything else you need?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000110a01">
"I'm fine&."

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000120a02">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);
	Fade("絵色黒", 1500, 1000, null, true);

	DeleteSt("C", 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
And with that&, we don't say anything else&.

Koujaku just looks down and silence fills the air&.

I then knew that there was some meaning to his silence&.

We're both probably thinking about the same thing right 
now&. About that club&.&.&.

After a short while&, Koujaku looks as if he's decided on 
something and raises his head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒", 500, 0, null, true);

	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);

	//おがみ：BGM：不安な感じ　005がいいかも知れないが、次ファイルで使ってたのでこちらで
	//SoundPlay("@dm015",0,450,true);

//	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000130a02">
"&.&.&.Aoba&. Can I ask you something?"

{	Fw("fw蒼葉_通常_shock3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000140a01">
"Sure&."

{	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000150a02">
"What were you doing there?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I keep my mouth shut&, unsure of what to reply with&.

Koujaku holds his gaze on me&.
He's waiting for my answer&.

How should I say it&.&.&.

A puzzled expression rises to my face&.

Should I answer like I always do&, or should I keep quiet?

I feel like I should stop this now&.
But&.&.&.

If I can't wipe away my suspicions&, shouldn't I just ask 
him?

I throw away my hesitations and open my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_sad");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000170a01">
"&.&.&.How about you&, what were you doing there?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
A look of surprise comes over Koujaku's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000180a02">
"What I&.&.&. do you know what that place was for?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000190a01">
"No&.&.&.&. I just happened to run into you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Actually&, I followed you&.&.&. but I can't bring myself to 
say that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000200a02">
"You just 'went' there? How did you get in?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
Koujaku squints at me&.
An awful sweat runs down my spine&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000210a01">
"I was about to call out to you&, but I was stopped at the
 entrance&. Then someone helped me&, and&.&.&."

{	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000220a02">
"Helped you?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000230a01">
"Yeah&. He seemed like a regular there&, and wore a kimono
 like yours&."

{	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000240a02">
"&.&.&.Kimono?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0078]
Koujaku's eyebrows twitch&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000250a02">
"He was wearing a kimono?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000260a01">
"Oh&, yeah&."

{	St("C",740, @0,@0,"bu紅雀_通常_angry");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000270a02">
"Remember anything else about him?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000280a01">
"Huh&, why?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Koujaku has another surprised look on his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_worry2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000290a02">
"No&.&.&. I just thought that he might be someone I know&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
&.&.&.This again&. This atmosphere&.

It's just like the one he had when he came back last night&.
He's obviously hiding something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_sad");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000300a01">
"&.&.&.He was wearing a blue kimono&, had short hair&, and a
 carefree attitude&.&.&. He also had a tattoo on his neck&."

{	St("C",740, @0,@0,"bu紅雀_通常_angry");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000310a02">
"What design?"

{	Fw("fw蒼葉_通常_think");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000320a01">
"A dragon&, or&.&.&.a seahorse? Something like that&."

{	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000330a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
Koujaku's expression turns cold&.
He stands there with a grim expression&, thinking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000340a01">
"Do you know him or something?"

{	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000350a02">
"&.&.&.Aoba&. Don't ever go near that place again&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000360a01">
"&.&.&.Huh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0108]
Where did this come from&.&.&.?

A bad mood starts to fill the air once again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0109]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000370a01">
"Why's that?"

{	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000380a02">
"It doesn't matter&, just don't go near there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000390a01">
"What the hell? Because of the guy in the blue kimono?"

{	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000400a02">
"&.&.&.No&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000410a01">
"Besides&, didn't you have something you needed to tell me
 before I even brought that up?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000420a01">
"&.&.&.Like why you left without a word this morning? Did you
 think I wouldn't notice?"

{	St("C",740, @0,@0,"bu紅雀_通常_think2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000430a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000440a02">
"So you followed me&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000450a01">
"&.&.&.Sorry&. I lied when I said it was by chance&. But you
 were being so sneaky&, so I felt like I had to follow you
 a bit&.&.&."

{	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000460a02">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000470a01">
"And considering the situation we're in&, it was out of
 worry for you&, but I'm not sure if I can say that with
 complete honesty&.&.&."

{	St("C",740, @0,@0,"bu紅雀_通常_worry3");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000480a02">
"It wasn't like that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Koujaku interrupts me with a booming voice&. One word was 
all it took&.

His face stiffens as he thinks hard over something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_think2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/8000490a02">
"&.&.&.But I can't say anything more than that&. Sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
And then Koujaku just turns his back to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000500a01">
"Hey&, Koujaku! Wait right there!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
I yell at him to stop&.

But he just leaves the room anyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(300);

//※ＳＥ：ドアが閉まる音
	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

{	Fw("fw蒼葉_通常_worry3");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000510a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Koujaku's attitude leaves me still as I just stare at the 
door&.

&.&.&.What is he hiding?

He doesn't have any intention to tell me&.
So that's how it is&.

He flat out rejected me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_hard");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000520a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0144]
I throw myself head first into a pillow and breathe a deep sigh into it&. I have no other way of letting my feelings   out&.

I'm filled with irritation towards Koujaku and hatred for 
my own self&.

We've known each other for so long&, so we pretty much 
understood each other&. That's what I always thought&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
But&, right now&.&.&.

I don't get one thing about Koujaku&.
I don't even know what to do about him anymore&.

What is he hiding from me?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateVOICE("紅雀","dm11/8000350a02");
//	MusicStart("紅雀",0,700,0,1000,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
"Don't even go near that place again&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("紅雀", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
That's all he had to say to me?

What's in that club?
Why doesn't he want me there?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("紅雀");

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/8000530a01">
"I don't know what's going on anymore&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0156]
I cover my eyes with my hands&. I let out another sigh&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//おがみ：背景的にぼかしても効果が薄いようなので演出変更
//	CreatePlainEX("絵板写", 100);
//	SetShade("絵板写", SEMIHEAVY);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
I've always been with Koujaku&, and never had to deal with 
this before&.

I may have just been full of myself&, thinking I knew 
everything about him&.

What does Koujaku&.&.&.even think of me?

A wave of uneasiness rushes into me&, and I keep thinking 
about everything I don't have the answers to&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fade("絵色黒", 1000, 1000, null, true);

	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm1190.nss"]

}
