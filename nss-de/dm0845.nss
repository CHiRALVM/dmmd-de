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


scene dm0845.nss_MAIN
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
	$GameName = "dm0850.nss";

}


scene dm0845.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//=========================
//蓮の場合
//=========================

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I get up from my bed&, and by my feet is Ren&, curled up in 
a ball&. I hold him close to me and he activates&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500010a06">
"Aoba&, what happened?"

{
	FwPro("fw蒼葉_通常_confuse",5200,"fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500020a01">
"Hm? Hmmm&. I was just wondering how you were doing&. We were caught in another Drive-By&, are you okay?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500030a06">
"There are no problems&."

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500040a01">
"I see&. I was just making sure&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500050a06">
"Right now&, I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500060a01">
"I see&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500070a06">
"Aoba&, aren't you going to sleep? You look tired&." 

{	Fw("fw蒼葉_通常_think");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500080a01">
"Well&.&.&. I keep thinking about lots of things&, and they're
 piling up&, really&."
 
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	DeleteFw();

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,600,0,1200,null,false);

	CreateTextureEX("絵背景100", 100, -109, -680, "cg/bg/l/bg104031_5_蒼葉宅自室消灯_l.jpg");
	Move("絵背景100", 1000, @0, @50, Dxl1, false);
	Fade("絵背景100", 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I sit cross-legged and Ren looks up at me&, still curled up in a ball&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500090a01">
"Lots of things happened&, but&.&.&. I'm mostly thinking about
 Mizuki&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500100a06">
"Is this about the possibility of saving him with your
 power if you had used it correctly?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500110a01">
"&.&.I kept wondering 'What if he never wakes up again?'&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500120a06">
"I think it was impossible for you to have picked the exact words necessary in that situation&."

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500130a01">
"I know&. I know&, but&.&.&. It was a chance that I could have
 saved him with&. Honestly&, it hurts to think that it was
 all my fault&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500140a01">
"And I even remembered that I had been in Rhyme&.&.&."

{	Fw("fw蒼葉_通常_think");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500150a01">
"Granny&.&.&. she said that the medicine she was giving me
 held down the headaches that I got from Scrap&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500160a01">
"I always took what she gave me&. But what if I hadn't?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500170a06">
"Your headaches are becoming worse because of Scrap&,
 correct?"

{
	FwPro("fw蒼葉_通常_think",5650,"fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500180a01">
"When I think about it&, if I don't take that medicine&, who
 knows how dangerous it will become? But it's been working
 well lately&." 

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500190a01">
"And my memories about Rhyme came back too&.&.&. I don't know
 if it was because it was my fault&, but it makes me feel
 sick&."


{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500200a06">
"Those two especially relate to each other&."

{
	FwPro("fw蒼葉_通常_think",4900,"fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500210a01">
"Yeah&. I don't have a sixth sense for it or anything&, it's
 more like a foreboding feeling&. And it looks like Toue
 knows something about me too&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500220a01">
"Maybe it's something I forgot&, and don't know about&.&.&.
 I have a feeling it is&."
 
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500230a06">
"Is that so&.&.&."

{
	FwPro("fw蒼葉_通常_worry",5650,"fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500240a01">
"I definitely want to stop Toue at all costs&, but&.&.&. I also want to learn what he possibly knows about me&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500250a01">
"I'm not psychic&, and don't know if he actually does&, but I have a feeling he knows something very important&."

{	Fw("fw蒼葉_通常_think");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500260a01">
"I have this feeling that I have to speak with him&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,600,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
With his mouth shut&, Ren puts his front paws on my knee&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500270a06">
"Then&, all the more so&, you should rest&. Tomorrow is the
 big day&, isn't it?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500280a01">
"&.&.&.You're right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEX("絵演出２", 201, -250, -268, "cg/ev/m/ev026蓮メンテ_m.jpg");
	CreateTextureSP("絵演出", 200, -250, -218, "cg/ev/m/ev026蓮メンテa_m.jpg");

	CreateColorEXmul("絵色黒", 5000, "BLACK");
	Fade("絵色黒", 0, 700, null, true);

	CreateSE("SE02","se人体_動作_衣擦れ22");
	MusicStart("SE02",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 900, 0, null);

	Move("絵演出", 1000, @0, @-50, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I hold up Ren and put him to my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500290a01">
"First&, I gotta do what I have to do&, huh? &.&.&.Thanks&.
 I feel better after talking to you&."

//{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500300a06">
"Is that so?"

{
//{	Fw("fw蒼葉_通常_smile");}
	Fade("絵演出２", 500, 1000, null, true);
	Delete("絵演出");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500310a01">
"Yeah&. All right&, let's go to bed&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreatePlainSP("絵板写", 6000);

	Delete("絵演出２");
	Delete("絵色黒");

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,600,0,600,null,false);
	SetVolumeEX("SE01", 4000, 0, null);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,600,0,1000,null,false);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I get into bed and Ren&, who always curls up by my feet&, 
curls up near my face instead&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4500320a01">
"Good night&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm08/4500330a06">
"Good night&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
I pet Ren's head and slowly close my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

	Wait(3000);

//※次ファイル["dm0850.nss"]

}
