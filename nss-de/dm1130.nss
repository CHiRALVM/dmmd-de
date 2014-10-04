//<continuation number="160">
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


scene dm1130.nss_MAIN
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
	#bg303011_5_娯楽施設外観入り口レッド=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1140.nss";

#CFGVC_RYUHO=1;//コンフィグ：竜峰ボイス解放

}


scene dm1130.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301021_5_プラチナジェイル中通り1赤");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.In the end&, Koujaku really was meeting up with the girl from yesterday&.

She easily slips to Koujaku's side&, and starts walking 
along with him&, arms linked together&. So they were just on a date&.

Yesterday&, there were two of them&, but today she's alone&. 
She's probably the girl with the tattoo on her neck&.

They look just like a couple&, walking down the road 
together like that&.

They leisurely walk down Main Street and then cross to the other side&. I follow behind&, making sure I don't lose sightof them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg303011_5_娯楽施設外観入り口レッド");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
While passing through the street&, they come up to a 
rectangular building&. They go inside&.

I stop in my tracks and just gaze at the building&.

There's no signs or information on the building&, just men 
in suits standing at the entrance&.

I have no idea what this building could be for&. And it 
doesn't seem like it's one open to the public&, either&. 
That's the feeling I get&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000010a01">
"&.&.&.Koujaku&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I knew it&.&.&. He kept quiet and just left me to go meet 
with that girl from yesterday&.

My anxiety and hope both transform into pure 
disappointment&.

He did all that just to see this girl?

He could have just told me that he was smitten with her&.

But he didn't say a single word to me&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000020a01">
"No persuasive ability at all&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/3000030a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I suffer from exhaustion more so than anger&.

Koujaku and that girl&.&.&.
What kind of place did they just go into?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/m/bg303011_5_娯楽施設外観入り口レッド_m.jpg");
	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	SetVolumeEX("@dm004", 1000, 450, null);
	Move("絵背景", 0, @0, @30, null, true);

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I get closer to the building&, and the men in suits hold 
out their arms&, gesturing that I'm not allowed in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm門番_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm11/3000040e09">
"Any proof of your membership on you?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000050a01">
"Nope&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm門番_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm11/3000060e09">
"This is a members-only place&. The general public can't
 enter&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000070a01">
"I have a friend in there right now&."

{	Fw("fwm門番_通常_normal");}
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm11/3000080e09">
"Please call him yourself&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000090a01">
"No&, but&, I-"

{	Fw("fwm門番_通常_normal");}
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm11/3000100e09">
"Please call him yourself&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.This isn't going to work&. I'm not getting anywhere&.

I might as well get out of here now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm004", 0, 10, null);
	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	SetVolumeEX("SE*", 0, 0, null);
　
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.!

What&.&.&.!?

Just now&, something touched my hair&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I turn around&, and someone suddenly grabs onto my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000110a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/l/bg303011_5_娯楽施設外観入り口レッド_l.jpg");
	CreateTextureSP("絵立絵", 500, Center, Middle, "cg/st/l/st竜峰_通常_normal_l.png");

	SetShade("絵背景", MEDIUM);
	Move("絵背景", 0, @0, @50, Dxl1, true);
	Move("絵立絵", 0, @0, @100, Dxl1, true);



	Move("絵背景", 1500, @0, @50, Dxl1, false);
	Move("絵立絵", 1500, @0, @100, Dxl1, false);
	FadeDelete("絵板写", 1500, null, true);

	Wait(500);

	SetVolumeEX("@dm004", 3000, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
Who is this guy?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

#CFGVC_RYUHO=1;//コンフィグ：竜峰ボイス解放
	St("C",740, @0,@0,"st竜峰_通常_normal");
	FadeSt("C",0,true);

	Delete("絵背景");
	Delete("絵立絵");

	FadeDelete("絵板写", 1000, null, true);

	St("C",740, @0,@0,"st竜峰_通常_smile");
	St("C",740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);
	FadeStPro("C", 7000, 200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/3000120b05">
"Sorry to have made you wait&. I got caught up at work&, the
 truth is that I didn't get here until now either&. I should
 have called you earlier&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000130a01">
"Eh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st竜峰_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/3000140b05">
"He's with me&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/3000150a01">
"Excuse me-"

{	Fw("fwm門番_通常_normal");}
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm11/3000160e09">
"Understood&. Please come inside&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
The man in the suit lowers his arms&, moves out of the way&, and silently bows his head down&.

What? What just happened?

I try to grasp what just happened while the stranger takes me inside&, still holding onto my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

	ClearFadeAll(0, true);

//※次ファイル["dm1140.nss"]

}
