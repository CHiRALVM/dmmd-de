//<continuation number="1850">
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


scene dm4530h.nss_MAIN
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
	$GameName = "dm4531h.nss";

}


scene dm4530h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	Delete("上背景");

	if($RECRIB_PLAY==1){//回想時
		FadeDelete("絵色黒", 1000, null, true);
	}else{
	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);
	}

	SetVolumeEX("@dm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We somehow make it down the narrow path and finally hobble into Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,700,0,800,null,false);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When we go inside&, I gently lower Clear down near a wall&.

{
	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,800,null,false);
}
I take off his torn coat&, and lean his body against the 
wall&.

I want to take him upstairs for him to rest on a real bed&, but it'd be impossible to get him up the stairs&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000010a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Clear frowns&, taking shivering&, ragged breaths&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000020a01">
"Does it hurt?"

{
	Fw("fwクリア_正面崩壊裸_smile");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000030a04">
"&.&.&.I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
He smiles even though he can barely breathe&, and my chest 
hurts&.

What do I do?

I could help him if he were like an Allmate&, but I can't 
possibly work with a machine as complex as Clear&.

&.&.&.But I can't let myself say that either&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	SetVolumeEX("SE*", 2000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I decide to leave to look for tools to work with&, but 
Clear grabs onto my clothes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000050a04">
"Please wait&. &.&.&.Don't go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
He begs in a low voice&, barely able to move&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000060a04">
"Please stay here with me&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000070a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵背景100", 100, 0, -574, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The sight of him is so unbearably sad&, and I lean over him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000080a01">
"But if we just leave it alone&, it'll&.&.&."

{
	Fw("fwクリア_正面崩壊裸_normal");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000090a04">
"It's fine&. It's already too late&."

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000100a01">
"! What are you saying&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000110a04">
"I would know my own body the best&. When I destroyed the
 key lock&, I also broke my main brain stem circut that's
 impossible to fix&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000120a04">
"So it's already&.&.&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000130a01">
"I can't believe you'd do something so reckless&.&.&.!"

{
	Fw("fwクリア_正面崩壊裸_think");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000140a04">
"But if I didn't do it&, I wouldn't have been able to save
 you&. I don't believe I did something wrong&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000150a01">
"&.&.&.! Then what can I do to save you now&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000160a04">
"Rather than that&, I have something I'd like to ask for&.&.&.
 May I?" 

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000170a01">
"Helping you comes first!"

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000180a04">
"The possibility of saving me is extremely low&. In the time I have left&, could you grant my wish?"

{
	Fw("fwクリア_正面崩壊裸_think");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000190a04">
"I never had any intention to tell you that it'd have to
 come to this&. But right now I have a wish I would like you
 to fulfill&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000200a04">
"I believe a malfunction occured&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000210a04">
"I should have never gone against my programming&, but&.&.&.
 would you be willing to listen to my first and final
 selfish request?"

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000220a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I try to hold back the tears&, and somehow build up the 
strength in my stomach to be able to&.

My eyes and throat feel like they're burning&. No matter 
what I do&, I can't stop my lips from trembling&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000230a01">
"&.&.&.That's no fair&.&.&. You can't say it like that&, and&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000240a04">
"I'm sorry if it's troublesome&. Could you listen to my
 wish?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Clear smiles sadly and touches my cheek with his cold&, 
exposed mechanical hand&.

I feel like if I open my mouth I'll burst into tears&, so I nod my head silently and Clear sighs in relief&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000250a04">
"Thank goodness&. Then&, I'll go ahead and tell you&."

{
	Fw("fwクリア_正面崩壊裸_think");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000260a04">
"&.&.&.&.&."

{
	Fw("fwクリア_正面崩壊裸_normal");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000270a04">
"Please let me touch you&, Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Clear's fingers gently caress my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000280a04">
"After all&, we were man-made&. We can't become humans&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000290a04">
"But I at least want to be like a human&, like Aoba-san&.&.&.
 So I want to touch you&. I want to tell you how I feel&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000300a04">
"If you could grant that request&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Clear's sincere expression catches my eye&. 

I somehow understand what he means when he says he wants 
to touch me&.

Right now&.&.&. I'll do anything to help&.

And even I want to touch Clear&.

Clear protected me out of his own will and is only in this pitiful state because of that&.

I want to console and comfort Clear&.&.&. in whatever way I 
can&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I want to make Clear at ease and happy&.

I want to be kind to Clear because he's done so much for 
me&.

I would do anything for him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000310a01">
"&.&.&.That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4531h.nss"]

}