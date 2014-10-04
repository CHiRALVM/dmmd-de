//<continuation number="260">
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


scene dm2170.nss_MAIN
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
	#ev217蒼葉、ノイズを手当てする=true;

	#bg302051_5_グリッターエントランス壁側=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2180.nss";

}


scene dm2170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm004",0,450,true);

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000010a01">
"Haah&.&.&."

{
	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000020a03">
"&.&.&.&.&."

I enter the building&, relieved&, but Noiz scowls silently&.

{
	Fw("fw蒼葉_通常_cranky");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000030a01">
"What now?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000040a03">
"That was totally unnecessary&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000050a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000060a03">
"I could've won easily if you didn't go and do that&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000070a01">
"&.&.&.Hey&, you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Now's not the time to start acting like a little brat&.
Accompanied by my surprise&, I feel another surge of anger 
welling up&.

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000080a01">
"Excuse me&, but getting involved in stupid shit like that
 is just gonna bite you in the ass in the future&. Don't you at least know that much?"

{
	Fw("fw蒼葉_通常_hard");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000090a01">
"Those guys are something completely different&. Once you're their target&, they'll stick to you like slimy natto&.
 That's just trouble for us&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000100a01">
"Even if you didn't know that&, what'll you do if this
 escalates? It'll just be harder for us to move around&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000110a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Noiz faces sideways&, looking grumpy&.

Does his silence mean he understood what I meant for once? 

{
	SetVolumeEX("@dm*", 2000, 0, null);
}

I think I can see Noiz a little differently now&, but then 
I notice something&.&.&.

His hand is dyed red&.

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000120a01">
"Are you injured again? You're bleeding!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The hand that I reach out is once again brushed away&.

{
	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);
	SoundPlay("@dm005",0,450,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000130a03">
"Don't touch me&."

Noiz gazes at me coldly&.

This guy&.&.&.

He was like this when he burned himself with the coffee 
too&, but why does he hate it so much?

He's usually indifferent&, but he reacts excessively to 
touching&. Is he obsessed with cleanliness?

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000140a01">
"&.&.&.Hey&, please&. Let's at least stop the bleeding&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000150a03">
"It's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000160a01">
"It'll bother me if it gets worse&. Show me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStartSet("SE01",500,0,1000,null,false);

	St("C",720, @0,@0,"buノイズ_通常_angry3");
	St("C",720, @0,@0,"buノイズ_通常_shock");
	FadeSt("C",180,true);
	FadeFadeStPro("C", 1300, 180, 1000, 180);

	CreateProcessEX("プロセス", "LProc_dm2170_01Act");
	Request("プロセス", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000170a03">
"I said it's fi- &.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	if($LProc_dm2170_01Act==true){
	Request("プロセス", Stop);
	$LProc_dm2170_01Act=true;
	}else{
	}
	SetVolumeEX("SE01", 300, 0, null);
	Delete("プロセス");

{	Fw("fw蒼葉_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050c]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000180a01">
"Show me&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000190a03">
"Let go&."

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000200a01">
"No way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,500,0,1000,null,false);
	Wait(500);
	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreateTextureEX("絵背景90", 90, -757, -576, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景90", 500, -757, -534, Dxl1, false);
	Fade("絵背景90", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I grab Noiz's arm with no questions asked&, ignoring his 
refusals as I draw it closer to me&.

If I don't do this a little forcibly&, he's going to leave 
the injury untreated again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000210a01">
"If you really hate it&, go ahead and hit me&."

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/7000220a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Noiz seems quite angry&, but he looks away and actually 
behaves himself&.

His injury is worse than I thought&, and the back of his 
hand is completely torn&.

He probably got sliced by a knife or something when he was 
fighting the yakuza members&.

That reminds me&.&.&. what about the injury from yesterday?
I casually look at his fingertips too&.

A red line runs from his middle finger to his palm&, but 
other than that it doesn't look too bad&.

That's good&.&.&.

It's my fault he was injured&, so just knowing the 
situation makes me relieved&.

&.&.&.Oh&.

I don't have anything I could use to treat the injury&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000230a01">
"Don't run away&. Stay put&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵背景91", 91, Center, Middle, "cg/bg/bg302051_5_グリッターエントランス壁側.jpg");
	Fade("絵背景91", 500, 1000, null, true);

	CreateSE("SE01","se物体_ドア障子_扉開く強く01");
	MusicStart("SE01",0,600,0,1100,null,false);

	Wait(500);

	CreateSE("SE02","se物体_物_漁る01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I released Noiz's hand after giving him a warning and 
randomly open drawer shelves&.

{
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE01","se物体_ドア障子_扉開く強く01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
&.&.&.Ah&.

Inside one of them is something that looks like a 
first-aid kit&.

It turned out to be a small plastic pack containing 
bandages&, sterilization sheets&, and different sized 
adhesive bandaids and such&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景91", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
This is enough&.
I take the first-aid kit and return to Noiz immediately&.

{
	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,500,0,1200,null,false);
}
When I take his arm&, Noiz makes an openly disgusted face&.

But I ignore it and look at the state of his injury&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ14");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev217蒼葉、ノイズを手当てする.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000240a01">
"Aah&, looks painful&.&.&."

I wipe the blood that hadn't dried with a tissue&. I feel a bit of pain just from looking at it&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000250a01">
"This might sting a little&. Try to bear with it&."

I gently wipe the wound with a sterilization sheet&.
It'll still sting even if I do it carefully&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ101", 101, -92, 0, "cg/ev/l/ev217蒼葉、ノイズを手当てする_l.jpg");
	Move("絵ＥＶ101", 1000, -92, -78, Dxl1, false);
	Fade("絵ＥＶ101", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Thinking&, I look at Noiz's face&.

There are no signs that he's going through pain&.
His face looks calm&.

&.&.&.Is he not in pain?

Or is he just enduring it out of pride?

If that's the case&, it kinda looks the opposite&.&.&.

Feeling dubious&, I put the largest bandaid I could find 
on the wound&.

{
	CreateSE("SE02","se人体_動作_衣擦れ16");
	MusicStart("SE02",0,700,0,1200,null,false);

	Move("絵ＥＶ101", 500, @0, @-80, Dxl1, false);
	FadeDelete("絵ＥＶ101", 500, null, true);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/7000260a01">
"There&, finished&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1500,null,false);

	FadeDelete("絵ＥＶ100", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Noiz looks at me like an angry child glaring at his parent and withdraws his hand&.

I'm relieved that we were able to avoid a situation where  his injury went untreated&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//※次ファイル["dm2180.nss"]

}
