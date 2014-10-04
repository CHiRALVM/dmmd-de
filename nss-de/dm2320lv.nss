//<continuation number="590">
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


scene dm2320lv.nss_MAIN
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
	$GameName = "dm2330lv.nss";

}


scene dm2320lv.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304081_5_東江タワー物置部屋");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, -515, -572, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Noiz looked down on my flustered face with a calm 
expression&.

His cheek was swelled up from that harsh fight earlier&, 
but he doesn't look like he's in pain at all&.

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000010a01">
"&.&.&.Did that not hurt?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000020a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
He doesn't say anything&. His expression doesn't change 
either&.

This guy&.&.&.
He was like this before&, too&.

He didn't say he was in pain when scalding coffee was 
spilled onto his hand&.

At first I thought he was playing tough&, but now it seems  strange&.

And right now&, he wasn't able to feel any sort of backlash after hitting me back&.

Usually you'd be angry and say something like "You really  did it now"&.&.&.

He has none of that&. He doesn't hesitate either&.
It's like he's an empty machine&.

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000030a01">
"&.&.&.Don't you feel pain?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000040a03">
"&.&.&.It doesn't hurt&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Noiz looks at me with icy eyes&.

His voice is more dry&, more inhuman than I've ever heard 
it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000050a03">
"Whether I'm hit&, kicked&, or stabbed&, nothing hurts&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000060a03">
"I can't feel pain&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000070a01">
"You can't feel pain?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000080a03">
"My senses are all dull&, all except in my tongue&. I can
 still feel things&, but it always feels like my skin is
 covered by something thick&."

{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000090a03">
"Didn't I tell you earlier that you didn't need to take
 care of me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000100a01">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000110a03">
"If I leave my wounds alone&, they'll heal just fine&. That's always how it's been&."

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000120a03">
"But you're different&. Don't you feel pain? But you still
 try to cover for me&, I don't get it at all&."

{
	Fw("fwノイズ_通常_cool2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000130a03">
"It's a total mystery to me as to why you'd go to those
 lengths&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 3, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Wait(1000);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000140a01">
"You're not the one who doesn't get it&, asshole&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I lightly dust off Noiz's cheek&, cutting off his words&.

It surprised me to hear that he didn't feel pain&.

In fact&, I couldn't even comprehend what he meant at first&.

But when I watched him say it so calmly&.&.&.

I pretty much understood&.

Noiz can't feel pain&.
He doesn't know what real pain is&.

That's&.&.&. isn't that just sad?

Just thinking that he can't feel pain&, let alone anything 
else&.&.&.

The feeling of hurting someone and being hurt&.

Most people understand what it's like when it comes to 
others&, and reflect on themselves&.

But he's probably never done that&.

If you don't feel pain yourself&, you can't understand the 
pain of others&.

So he wasn't able to understand why I did what I did&.

What it's like for someone to truly care about someone 
else&. It's not something cost-benefit&.

But he doesn't know that&.

And for him to say that I have some sort of motive&.&.&. it's 
a lonely way to think&.

While thinking that&, I found Noiz to be awfully childish&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm013",0,450,true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000150a01">
"You say some pretty stupid things&. Even if you don't feel
 pain&, you'll bleed&, and die if it's fatal&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000160a01">
"You're just trying to find some way to argue against me
 helping you even though you don't feel pain&."

{
	Fw("fwノイズ_通常_serious");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000170a03">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_worry3",4300,"fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000180a01">
"It really hurt when I covered your ass&. But I'm glad I did it&. Enough that I don't care about getting hurt over it&."

{
	FwPro("fwノイズ_通常_normal2",4500,"fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000190a03">
"Then it'll be your fault when I die&. You're going to be a
 pain in the ass in the future&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000200a01">
"Wrong&. Why can't you think of anything other than being
 rebellious? I'm saying I want to help you because I don't
 want it to be my fault&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000210a03">
"So you do it because you want to&."

{
	FwPro("fw蒼葉_通常_worry4",6500,"fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000220a01">
"Stop talking like that&. I said that you were wrong&. If I
 were to say why I wanted to help you&.&.&. I don't think I
 could say it in a way for you to understand&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000230a01">
"Anyway&, I wanted to save you&. So I'm treating you and
 watching your back&."

{
	Fw("fwノイズ_通常_cool2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000240a03">
"I don't get what you mean&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000250a01">
"You just don't understand other people&. You're calm
 because you don't feel pain&, but I'm not like you&. So
 that's why I'll go around doing things myself&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000260a03">
"Are you stupid?"

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000270a01">
"I don't want to hear that from you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000280a03">
"You're just losing instead of getting collateral&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000290a01">
"That's okay&, I don't think I'm losing anything&. In a way
 I'm being selfish&, since I'm pushing you around to be
 doing whatever I want&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000300a03">
"And if I told you to stop?"

{
	FwPro("fw蒼葉_通常_normal2",2300,"fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000310a01">
"I won't&. Don't you hate me for looking after you? But I
 don't care about that&. I'm just doing what I want&."

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000320a01">
"If that's too much&, just hear me out&. Then I'll think
 about it&. So you need to think about me some more&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000330a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Noiz shuts up&, suddenly looking impatient&.

I did say some weird things&.&.&.

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000340a03">
"&.&.&.Do you even realize how damn weird you sound
 right now?"

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000350a01">
"Eh?"

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000360a03">
"Saying that you think about me right to my face&. It's the
 first time I've seen a guy say something like that without
 even blinking&."

{
	Fw("fw蒼葉_通常_cranky2h");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000370a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I feel my face go burning hot when he points it out&. I 
turn my face away&, flustered&.

{
	Fw("fwノイズ_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000380a03">
"Your face is red&."

{
	Fw("fw蒼葉_通常_shy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000390a01">
"Shut up&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000400a03">
"&.&.&.But&, well&, I said this before&, but you're the first one to ever get in my way so much&."

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000410a03">
"I've always hated people and pushed them away; they always come to me for the bit of coin I have&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
I turn my face back when I hear Noiz's voice calm down&. 
He had a different expression on&.

His cold expression disappeared and a faintly confused 
one took place&.

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000420a01">
"Bit of coin? What do you mean?"

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000430a03">
"Same old&, same old&. My parents are rich&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000440a01">
"Rich?"

{
	FwPro("fwノイズ_通常_cool2",2000,"fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000450a03">
"Well&, my parents&. But I don't have any interest in people
 like them&. So when I became a little rowdy&, I became a
 problem&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000460a03">
"I was a problem kid when I was younger&. I didn't feel pain so I didn't understand that I hurt other kids&. I couldn't
 figure it out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal3");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000470a03">
"So the crybabies would scream to their selfish parents and I'd come home to my parents telling me I was a disgrace&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000480a03">
"Not concerned with anyone&, I was shut up in my room&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000490a01">
"That sucks&.&.&."

{
	FwPro("fwノイズ_通常_normal3",7500,"fwノイズ_通常_cool2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000500a03">
"Being rich and all&, I had a toilet&, a bath&, a perfect room made for me&. I had a tutor to teach me and a maid to bring
 meals&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000510a03">
"No one else came to see me&, and I'd lick my own wounds&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000520a01">
"&.&.&.&.&."

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000530a03">
"At first I was so lonely that I cried&, but I eventually
 got used to being alone&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000540a03">
"I could live on my own&. I don't really need other people&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000550a01">
"That's&.&.&. not true&, is it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
But&.&.&.

That might be true&. I went through something like that&.
I would've probably become just like Noiz&.

Forced to live alone&, without any other choice&.&.&.

Before you know it&, it'd become the usual&, and you 
wouldn't doubt it&.

Noiz said it with a straight face&, but he's still like a 
kid from that awful experience&.

If his parents had accepted him&.&.&. he wouldn't have had to think that being alone was all right&.

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000560a03">
"I want to ask you something&. If I had for example&, thought about you more&, would I get something out of it?"

{
	FwPro("fw蒼葉_通常_worry4",5000,"fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000570a01">
"&.&.&.First of all&, throw that cost-benefit way of thinking
 out&. Anyway&, you wouldn't lose anything&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/2000580a03">
"What's your basis on that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/2000590a01">
"I don't have anything like that&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//※次ファイル["dm2330lv.nss"]

}
