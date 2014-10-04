//<continuation number="470">
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


scene dm4340lv.nss_MAIN
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
	$GameName = "dm4350.nss";

}


scene dm4340lv.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	St("C",740, @0,@0,"buクリア_正面マスクなし_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",740, @0,@0,"buクリア_通常マスクなし_sad");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000010a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Clear's delicate eyelashes lower&.
I'm wondering why he's even asking that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000020a04">
"&.&.&.People are always creeping towards death&. So don't you think that we should celebrate our life as much as we can?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000030a04">
"But no matter what they do&, the fact that they'll
 eventually die doesn't ever change&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000040a04">
"In the end&, everyone dies&.&.&. Just like machines and other
 things&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000050a04">
"But they struggle through their lives&. What would they be
 fine with leaving behind?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000060a04">
"The proof that they were here? But why would anyone want
 to leave behind that sort of thing?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000070a04">
"Isn't that just simply for self-satisfaction?"

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I wasn't able to come up with an immediate answer to 
Clear's question&.

But I still understood what Clear was trying say&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Why do people live?
For what reason do we exist?

What does it mean to be dead?

I wonder if there's anyone out there that has a concrete 
answer&.

You can't exactly speak with a dead person&.&.&.

There are people out there that say that you reach 
Amitabha's Pure Land after death&. And there are people 
out there that say you see hell&, instead&.

But I've never seen anyone like that before&.

No one knows which is right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000090a01">
"&.&.&.I wonder about that too&. I don't know&. I don't think
 anyone can answer your question&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000100a01">
"But I think that living is more or less about
 self-satisfaction&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000110a04">
"Isn't it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000120a01">
"There are people out there that dedicate everything to
 others&, but they still value their life&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000130a01">
"But death is one of those things that you can't even
 imagine&, so it's scary&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000140a04">
"Because they can't imagine it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000150a01">
"Yeah&. We don't know what will happen after death&, if
 anything does at all&, or if we just disappear&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000160a01">
"Even if you can imagine it&, you can't prove it&. Because
 you'll be dead&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000170a01">
"So that's why we want to leave proof that we were alive
 once&. I want people to know I was here when I disappear&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000180a01">
"We think that way because death is so alien and
 frightening&. That's why we try to fight death&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000190a01">
"But I think that it's people themselves that make death
 something scary&. Everyday living isn't just having fun
 all the time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000200a01">
"And there are things out there that people go through that are worse than death&, too&. They think that when they die&,
 they'll be set free from everything&."

{
	St("C",740, @0,@0,"buクリア_通常マスクなし_shock");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000210a04">
"Set free?"

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000220a01">
"Yeah&. They believe that some messiah will drop down from
 heaven and save them from their hell&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000230a01">
"So they depend on that to happen&. It's something that
 people decide for themselves&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000240a01">
"But I think that I should enjoy the time I'm alive&. I'll
 never know if I'm going to just drop dead the next day&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//	St("C",740, @0,@0,"buクリア_通常マスクなし_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000250a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Clear looks at me&, staying silent for some time&.

It looks like he's trying his hardest to understand what I mean&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000260a04">
"&.&.&.So in other words&, it's fine because you'd rather stay
 together with me than die?"

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000270a01">
"&.&.&.The conversation really took a turn just now&. But
 you're not exactly wrong&."

{
	Fw("fw蒼葉_通常_smile");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000280a01">
"I wouldn't have the patience to stay with a guy I didn't
 like&, anyway&."

{
	St("C",740, @0,@0,"buクリア_通常マスクなし_sad");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000290a04">
"Is that so&.&.&. I understand&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
As if he's finally understood&, Clear nods his head a few 
times&.

And then a soft smile floats to his face&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//cono「演出：ここ以前でクリアsmileを使わない」
	St("C",740, @0,@0,"buクリア_通常マスクなし_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000300a04">
"Master&, you've taught me things that I didn't know&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000310a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"buクリア_通常マスクなし_shock");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000320a04">
"Master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000330a01">
"&.&.&.Ah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
I'm carelessly caught up in the moment and Clear's puzzled voice brings me back to my senses&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000340a04">
"Has something happened?"

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000350a01">
"No&, I was just thinking how this is the first time I've
 seen you smile&."

{
	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000360a04">
"&.&.&.I'm sorry&, is it strange?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
Clear's eyebrows anxiously lower and I shake my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000370a01">
"Not at all&."

{
	St("C",740, @0,@0,"buクリア_通常マスクなし_smile");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000380a04">
"That's good&, then&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Clear smiles again and looks at me as if he's found 
something he's been looking for&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000390a04">
"Um&, Master&. I have something I'd like to ask of you&."

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000400a01">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000410a04">
"May I sing for you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000420a01">
"Sing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000430a04">
"You've taught me so many things&, and I'd like to sing for
 you to show my gratitude&. May I?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000440a01">
"Sure&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
I wonder what kind of song he'll sing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
Clear takes a deep breath&, and then starts to sing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm020b",0,450,true);

	CreateTextureEX("絵背景90", 90, -398, -216, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景90", 2000, -398, 0, Dxl1, false);
	Fade("絵背景90", 2000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Out of his mouth comes a graceful&, flowing chime&.

The purity of his singing gives me a calm feeling&.

I take a deep breath and immerse myself in the song&.

Words begin to naturally escape my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/4000450a01">
"&.&.&.I like your song&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
Clear stops singing and looks at me with a happy 
expression&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000460a04">
"Grandpa always loved when I sang for him&. That's
 why I thought you'd be happy with my song as well&."

{
	Fw("fwクリア_通常マスクなし_smile");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/4000470a04">
"I've never been so happy to be able to please you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 3000, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
After Clear says that&, he starts to sing again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -705, -453, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景100", 800, -665, -453, Dxl1, false);
	Fade("絵背景100", 800, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Next to me&, Ren closes his eyes&, and his ears twitch from 
time to time&.

Yesterday&, I had my questions about Clear&.

That maybe he wasn't human&.

They came to mind again when he was singing&.

But then I thought that it was fine either way&.

{
	FadeDelete("絵背景100", 1000, null, true);
}
Even though I have this power&, the power to control a 
person's entire mind with my voice&.&.&.

Clear has nothing to do with that&.

No matter what Clear is&, I love his singing voice&.

So it's fine the way it is&.

Let's just enjoy this brief moment of peace&.

Only now am I able to forget everything and sink into his 
song&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 4000, 600, null);

	Wait(4000);

	SetVolumeEX("@dm020b", 3000, 0, null);

	ClearFadeAll(3000, true);

	Wait(1000);

//※次ファイル["dm4350.nss"]

}
