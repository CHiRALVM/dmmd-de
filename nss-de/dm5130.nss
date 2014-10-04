//<continuation number="320">
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


scene dm5130.nss_MAIN
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
	#bg307011_5_パーツ屋店内=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5140.nss";

}


scene dm5130.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg307011_5_パーツ屋店内");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I timidly open the door when I walk into the high-class 
type of shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000010a01">
"Amazing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, 0, -339, "cg/bg/l/bg307011_5_パーツ屋店内_l.jpg");
	Move("絵背景100", 1000, -150, -339, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The inside is wide and clean with not a single piece of 
trash on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101, -1006, -243, "cg/bg/l/bg307011_5_パーツ屋店内_l.jpg");
	Move("絵背景101", 1000, -823, -243, Dxl1, false);
	Fade("絵背景101", 1000, 1000, null, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Allmates are lined up along the wall in glass cases&, and 
quiet music is played throughout the store&.

Next to the Allmates are toys&, accessories&, and even 
clothes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景101", 500, @0, @80, Dxl1, false);
	FadeDelete("絵背景101", 500, null, true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000020a01">
"Hey&, Ren&. Look at that&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Ren sticks his head out of the bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000030a01">
"Don't you think these Allmates are pretty and punctual
 compared to the ones back in the Old Resident District?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/3000040a06">
"Surely&. I can't deny that&."

{	Fw("fw蒼葉_通常_cheese2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000050a01">
"Right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
There are customers inside&, all carefree&, looking into 
cases with just nothing but pictures inside&.

{
	CreateTextureEX("絵背景100", 100, -100, -339, "cg/bg/l/bg307011_5_パーツ屋店内_l.jpg");
	Move("絵背景100", 500, 0, -339, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);
}
As I look around the shop&, I go to a section that has both custom parts and ones for maintenance&.

At just a glance&, it doesn't seem like there are that 
many different parts here&. 

It looks like there are only control panels and services 
for the new Allmate types&, and I probably can't request 
anything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000060a01">
"Hmm&. None of this will work&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I think of asking an employee&, but it's difficult enough 
to call out to another customer for me&.

I look around the store interior thinking of what to do&, 
and a digital poster catches my eye&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
"Platinum Jail Special Commemoration Event: Opening Soon!"

The date for it scrolled down in a large font&.

It's another two days until it opens&. There aren't any 
specifics on the poster&.

Platinum Jail Special Commemoration Event&.&.&.
I wonder what's going on there?

I'm a little interested&, so I go and ask the customer 
next to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000070a01">
"Uh&, excuse me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm女性B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm51/3000080e25">
"Yes?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000090a01">
"About that Platinum Jail Special Commemoration Event&.
 Do you know what's going on there?"

{	Fw("fwm女性B_通常_normal");}
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm51/3000100e25">
"They haven't said yet&. But it looks like that day's going
 to be a fun one&."

{	Fw("fwm女性B_通常_normal");}
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm51/3000110e25">
"It's bound to be an absolutely fabulous event&, you
 know? The usual parades are really like a dream!"

{	Fw("fw蒼葉_通常_fake");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000120a01">
"Huh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm女性B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm51/3000130e25">
"I wonder if Toue-san is going to show up? If he does&,
 it'll be absolutely fantastic!"

{	Fw("fwm女性B_通常_normal");}
//【女性客Ｂ】
<voice name="女性客Ｂ" class="女性客Ｂ" src="voice/dm51/3000140e25">
"He can do anything and everything flawlessly&. He's soooo
 amazing!"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000150a01">
"&.&.&.I see&. Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I slightly bow my head and leave&.

So not even the guests know what's going on at that event&.

But they did say that Toue may be there&.
Even if he does show up&, there's no way I could even 
get close to him&.

At the moment&, I have no way of coming into contact with 
Toue&.

Anything is fine&. If I just find a clue&, then I&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000160a01">
"Ren&, let's check out that special event tomorrow&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I talk to Ren&.
But he doesn't reply&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000170a01">
"Ren?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
When I look into my bag&, I see Ren staring at an Allmate 
sitting in a glass case&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000180a01">
"What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteFw();

//	CreatePlainSP("絵板写", 5000);

//	CreateTextureSP("絵背景", 100, -974, -300, "cg/bg/l/bg307011_5_パーツ屋店内_l.jpg");

//	Move("絵背景", 1000, @-50, @0, Dxl1, false);
//	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
All of the Allmate's specifications are on a monitor&, 
seemingly very impressive&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000190a01">
"Wow&.&.&. That's something&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
In the first place&, I never had a deep interest in 
Allmates&.

But when I saw the latest model&, I couldn't help but be 
astounded&.

My custom made Allmates aren't even a match for this 
latest model on its default settings&.

Made for diverse tasks&, like basic ones and Rhyme of 
course&. Things like analog maintenance aren't neccessary 
for this one&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	FadeDelete("絵背景", 1000, null, true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000200a01">
"Hah&.&.&. They've gone far&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/3000210a06">
"Are you interested in it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000220a01">
"Aren't you the one interested? You've been staring at it&."

{
	Fw("fwAM蓮_通常_normal");
//※以下のデータは無音データで納品されます（山）
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/3000230a06">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000240a01">
"Well&, it is pretty impressive&. It looks really useful for
 anything I could ever think of doing&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/3000250a06">
"&.&.&.Do you want to try using it?"

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000260a01">
"Wha?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Ren's odd question causes me to glance at him as his eyes 
continue to focus on the case&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000270a01">
"I wasn't thinking about that at all&. I have you&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/3000280a06">
"Isn't that only because you've never had the experience of a more efficient&, newer model?"

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000290a01">
"What're you talking about?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/3000300a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Ren's saying weird things again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,600,0,1000,null,false);
	BGPlainShake(50,300,0,2,0,0,1000,Dxl1,true);

	Wait(1000);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1800,null,false);

	CreateTextureEX("絵背景100", 100, -496, -524, "cg/bg/l/bg307011_5_パーツ屋店内_l.jpg");
	Move("絵背景100", 500, -496, -574, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
I frown&, trying to understand what he's getting at&, and 
Ren squirms out of my bag and dashes away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000310a01">
"Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SoundPlay("@dm007a",0,450,true);

	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,700,0,1600,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	Move("絵背景100", 500, -1000, -574, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Not listening to anything I say&, Ren keeps running until 
he exits the shop&.

What is he doing!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/3000320a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

//	Wait(500);

//※次ファイル["dm5140.nss"]

}
