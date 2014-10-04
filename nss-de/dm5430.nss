//<continuation number="230">
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


scene dm5430.nss_MAIN
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
	#bg304081_5_東江タワー物置部屋=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5440_vs.nss";

}


scene dm5430.nss
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

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");
	CreateTextureSP("絵霞", 110, Center, 0, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");
	CreateTextureSP("絵霞立絵", 1000, Center, InBottom, "cg/bu/buクリア_正面マスクあり_normal.png");

	SetShade("絵霞", MEDIUM);
	SetShade("絵霞立絵", MEDIUM);
	Move("絵霞立絵", 0, @0, @40, null, true);

	St("C",740, @0,@0,"buクリア_正面マスクあり_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 2000, null, true);
	Wait(500);
	FadeDelete("絵霞*", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.When I open my eyes&, the first thing I see is a mask&.

A gas mask&.&.&.

&.&.&.Clear?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/3000010a04">
"Oh! Everyone! Master has woken up!"

{	DeleteSt("C", 180,true);
	St("C",740, @0,@0,"bu紅雀_通常_happy");
	FadeSt("C",180,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000020a02">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm001",0,450,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Then Koujaku&, with a smiling face&, came into view&.
And behind him was a white ceiling&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000030a01">
"Clear&, Koujaku&.&.&. Why are you two&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000040a02">
"There are more over there!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,500,0,1300,null,false);

	Move("絵背景", 1000, @0, @-25, Dxl1, false);
	Move("@StNameC/C*", 1000, @0, @-40, Dxl1, false);
	DeleteSt("C", 1000,false);
	FadeDelete("絵背景", 1000, null, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
As he helps me up&, Koujaku points his thumb behind his 
back&.

{
	St("MR",740, @0,@0,"stミンク_通常_normal");
	St("ML",740, @0,@0,"stノイズ_通常_normal");
	FadeAllSt(200,true);
}
Noiz and Mink are leaning on a wall some lengths away&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000050a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
When I move the upper half of my body&, my face warps with 
pain&.

Ow&, ow&.&.&.

Well&, I was beaten to a pulp by the Morphine guys&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
When I look around&, I see that I'm not in the research lab anymore&.

There are more neatly organized cases of various sizes 
lined up on a system of shelves&.

It looks like a room where they'd leave other equipment&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000060a01">
"How did you all make it here&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000070a02">
"You know&, the usual passageway between the Old Resident
 District and Platinum Jail&."

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000080a02">
"We used it&, and then this guy over here tampered with the
 confirmation monitors&."

{	DeleteSt("C", 180,true);
	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",180,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/3000090a03">
"All I could do was use a trash ID&. It's piss hard to forge Platinum Jail IDs&, so I did a sweet job as a cracker with
 all the analysis I did&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/3000100a03">
"These guys bought information&, so I helped them out a
 little&. I could at least get them in&."


{	DeleteSt("C", 200,true);
	St("C",740, @0,@0,"st紅雀_通常_normal");
	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
	FadeDeleteStPro("C", 2600, 180, 200, 180);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000110a02">
"And then we'll beat the shit out of that Toue bastard&.&.&.
 right!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 50, 50, 0, 0, 500, Axl1, false);

	Wait(50);
	FadeDelete("絵板写", 250, Dxl1, true);

	St("C",1740, @0,@0,"fuクリア_正面マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/3000120a04">
"I was frantic all the way here! It was dreadful&, Master!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Clear wraps his arms around me in an energetic hug&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
	Delete("絵背景");

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 500, 5, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);


	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000130a01">
"Wah&, Ouch!"

{	Fw("fw紅雀_通常_shout");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000140a02">
"Hey&, get off! Aoba's all black and blue!"

{	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(20001,43,320,26,"ev");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/3000150a04">
"A-ah&, I'm sorry&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000160a01">
"Haha&.&.&. Ouch&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Clear's weird antics make me spontaneously laugh&.
It's been a long time since I've laughed like that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("LL",740, @20,@0,"stノイズ_通常_normal");
	St("ML",742, @50,@0,"st紅雀_通常_normal");
	St("MR",741, @-55,@0,"stクリア_通常マスクあり_normal");
	St("RR",740, @-40,@0,"stミンク_通常_normal");

	FadeSt("ML",300,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
Koujaku&, <k><?>
{	FadeSt("MR",300,true);}Clear&, <k><?>
{	FadeSt("LL",300,true);}Noiz&,<k>{	FadeSt("RR",300,true);}and Mink&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
And everyone else was safe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
When I look at everyone's faces&, my heart tightens&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/3000170a03">
"So those two were from Morphine&, huh?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000180a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
Virus and Trip&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cranky2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000190a02">
"I always thought they were pieces of shit&.&.&."

{	DeleteSt("C", 180,true);
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",180,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/3000200a04">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
Clear looks around restlessly&, as if he's looking for 
something&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/3000210a04">
"Come to think of it&, where did Ren-san go? I can't seem to find him&.&.&."

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/3000220a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 180,true);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/3000230a02">
"Hey&, what's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
Koujaku frowns when he sees my face&.

Ren is&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,500,0,1200,null,false);
}
While I was thinking of a way to avoid answering&, 
something in my bag started to squirm around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5440_vs.nss"]

}
