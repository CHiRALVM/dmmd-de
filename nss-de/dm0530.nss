//<continuation number="420">
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


scene dm0530.nss_MAIN
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
	#bg106021_5_廃ビル部屋=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0540.nss";

	//▼頭痛レベル設定
	$HALevel=1;

}


scene dm0530.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	Wait(2000);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSP("絵窓/絵黒幕", 4000, "BLACK");
	DrawTransition("絵窓/絵黒幕", 0, 0, 200, 300, null, "cg/data/circle_02_00_1.png", true);


	CreateTextureSP("絵背景", 500, Center, Middle, "cg/bg/bg106021_5_廃ビル部屋.jpg");
	SetShade("絵背景", MEDIUM);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorEXsub("絵薄黒", 3000, "WHITE");
	Fade("絵薄黒", 0, 150, null, true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.&.&.&.&.&.

Mn&.&.&.&.


&.&.&.&.&.What's that smell&.&.&.?

I've smelled it before somewhere&.
It was a spice&.&.&.

Herbs?

Cinnamon?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 1500, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I slowly open my eyes&, and I see someone standing some 
distance away from me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
That's&.&.&. the giant man&.

What was his name&, Mink&.&.&.?

He&.&.&.
What's he doing?

He casts his gaze down to the flame of a single lit candle&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Is he saying something?

I can't hear what it is&.

I wonder what he's saying&.&.&.

What is&.&.&.

He&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵背景", 2000, 1000, null, false);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Delete("絵薄黒");
	DeleteSt("C", 0,true);
	Wait(2000);


	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSP("絵窓/絵黒幕", 4000, "BLACK");
	DrawTransition("絵窓/絵黒幕", 0, 0, 200, 300, null, "cg/data/circle_02_00_1.png", true);

//※演出：時間経過
	FadeDelete("絵色黒", 2000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.&.&.&.

&.&.&.&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：頭痛
	HAFade(6000, 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
&.&.&.Ow&.

Owowowow&.

My head hurts&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵窓/絵*");
	Delete("絵窓*");

	CreateColorEX("絵黒幕", 4000, "BLACK");
	CreateTextureSP("絵背景", 500, -720, Middle, "cg/bg/l/bg106021_5_廃ビル部屋_l.jpg");
	Move("絵背景", 0, @100, -50, null, true);

	Fade("絵黒幕", 0, 300, null, true);

	Move("絵背景", 1000, @0, @-50, null, false);
	FadeDelete("絵板写", 1000, null, true);

//	Fade("絵黒幕", 500, 0, null, true);

	FadeDelete("絵黒幕", 500, null, true);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The sharp pain forces me awake and I open my eyes to see a worn out ceiling&.

&.&.&.Where is this?
What happened to me&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, -150, -137, "cg/ev/m/ev052蒼葉モブ強姦a_m.jpg");

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
&.&.&.Right&.
I was about to be raped&.&.&.

&.&.&.What happened after that?
I'm still wearing all my clothes&.&.&.

At any any rate&, this room is most likely a different one  than before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：頭痛
	HAFade(2000, 0,true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000020a01">
"Owowow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I have to take my pills&.&.&.
Wait&, my bag&.

Where'd my bag go?
Ren was in there too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ドアを開閉する音
	CreateSE("SE01","se物体_ドア鉄_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("SE*", 1500, 0, null);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵背景", 300, @0, @-50, Dxl1, false);
	FadeDelete("絵背景", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I hear the sound of the door opening&, jump up&, and forget 
the pain for a moment&.

Who is it? Mink?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	SoundPlay("@dm006",0,450,true);

//※演出：グラフィック到着後fw変更可能性あり
	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000040e01">
"&.&.&.So you're awake?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
A skinny&, lanky man peeks through the rusty iron door&.

When the man sees me&, he smiles and then he comes into the room&.

Who is this guy&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000050e01">
"How do you feel? It must've been traumatic to have people
 suddenly try and rape you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000060e01">
"It was because no one can go against Mink&. I can't even
 tell what he's thinking&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000070a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
The man comes into the room&, alone&. I glare at him and 
wave him away with my hand in a panic&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000080e01">
"I'm not going to do what Mink said&, so don't look so
 afraid&, okay? &.&.&.Aoba's your name&, right?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000090a01">
"! Who are you!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000100e01">
"Just like I thought&. Aoba&, from Junk Shop Heibon&, right?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000110a01">
"You know about Heibon?"

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000120e01">
"Yeah&. I used to go there to buy a lot of things a long
 time ago&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
He watches for my reaction and gives off a happy smile&. 

In this situation&, it's music to my ears to hear the shop'sname&.

Since he was a customer&, I almost want to be able to 
confide in him&.

But I can't do that&.

This guy is kind of weird&.

He's fidgeting&, and supicious on top of that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000130e01">
"It's so exciting to be able to meet you here&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000140a01">
"Y-Yeah&. Right&."

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000150e01">
"Really? When I heard you were caught&, I thought of
 something really good&."

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000160e01">
"I thought that we should get out of here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000170a01">
"&.&.&.Are you serious?"

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000180e01">
"Well of course! Isn't it a good idea?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000190a01">
"But&.&.&. Aren't Mink's people all around here?"

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000200e01">
"It's fine&, it's fine&. I'll do something about it&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000210a01">
"You'll do something about it&.&.&. What exactly would you
 do?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000220e01">
"I said it'll be fine&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000230a01">
"So then&, how?"

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000240e01">
"&.&.&.You just can't stay quiet&, can you?"

//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000250e01">
"I said that it'd be fine&, didn't I?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se戦闘_銃_構える02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Wait(300);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000260a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Hanging onto me&, the man's face suddenly changes and he 
pulls out a gun&.

His eyes widen and his mouth curls into a grin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000270e01">
"Hey&, it'll be fine&. I'll get you out of here&, so&, please
 let me hear your voice more&, okay?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000280a01">
"My voice&.&.&.?"

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000290e01">
"Yeah&. You're the one who always answers for Heibon on the
 phone&."

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000300e01">
"I found your voice so mesmerizing from the first time I
 heard it&, you know? I would always call just so I could
 hear your voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000310a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
So he only came to the shop for that&.&.&. There were so many other people who called the shop for the same reason too&.

So he's just one of them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000320e01">
"So make sure to let me hear even more of your many voices&. I want to hear them&. Okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE01","se物体_ベッド_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
He loads his gun&, and gets on his knees onto the bed&. He 
pushes the gun to me&, as if to gesture that I should lie 
down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000330e01">
"Don't move! If you try to escape I'll shoot&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000340a01">
"&.&.&.&.&."

</PRE>

	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000350e01">
"Whatever's fine&, it's not too demanding&. I just want to
 hear your voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE01",0,400,0,1000,null,false);
	SetVolumeEX("SE01", 200, 0, null);
	Wait(300);
	MusicStart("SE02",0,500,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
He raises his voice and pants loudly&, and then begins to 
touch my face&.

Disgusting&.&.&.!

Besides&, why does he have to keep looking into my eyes&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(2000, 0,true);

	Wait(200);

	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
Ouch&.&.&.
My head&.&.&.

Shit&.&.&.
Why does it have to start up again now&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);

	CreateSE("SE01","se物体_ドア鉄_扉開く強く01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Wait(300);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000360a01">
"!"

{	Fw("fwm電話の人_通常_normal");}
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000370e01">
"&.&.&.Eek!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
The door to the room flies open&, and the man turns around&, face turning pale as a ghost&, dropping his gun&.

{
	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",300,true);
}
The one standing there was&.&.&. Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/3000380a05">
"&.&.&.What are you doing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000390e01">
"F-Forgive me!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,000,null,false);
	DeleteSt("C", 300,true);

	Wait(500);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
Mink comes inside and grabs the jumbled man by the collar&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm電話の人_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm05/3000400e01">
"Eeek! I'm sorry&, I'm sorry!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);

	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/3000410a05">
"Get your ass over here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock2",900,"fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/3000420a01">
"Eh? Ow&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
Mink grabs me by the arm and drags me off of the bed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1500, true);

//※次ファイル["dm0540.nss"]

}
