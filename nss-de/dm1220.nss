//<continuation number="340"
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


scene dm1220.nss_MAIN
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
	$GameName = "dm1230.nss";

}


scene dm1220.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301021_5_プラチナジェイル中通り1赤");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I said we were going to find Koujaku&, but I don't actually have a clue as to where to go&.

For now&, I think I'll just go back to the place where he 
went with that girl before&.

Main Street still has the artificial upbeat feeling to it&, and I hurry as I feel I don't exactly fit in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg303011_5_娯楽施設外観入り口レッド");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg303011_5_娯楽施設外観入り口レッド.jpg");

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I cross the street and see the rectangular building&. I 
don't see anyone that resembles Koujaku around it&.

Maybe he's inside&, or didn't come here at all&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000010a01">
"Where did he go&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
He hasn't replied to my message&. That makes me search for 
him even more recklessly&.

Oh&, but didn't he tell me not to ever come here again? I 
wonder what he meant by that&, anyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_叩く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Shake("絵背景", 500, 0, 2, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
I think about it&, staring at the building&, and then 
someone taps on my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	FwPro("fw蒼葉_通常_shock2",1300,"fw蒼葉_通常_shock");
//	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000020a01">
"? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	St("C",740, @0,@0,"bu竜峰_通常_normal");
	FadeSt("C",500,true);
	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000030b05">
"Hey&, we meet again&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm004",0,450,true);

	St("C",740, @0,@0,"bu竜峰_通常_smile");
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
I turn my head&, and the man who gave me the card is there&. He smiles again with his narrow&, fox-like eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000040a01">
"O-Oh&. Hello again&."

{	St("C",740, @0,@0,"bu竜峰_通常_pride");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000050b05">
"Did you have fun yesterday?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000060a01">
"&.&.&.Yes&, sort of&."

{	St("C",740, @0,@0,"bu竜峰_通常_smile");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000070b05">
"I see&. That's good&. What about today? Surely you can use
 the card I gave you to get in&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000080a01">
"No&, I came here for a different reason&. I'm looking for
 someone&."

{	St("C",740, @0,@0,"bu竜峰_通常_normal");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000090b05">
"A friend?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000100a01">
"Someone like that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000110b05">
"I see&. Would you mind me helping?"

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000120a01">
"Huh? Oh no&, I couldn't possibly&."

{	St("C",740, @0,@0,"bu竜峰_通常_smile");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000130b05">
"Didn't you come all this way to find him? Just tell me
 what your friend looks like and I'll try my best&."

{	St("C",740, @0,@0,"bu竜峰_通常_pride");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000140b05">
"I also have some plans&, so I can't be too intensive&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000150a01">
"&.&.&.No&, but-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常_smile");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000160b05">
"If you don't want to say it&, don't worry&. I don't think
 it's unreasonable of you&. So don't put on such a face&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000170a01">
"&.&.&.I'm sorry&."

{	
	St("C",740, @0,@0,"bu竜峰_通常_pride");
	FadeSt("C",300,true);
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000180b05">
"There's no need to apologize&, hehe&. You're quite obedient&. I like kids like that&. They're interesting&."

{
	St("C",740, @0,@0,"bu竜峰_通常_normal");
	FadeSt("C",300,true);
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000190b05">
"But you should be careful&. You're a little too
 defenseless&. If you're not&, something you take for
 granted will&.&.&.Chomp!"

{	St("C",740, @0,@0,"bu竜峰_通常_smile");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000200b05">
"They might just gobble you up&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000210a01">
"&.&.&.Right&."

{	St("C",740, @0,@0,"bu竜峰_通常_serious");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000220b05">
"&.&.&.Oh&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
The smiling man's face turns serious&, and looks at 
something behind me&.

What is it?

When I turn back around&, the man goes back to his smiling 
expression&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000230b05">
"&.&.&.Well then&. I'll be going inside now&. Good luck on your
 search&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000240a01">
"Thank you very much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/2000250b05">
"Later&, then&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 500, 0, null);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
As if he's sliding across the ground&, the man walks 
elegantly towards the building&.

His footsteps aren't very loud&.
I guess it's because of his refined walk&.

//{	SoundPlay("@dm004",3000,200,true);}
As I stare at the back of his kimono&, I think of Koujaku&. 
He would do the opposite&, and walk in long&, intimidating   strides&.

I watch the man walk through the entrance&.

When Koujaku told me to never come back here&, wasn't I 
talking about this guy?

When I had started talking about him&, Koujaku's expression changed&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0078]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/2000260a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
Ren pokes his head out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000270a01">
"What's up?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/2000280a06">
"It seems that Beni is close to us&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000290a01">
"Huh!?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/2000300a06">
"I could hear the distinct sound of his wings flapping&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000310a01">
"Which means Koujaku is close too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/2000320a06">
"Most likely&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000330a01">
"Let's find them&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
I don't know if it's them or not over there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/2000340a01">
"What're you&.&.&.&. Koujaku&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_走る01");
	MusicStart("SE11",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
The game of tag is almost over&. 

I immediately turn into the alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);
	ClearFadeAll(1000, true);
	Wait(1000);

//※次ファイル["dm1230.nss"]

}
