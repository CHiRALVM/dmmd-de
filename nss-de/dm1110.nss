//<continuation number="280">
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


scene dm1110.nss_MAIN
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
	#bg302021_5_グリッター居間天井=true;
	#bg302011_5_グリッター部屋01=true;
	#bg302011_5_グリッター部屋01天井=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1120.nss";

}


scene dm1110.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302021_5_グリッター居間天井");
	FadeBG(0,true);

	Wait(1000);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);


//※時間経過


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
After eating all my food&, I doze off on the sofa&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：コイル演出
//あきゅん「コイル：ここ素材あり？」
	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Once I wake up&, I look at the time on my Coil&. It's almost dawn of the next day&. 

Koujaku&.&.&.
He's not back here yet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000010a01">
"Seriously&, what is he doing&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※玄関のドアが開く音
	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
At that exact moment&, the front door opens&.

I jump off the couch and look in its direction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//覇：目を見せなきゃいいかなあと思うのですが、微妙なら消します。
	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵立絵", 1000, Center, Middle, "cg/st/l/st紅雀_通常_cry2_l.png");
	CreateTextureSP("絵背景", 100, 1024, Middle, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");


	Request("絵背景", Smoothing);
	SetShade("絵背景", MEDIUM);

	Zoom("絵背景", 0, 2000, 2000, null, true);

	Move("絵立絵", 0, @0, @50, Dxl1, true);
	Move("絵背景", 0, @0, @25, Dxl1, true);

	Move("絵立絵", 1500, @0, @50, Dxl1, false);
	Move("絵背景", 1500, @0, @25, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Koujaku&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵立絵");
	Delete("絵背景");

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

	St("C",740, @0,@0,"st紅雀_通常_fake");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000020a02">
"&.&.&.Were you asleep? Sorry for waking you up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Koujaku looks at me and gives me an awkward smile&.

{
//	SoundPlay("@dm006",0,450,true);
	DeleteSt("C", 200,true);
}
But I overlooked his expression from just before&.

When he came through the doorway&, he had a pale&, exhausted look on his face&.

It was weird for Koujaku; I had never seen him like 
that before&.

I wonder what happened?

I was about to beat on him for coming so late&.&.&. but I 
couldn't bring myself to say anything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000030a02">
"Sorry for being so late&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000040a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000050a02">
"Aoba?"

{	Fw("fw蒼葉_通常_fake");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000060a01">
"Oh&.&.&. Uh&. You were out for a while&. What were you up to?"

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000070a02">
"Some stuff&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
"Some stuff"&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(300,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Koujaku doesn't explain any further and just walks towards the stairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000080a01">
"Hey&, wait a second&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);
	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Koujaku stops and turns around to face me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000090a01">
"Did you find anything out? Isn't that why you went in the
 first place?"

{	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000100a02">
"&.&.&.Yeah&. I didn't get anything at all&. A failed mission&,
 sorry&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000110a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
&.&.&.What the hell is this?

Of course he wouldn't come back with anything&. I give him 
a small glare&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000120a01">
"&.&.&.Koujaku&. Hear me out for a minute&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000130a02">
"&.&.&.Sure&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000140a01">
"I don't really care about what you were doing&, if you were
 playing with girls&, whatever&."

{
	FwPro("fw蒼葉_通常_angry",4600,"fw蒼葉_通常_worry4");
//	FwPro2("fw蒼葉_通常_angry",4600,"fw蒼葉_通常_sad",2600,"fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000150a01">
"But you should know better than to play around in a
 dangerous situation&. It's hard to put into words&,
 but I had a bad feeling back there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I speak with a serious&, questioning tone&, and Koujaku 
lowers his eyebrows apologetically&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cry2");
	St("C",740, @0,@0,"st紅雀_通常_sad3");
	FadeSt("C",200,true);
	FadeStPro("C", 4200, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000160a02">
"&.&.&.You're right&, it's a bad habit of mine&. I'm sorry for
 worrying you&."

{
	Fw("fw蒼葉_通常_sad");
//	FwPro("fw蒼葉_通常_sigh",1500,"fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000170a01">
"Well&.&.&. whatever&, it's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_sad3");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Without being able to straight-forwardly apologize&, a 
deadly silence drowns out the room&.

I don't know what I should do&, and I force myself to bring up a different topic&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000180a01">
"Oh yeah&, have you eaten yet?"

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000190a02">
"Yeah&, I have&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000200a01">
"I see&."

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000210a02">
"By the way&, this building&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Koujaku looks around the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_fake");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000220a02">
"It's pretty amazing&. The inside and outside look
 completely different&."

{	Fw("fw蒼葉_通常_fake");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000230a01">
"Yeah&, I was surprised when I first saw it too&."

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000240a02">
"Have you gone to the second floor yet?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000250a01">
"There are bedrooms up there&."

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000260a02">
"I see&. Then I guess it's time to get some shut-eye&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
As if trying to escape from me&, Koujaku hurries up the 
staircase&.

{
	SetVolumeEX("SE*", 0, 0, null);
}
But while walking up&, he suddenly stops and turns his head to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw紅雀_通常_normal2",4300,"fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/1000270a02">
"You should really sleep somewhere other than on a sofa&. I
 wouldn't usually say that&, but uh&.&.&. Well&, good night&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Koujaku goes up to the second floor and walks down the 
hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「↓：ここの寂しい感じの間のとれた演出が出来なければ音を流すかも要検討」

//※バタンとドアが閉まる音
	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,400,0,1000,null,false);

	Wait(500);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/1000280a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
I stare at the second floor without a single word coming tomind&.

What was he doing this whole time?

I'd usually be furious over him lying to my face&, but&.&.&.

I have a weird feeling about what might have happened to 
him while he was gone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
He sounded all over the place when he was speaking&, and 
distant&.&.&.

What happened with those girls?

&.&.&.Well&, he got what he deserved&.

What he does with girls doesn't have to do with me anyway&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
I start to feel a little down&, let out a deep sigh&, and 
then go up to the second floor&.

I make sure to check for any people in the room&, as I 
don't want to intrude on Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
The room isn't too large&, but is very well organized; in 
simple terms&, it's beautiful&. I throw myself onto the bed&.

&.&.&.Really&, what was that all about?

I can't even count how many times I've complained about 
him in my head&, and just stare at the ceiling&.

I'm thinking of ten thousand things at once&, and I 
gradually become sleepier&. 

I just fell asleep on the sofa earlier&, but the feeling of a nice bed is so much more different&. My body sinks into 
the matress&.

Keeping my eyelids open is difficult&.&.&.so I just let 
myself fall into slumber&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
	Wait(2000);

//※次ファイル["dm1120.nss"]

}
