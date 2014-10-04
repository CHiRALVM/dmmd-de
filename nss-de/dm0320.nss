//<continuation number="560">
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


scene dm0320.nss_MAIN
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
	#bg101051_5_旧住民区通り裏路地06=true;
	#bg101021_5_旧住民区通り裏路地01ドライジュース=true;
	#bg105011_1_刺青スタジオロビー=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0330.nss";

}


scene dm0320.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101011_3_旧住民区通り表");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
After work finishes for the day&, I leave the store with 
deliveries to Mizuki&.

The order came from Mizuki's shop&, so I thought about 
meeting him on the way home&.

When you go a bit north from Heibon&, there's Mizuki's 
shop&, "Black Needle"&.

It was originally a studio tattoo parlor&, but since then 
the waiting room was turned into a bar and the parlor 
became a hangout spot&.

Even outside of Rib team members and their tag arts&, 
tattoos have become popular&, especially in casual fashion&, 
so Mizuki's shop was doing pretty well&.

Of course&, since Mizuki is a tattooist&, he's asked if he 
could tattoo me&. I'm not interested so I won't do it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I walk into the darkening town and arrive near Black 
Needle&.

This area is Dry Juice's territory&. 
I notice some of the members walking around&.

When I was with Mizuki I became acquainted with the members
too&, so they won't bother me when I walk through their 
territory&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fwmドライ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ドライジュースメンバーＣ】
<voice name="ドライジュースメンバーＣ" class="ドライジュースメンバーＣ" src="voice/dm03/2000010e53">
"Aah&, Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000020a01">
"Hey&, long time no see&."

{	Fw("fwmドライ_通常_normal");}
//【ドライジュースメンバーＣ】
<voice name="ドライジュースメンバーＣ" class="ドライジュースメンバーＣ" src="voice/dm03/2000030e53">
"Business with Mizuki-san?"

{	Fw("fw蒼葉_通常_smile");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000040a01">
"Our shop got an order&. I came to deliver it&."

{	Fw("fwmドライ_通常_normal");}
//【ドライジュースメンバーＣ】
<voice name="ドライジュースメンバーＣ" class="ドライジュースメンバーＣ" src="voice/dm03/2000050e53">
"Mizuki-san's at our hangout&."

{	Fw("fw蒼葉_通常_smile2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000060a01">
"Got it&. I'll try going there then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The hangout isn't far from here&. 
I decide to head over there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg101021_5_旧住民区通り裏路地01ドライジュース");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg101021_5_旧住民区通り裏路地01ドライジュース.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The Dry Juice hangout is an area that branches out into 
several alleys&. Because of the large number of people&, 
their hangout area is spread pretty far&.

While members hung out in each alley&, Mizuki would always 
be standing in once place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 2000, @512, @0, AxlDxl, true);

	Wait(500);

	St("C",740, @0,@0,"stミズキ_通常_normal");
	FadeSt("C",200,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
In front of stairs where their huge tag art is drawn&, 
Mizuki stands talking with other members&.

When he notices me&, Mizuki beckons me to come closer with 
his hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, 0, 0, "cg/bg/m/bg101021_5_旧住民区通り裏路地01ドライジュース_m.jpg");

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_cheese");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000070a01">
"Nice to see you again! Heibon's delivery service here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000080b06">
"Oh&, the things I asked for? Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_紙_袋漁る01");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I pass him the bag and send the receipt with my Coil&. I 
receive a confirmation reply from Mizuki&, and with that 
the delivery is done&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_laugh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000090b06">
"Thanks for doing this&. Your shop even has minor parts for
 stuff&, so it's worth it to rely on you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cheese");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000100a01">
"I'll tell that to the boss&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000110b06">
"Are you going home after this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000120a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000130b06">
"Good job&. I'm going back to my shop now&, come and have a
 drink&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000140a01">
"Well&, if you insist&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Mizuki begins to walk away from the wall&. 
I follow after him&.

The surrounding members greet Mizuki as he passes them&.

Among them are guys who bow as low as 90 degrees&, and 
Mizuki gives them wry smiles&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景");

	SoundPlay("@dm002",0,450,true);

	OnBG(10,"bg105011_1_刺青スタジオロビー");
	FadeBG(0,true);
	Wait(1000);

	SetVolumeEX("SE*", 300, 0, null);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Black Needle is a dark building with a small sign placed 
where it won't attract attention&.

When the door is opened and we head inside&, I'm greeted by 
a music playing at a nice tempo&.

The bar that served as a waiting room was larger than one 
would imagine just from seeing the size of the shop&.

In the dim lighting&, several people sit sunken into a 
sofa&, reading a magazine or talking in whispers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 105, -15, Middle, "cg/bg/m/bg105011_1_刺青スタジオロビー_m.jpg");
	CreateTextureSP("絵背景弐", 100, -509, Middle, "cg/bg/m/bg105011_1_刺青スタジオロビー_m.jpg");

	Move("絵背景", 500, @15, @0, null, false);
	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Reception on the left side&,<?>
{	Wait(500);Move("絵背景弐", 500, @-15, @0, null, false);
	FadeDelete("絵背景", 500, null, true);
	Wait(300);}
 bar counter on the right&, and  the door leads to the back room where tattoos were done&.

{	FadeDelete("絵背景弐", 500, null, true);
	Wait(300);}
Mizuki talks with a young part-timer at the reception 
desk&. In the meantime&, I look around at the state of the 
shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000150a01">
"Not as many customers today?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
When I casually ask this to Mizuki after he finishes 
talking with the part timer&, his expression turns bitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000160b06">
"That's right&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000170a01">
"What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000180b06">
"No&, you know&. We talked about it yesterday&, remember? The
 mysterious disappearances&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000190a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000200b06">
"I think the decrease in customers is also due to that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000210a01">
"What? Like everyone's scared and stopped going outside?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000220b06">
"I think the influence isn't quite that strong yet&, but&.&.&.&. Overall&, it's growing&, or at least it feels like it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000230a01">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000240b06">
"After that&, we got some information again&. But I can't
 tell the truth from the lies at all&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
With a serious expression Mizuki urges me to lend an ear&.
I bring my face closer to him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/m/bg105011_1_刺青スタジオロビー_m.jpg");
	CreateColorSP("絵色黒", 500, "BLACK");

	St("C",740, @0,@0,"buミズキ_通常_angry");
	FadeSt("C",200,true);

	Fade("絵色黒", 0, 300, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000250b06">
"They're saying it really was Morphine abducting the
 teams&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000260a01">
"That's not possible&. Morphine is&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000270b06">
"There are apparently some guys who have seen Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000280a01">
"Isn't that some random remark of some idiot who wants
 attention? You believe that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000290b06">
"That's why I said I don't know if it's true or not&. I only heard it from some people&."

{
	St("C",740, @0,@0,"buミズキ_通常_sad");
	FadeSt("C",200,true);
}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000300b06">
"Anyway&, now all Rib teams are growing uneasy with the fear of a surprise attack&. But&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
Mizuki then raises the edges of his mouth defiantly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000310b06">
"Morphine or whatever it is&, it doesn't concern our team&.
 They won't be a threat&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000320a01">
"Right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	Delete("絵色黒");
	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
While I return the smile&, I remember a faint anxiety&.

I feel like Mizuki's been putting a little too much effort 
into Rib recently&.

I hope he doesn't collapse or anything&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_laugh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000330b06">
"Oh right&, let's drink something&. Let's go over there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵画像", 2000, -53, Middle, "cg/bg/l/bg105011_1_刺青スタジオロビー_l.jpg");
	CreateColorEX("絵色黒", 500, "000000");

	Move("絵マスク中/絵画像", 0, @0, @-50, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
When I walk towards the bar with Mizuki&, a tattoo design 
displayed by the reception desk catches my eyes&.<k><?>

{	FadeDelete("絵板写", 100, null, false);
	Move("絵マスク中/絵画像", 500, @0, @-50, Dxl1, false);
	Fade("絵色黒", 200, 300, null, false);
	OpenTateMask("絵マスク中",200, 800,Dxl3,true);//所要時間、水平倍率、テンポ、待ち
	Wait(500);
	}
 It's care-fully put in a frame&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000340a01">
"Was this here before?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミズキ_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000350b06">
"Oh&, that&. No&, I got that from a tattooist I respect&. Cool&, isn't it?"

{
	Fw("fwミズキ_通常_normal");
}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000360b06">
"He's a famous person said to have God's skills but he
 doesn't have a shop&. If he doesn't personally know you&,
 he won't tattoo you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000370a01">
"So he refuses strangers?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミズキ_通常_laugh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000380b06">
"That's right&. A little while ago he came to this shop by
 chance&, and I got it then&. He really was a person with an
 unusual aura after all&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵色黒", 200, null, false);
	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Mizuki seems to be extremely happy&.
He really likes that picture&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000390a01">
"If he's that amazing&, I'd like to see him once&, too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000400b06">
"But I thought you didn't want a tattoo&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cheese2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000410a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000420b06">
"In that case&, no way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000430a01">
"Huuh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_laugh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000440b06">
"If you want to know why&, it'd cost you 1 million yen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000450a01">
"Expensive! That's some serious overcharging&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/2000460b06">
"Ahaha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※コイル_着信音

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);

	//★コイル着信
	CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

//	CreateSE("SE01","se物体_コイル_着信蒼葉");
//	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
As we joke and laugh&, the ringtone of my Coil sounds&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000470a01">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//★『徒歩コイル確認』
	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	CoilPhone_IncallSet(368,30,"dm0320","Delivery Works",false);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();

	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0126]
It was a call from Delivery Works&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイル_操作音（通話モード）

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"不明");

//	SetVolumeEX("SE*", 0, 0, null);

//	CreateSE("SE01","se物体_コイル_操作音01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000480a01">
"Hello?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@10,"stヨシエ_通常_worry");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm03/2000490b15">
"Ah&, thank goodness it went through! Aoba-chan!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000500a01">
"Yes?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm03/2000510b15">
"It's me&, me! Yoshie!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000520a01">
"What's the matter?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
//※加工：コイル通話
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm03/2000530b15">
"Oh my&, it's serious! Very serious! Please listen to me and don't panic&, okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000540a01">
"&.&.&.Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//※加工：コイル通話
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm03/2000550b15">
"Tae-san has&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/2000560a01">
"-! Granny!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

//※次ファイル["dm0330.nss"]

}
