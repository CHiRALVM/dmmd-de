//<continuation number="370">
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


scene dm2090.nss_MAIN
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
	#bg302051_5_グリッター前通り=true;
	#bg302052_5_グリッター前通りグリッター看板=true;
	#bg302051_5_グリッターエントランス=true;
	#bg302021_5_グリッター居間天井=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2100.nss";

}


scene dm2090.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

//嶋：前ファイルから引き継ぎ
	SoundPlay("@dm004",0,450,true);

	Delete("上背景");
	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Following Ren's directions&, we arrive at a sort of 
residential area&.

Gorgeous&, regal-seeming buildings line up down the street&.

It looks like they're all ranked&, and our place to stay is a smaller building at the end&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000010a01">
"This is it&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Compared to the other buildings&, it feels somewhat old&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//嶋：表示方法変更するかも
	OnBG(10,"bg302052_5_グリッター前通りグリッター看板");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Above the door is a plate with "GLITTER" written on it&.

There's a plate with a different name on the neighboring 
building&, so this is probably the nickname for this 
building&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	OnBG(10,"bg302051_5_グリッター前通り");
//	FadeBG(1000,true);

	Wait(300);

	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
I hold my Coil to the authentication monitor next to the 
door and try twisting the retro door knob&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");//あきゅん「ＳＥ：se物体_グリッター玄関_扉開く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, -200, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateTextureSP("絵背景弐", 200, Center, 0, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateColorEXadd("絵背景上", 3000, "WHITE");
	Fade("絵背景上", 0, 1000, null, true);

	Move("絵背景弐", 3000, @156, @0, null, false);

	FadeDelete("絵黒幕", 500, null, true);
	FadeDelete("絵背景上", 1000, null, false);

	Wait(2000);

	Move("絵背景", 3000, @-156, @0, null, false);
	FadeDelete("絵背景弐", 500, null, true);

	Wait(2000);

	FadeDelete("絵背景", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I step inside&.&.&. I'm instantly in awe&.

I thought it was old-fashioned just from the exterior&, but the interior makes it feel even more so&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000020a01">
"How should I say this&.&.&. The inside sure has felt the
 time&."

{	Fw("fwノイズ_通常_angry2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000030a03">
"&.&.&.I don't really like this&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000040a01">
"Why?"

{	Fw("fwノイズ_通常_angry3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000050a03">
"Too ancient&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Noiz's rather rude remark causes me to stare at him&, and I notice his expression changing little by little&.

Looks like his repulsion is somewhat fading&.

I was caught by him for a moment&, but without caring 
anymore I looked around the building&.

On the first floor is a large clock and lots of expensive-
looking furniture in a line&. At the back is a staircase 
leading to the second floor&.

As I look around&, Noiz lands on the sofa with a thud&.

Then&, he suddenly holds out his hand&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000060a03">
"Gimme your Coil&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000070a01">
"Wha?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000080a03">
"Hand it over&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000090a01">
"Why?"

{	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000100a03">
"I'll investigate the origin of the invitation&. If it's
 connected to Toue&, then it'll make things a lot faster&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000110a01">
"Toue? Why Toue?"

{	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000120a03">
"This Platinum Jail belongs to Toue&. The fact that you were actually invited here means there's a high possibility
 he's behind this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000140a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Noiz has a point&.

But before that&, I don't even know if I can trust him&.

Is he going to take my information from the Coil after he 
convinces me?

It would be easy for him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000150a03">
"What now?"

{	Fw("fw蒼葉_通常_cranky");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000160a01">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_normal2");
	St("C",740, @0,@0,"buノイズ_通常_normal3");
	FadeSt("C",200,true);
	FadeStPro("C", 6000, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000170a03">
"Don't tell me you're thinking I'm gonna snoop into your
 information&. I'm not gonna do it now&. I can do that
 whenever I want&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000180a01">
"&.&.&.Hey&, you&.&.&."

{	St("C",740, @0,@0,"buノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000190a03">
"Give it already&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Because of his constant insisting&, I unwillingly throw my 
Coil to Noiz&.

{	DeleteAllSt(200,true);
	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);}
Once he takes my Coil&, he connects it to his own and 
begins to work&.

{	CreateSE("SE01","se物体_パソコン_キーボード操作01");//あきゅん「ＳＥ：se物体_パソコン_キーボード操作01」
	MusicStart("SE01",0,700,0,1000,null,false);}
He taps the keyboard with awesome speed and continuously 
chases the text flowing across the monitor with his eyes&.

&.&.&.Impressive&.

I do have some confidence in my own skills&, but I know I 
can't do that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Maybe because he's concentrating so much&, an aura drifts 
from Noiz that makes it difficult to speak to him&. 

While I secretly watch from afar&, Noiz suddenly stops his 
hands&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000200a03">
"&.&.&.No way&."

{
	Fw("fw蒼葉_通常_shock2");	
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000210a01">
"Something happen?"

{
	Fw("fwノイズ_通常_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000220a03">
"No matter what I do&, I get an error&. Even the country's
 network isn't this complicated&. Impossible&. Putting aside
 the possibility of Toue being the culprit&.&.&."

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000230a03">
"It's a fact that the sender is completely hidden&. It might be a trap after all&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000240a01">
"&.&.&.Are you serious?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
You're saying it like it's nothing&.&.&.

Noiz throws me back my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"buノイズ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000250a03">
"Let's just be careful for now&. You might be targeted&, and  there'll probably be more Drive-Bys&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Drive-Bys&, huh&.&.&.

I know that Noiz was the rabbit head guy from before&, but 
I don't know who the second Drive-Byer is&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000260a01">
"Can anyone do a Drive-By?"

{	St("C",740, @0,@0,"buノイズ_通常_normal3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000270a03">
"If you have some knowledge and know some tricks&. Anyone
 can do it&, even you&. And&.&.&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Noiz stops in the middle of his sentence and stares at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000280a01">
"What now?"

{	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000290a03">
"You've done Rhyme&, and you still don't know? The whole
 thing with Usui and regulations happened about six&,
 seven years ago&."

{	
//St("C",740, @0,@0,"buノイズ_通常_normal");
//	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000300a03">
"When you still did Rhyme&.&.&. Back about ten years ago&,
 Drive-Bys should have been more common&."

{	Fw("fw蒼葉_通常_cranky");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000310a01">
"I don't know because I can't remember&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
Noiz closes his lips&, fixing his eyes on me in a cold 
stare&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/9000320a03">
"I don't get you and your little half-assed expression&. I'm sick of it&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000330a01">
"&.&.&.Wha?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 4000, 0, null);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,600,0,750,null,false);

	Wait(500);

	CreateSE("SE02","se人体_足音_歩く05");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(16);
	SetVolumeEX("SE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Leaving me with those final words&, Noiz stands up from the sofa and walks up the stairs&.

Shocked solid&, I can only watch him walk away&.

&.&.&.But soon&, I feel the tinges of annoyance I should've 
felt long before&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000340a01">
"What's his problem? I'm the one who doesn't get anything&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");
	OnBG(10,"bg302021_5_グリッター居間天井");
	CreateSE("SE01","se人体_動作_衣擦れ02");

	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, null, false);
	Fade("絵背景", 300, 1000, null, false);
	FadeBG(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
I angrily throw myself onto the couch and then take 
Ren out of my bag&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0106]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000350a01">
"Why's he looking down on me all the time? He just acts out and says things on impulse&, what a selfish guy&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/9000360a06">
"His remark and its intention is mostly incomprehensible&,
 to be sure&." 

{	Fw("fw蒼葉_通常_cranky2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/9000370a01">
"Right? It's not like I know him that well&, but I'd hoped
 he'd be a little more thoughtful&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 5000);
	SetShade("絵板写", SEMIHEAVY);
	Fade("絵板写", 1000, 1000, null, true);
	Wait(300);
	Fade("絵板写", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
As I complain to Ren about Noiz&, I begin to feel myself 
sinking deeper into the sofa&.

{	Fade("絵板写", 500, 250, null, false);}
It's reeeeally comfortable&.
Maybe that's why I'm getting a little sleepy&.

Thinking back&, we did run all the way here from the Old 
Resident District&.&.&.

{	Fade("絵板写", 500, 500, null, false);}
I should sleep a bit&, just to get some stamina back&.&.&.

I'm so tired&.&.&.

Without resisting against the creeping drowsiness&, I 
slowly close my eyelids&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵板写", 1000, 1000, null, true);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 2000, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	ClearFadeAll(1000, true);
	Wait(2000);

//※次ファイル["dm2100.nss"]

}
