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


scene dm0630.nss_MAIN
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
	#bg402021_1_立ち入り禁止区域工場外観=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0630sl.nss";
	}else {		$GameName = "dm0632.nss";
	}

}


scene dm0630.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
//	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg402011_1_立ち入り禁止区域通り");
	FadeBG(0,true);

	SoundPlay("@dm007a",0,450,true);

	FadeDelete("上背景", 1000, null, true);

//	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The North District's Keisen was like a ghost town&, 
completely in ruins&.

More and more large warehouses were being built&, but they 
were all labeled "No Tresspassing"&, so this area became a 
place to illegally dump trash&.

As if to deck out the empty buildings&, people would throw 
their old funiture&, and anything else really&, into them&.

Of course nobody was there&, and it gave off an eerie 
atmosphere&.

While being very careful&, we follow Clear's lead&. 

There are mountains of trash here&, and it leads me to 
remember something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000010a01">
"It&.&.&. looks like the place from the game!"

{
//	St("C",740, @0,@0,"st紅雀_通常_worry3");
//	FadeSt("C",200,true);
	Fw("fw紅雀_通常_worry3");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/3000020a02">
"Game?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000030a01">
"That game that I got sent!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000040a01">
"But it wasn't a game&, just a demo movie&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000050a01">
"Some guys took out Granny and kidnapped her&. And they took her to where there were trash heaps!"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/3000060a04">
"This place certainly is a dump&."

{
//	St("C",740, @0,@0,"st紅雀_通常_normal2");
//	FadeSt("C",200,true);
	Fw("fw紅雀_通常_normal2");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/3000070a02">
"It's just a coincidence&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000080a01">
"I thought so too&, but it's still strange&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/3000090a03">
"Isn't there a treatment center around here?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//コイル演出

//★徒歩：食べ残し
	CoilNoizeSet();

//★徒歩：食べ残し
	CoilNoizeFade();


	CoilNoizeDO01();
	CoilNoizeDO02();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Noiz pulls up a map on his Coil and shows it to everyone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilNoizeDO04();

	Wait(1000);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/3000100a04">
"So there is&."

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/3000110a03">
"It's the tallest standing building in this area&."

{	Fw("fw紅雀_通常_cool");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/3000120a02">
"That sounds very suspicious&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilNoizeDelete();

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/3000130a04">
"I'll go there immediately&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Clear quickly walks in the building's direction&.

He did say that he used to take walks here&, but he's a 
weird one&, isn't he&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg402021_1_立ち入り禁止区域工場外観");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1000, 0, null);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	CreateSE("SE11","se環境_自然_風と木々01L");
	MusicStart("SE11",2000,250,0,700,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
We walk along a trash ridden path and see a giant building&.This must be it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 5000, 0, null);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,900,null,false);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/3000140a04">
"&.&.&.Please wait&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Clear puts his arm out to stop us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000150a01">
"What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/3000160a04">
"I can hear it&. Right now&. In there&."

{	Fw("fw紅雀_通常_normal2");}

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/3000170a02">
"Hear it&.&.&. I don't hear anything&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I listen carefully&, but all I can hear is the rustling of 
trash&.

But it doesn't seem like Clear is messing around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/3000180a04">
"I hear them&. They're in there&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/3000190a01">
"&.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Making sure we breathe quietly&, we start to advance 
towards the plant&.

{
	CreateTextureEX("絵背景100", 100, -515, -570, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");
	Move("絵背景100", 500, -515, -485, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);
}
Clinging to the walls&, I can hear the faint sound of 
people inside&.

It's just like Clear said&. People are in here&.

Even more than we thought&.&.&.

I touch the bag under my arm&. 
Ren is in Sleep Mode&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0630sl.nss"]※他ＥＤクリア後出現
//※次ファイル["dm0632.nss"]

}
