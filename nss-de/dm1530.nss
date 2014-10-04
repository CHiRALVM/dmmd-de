//<continuation number="190">
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


scene dm1530.nss_MAIN
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

	#bg002012_1_旧住民区全景=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1540.nss";

}


scene dm1530.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg002012_1_旧住民区全景");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -479, -578, "cg/bg/l/bg002012_1_旧住民区全景_l.jpg");

	FadeDelete("上背景", 1000, null, true);

	Move("絵背景100", 2000, -479, -265, Dxl1, true);

	FadeDelete("絵背景100", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
After the central part of Oval Tower collapsed&, all 
functions of Platinum Jail came to a halt&.

But a quick intervention from the mainland calmed the 
chaos&.

The cause of Oval Tower's collapse was said to be the 
collapse of its main system&. Further details are unknown&.

Most of the people left in the tower were miraculously 
saved&, and there were no deaths or critical injuries&.

Before the tower began to act up&, it looks like a message 
was transmitted to the tower&.

However&, a portion of Toue's inner personnel are missing&.

Taking advantage of this opportunity&, Toue's plans&, 
research&, and experiments were brought into the light&.

With the plan to attract the people of the Old Resident 
District in with his special commemorative event foiled&, 
the people barely escaped his clutches&.

Toue Inc&.'s affiliated businesses have been undertaken by 
different companies&. Allmates as well&.

Even the Rhyme companies have been transformed&, Usui is no longer used&.

Soon&, Toue Inc&.'s image will fade from Midorijima&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg101011_1_旧住民区通り表");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Right now&, the islanders are trying their hardest to take 
back their island&.

Noiz hasn't shown up&, but there are rumors about his team 
around&.

Clear shows his face in Heibon sometimes&.

Mink broke contact&. But there's no way he could've 
disappeared&.

Mizuki regained consciousness&. He can't leave the hospital&,
but he's happy whenever I come to visit him&.

My headaches have become a thing of the past&.

And the pain I feel in my hair has become dimmer lately&.

I haven't felt "his" presence lately&.

But&.&.&. I know he's still inside of me&.

He's sleeping somewhere deep inside of me&.
I can feel it&.

So honestly&, my anxiety isn't exactly gone&, but I'm calm 
enough&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg101031_1_旧住民区通り裏路地紅時雨");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
After the tower's collapse&, Koujaku&, the Beni-Shigure 
members and I returned to the Old Resident District&.

Koujaku lost consciousness halfway so he was hospitalized&.

His physical and emotional strength must've run out from 
all of that&, and the thing with his tattoo&.

I was worried because he slept for three days straight&, 
but he woke up just fine in the end&.

Little by little&, we're now returning to our daily lives&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(500, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
And so&, one week later&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(2000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I sit behind the counter in Heibon as usual&.

{
	SoundPlay("@dm001",0,450,true);

	CreateTextureEX("絵背景100", 100, -458, -364, "cg/bg/l/bg102011_5_平凡店内_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);
}
I saw Koujaku when he was discharged from the hospital&, 
but not after that&.

I wonder how he's doing&.

It seems he's taking a break off work now&.
I wonder if he's doing okay?

{
	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Right as I think that&, the shop door opens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000010a01">
"Welcome!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Move("絵背景100", 0, @0, @0, null, true);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I take my elbow off the counter and straighten up&.

{
	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Instead of to the products on the shelf&, the customer 
heads over to the counter&.

What? Maybe for an order?

And then&.&.&.

{
	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000020a02">
"Yo&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000030a01">
"Koujaku!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The one who came in was Koujaku&.

He stands by the counter with a happy and somewhat 
nostalgic expression&.

{
	St("C",740, @0,@0,"st紅雀_通常_smile2");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000040a02">
"It feels like it's been a while&. How are you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000050a01">
"Oh&, good&. What about you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000060a02">
"Good&. Back to the usual&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000070a01">
"I heard that you're not working anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_worry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000080a02">
"Ah&, well&, that's&.&.&. Yeah&. Just for a while&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000090a01">
"?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Maybe he's not actually back to normal yet&.

I look at him and notice a strange tenseness that's very 
much out of character&.

We probably just can't calm down because it's been so long since we've seen each other&.&.&.

{
	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000100a02">
"So&, yeah&. Do you have time after work today?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000110a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st紅雀_通常_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000120a02">
"I've missed your place a bit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000130a01">
"Missed&.&.&. You can come over&, but Granny isn't here today&.
 She said she'd be late because of a neighborhood
 association meeting today&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000140a02">
"That's all right with me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000150a01">
"? You weren't aiming for her food?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000160a02">
"Well&, I came to talk&. About some&.&.&. things&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Koujaku looks into my eyes hoping for some sort of 
approval&.

Even without him asking&, I know he wants to say something&.

 We'd made it back to the Old Resident District and now 
 everyone has a bit of a 'living happily ever after' 
 feeling&, but&.&.&.

A lot happened in that short time&.

Not only to the island&, but between me and Koujaku as well&.

I also had the feeling like I wanted to talk about some 
things&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000170a01">
"I got it&. So&, I'll call you when work's over&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/3000180a02">
"Okay&, I'll be waiting&. See you&, then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/3000190a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Koujaku nods&, then raises one of his hands while leaving 
the shop&.

&.&.&.So he wants to talk&.

I put my elbow back on the counter&, and take a small 
breath&.

It's not because of my imagination or anything&.&.&.

But when he said that&, my heart jumped&, just a little bit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(1000, true);

	Wait(2000);

//※次ファイル["dm1540.nss"]

}
