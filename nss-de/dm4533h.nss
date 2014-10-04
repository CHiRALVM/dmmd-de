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


scene dm4533h.nss_MAIN
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
	$GameName = "dm4534h.nss";

}


scene dm4533h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景100", 100, 0, -574, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	FadeDelete("上背景", 0, null, true);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0282]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000940a04">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0283]
Clear looks at me as if he's trying to guess what I'm 
going to do next&.

{
	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	Move("絵背景100", 800, @0, @50, Dxl1, true);
}
I take off the rest of my clothes and straddle Clear&, now 
fully naked&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000950a04">
"&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
Clear's stare is fixed on my naked body&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
His staring is extremely embarrassing&, but I take Clear's 
machine hand and place it on my stomach&. 

My skin jumps to the cold hard touch of his fingers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000960a01">
"Don't you want to touch everything? &.&.&.Then do it&."

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000970a04">
"Aoba-san&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000980a01">
"And make sure to remember&. Things about me&, and about what my body is like&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
And I never want you to forget&.

Never forget&, ever&. 

Even&.&.&. even if this is the end&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000990a04">
"&.&.Yes&. Aoba-san&, I love you&. From the bottom of my heart&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]
Clear smiles&, and gently strokes my skin from my chest to 
my stomach&.

It feels pleasant&, and I lick my fingers&, and then reach 
to my ass&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm014",0,450,true);

	Fw("fw蒼葉_通常_shy3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0303]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001000a01">
"Nn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0304]
It's my first time doing something like this&, but I have no
intention of stopping&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
And I want to give everything to Clear&.&.&. I'm doing this 
because I want him to be inside of me&.

I contract against my wet finger&, and go in more&, little 
by little&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_shy4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001010a01">
"Uhn&.&.&.Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0312]
I didn't expect my fingers to be so thick&, it's pretty 
tight&.&.&.

And the feeling of something being inside of me causes me 
to tense up even more&.

I try to feel around with my finger&.

Having my finger move around inside of me&.&.&. feels really 
strange&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_shy4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0313]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001020a01">
"Ah&.&.&.Hah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
I feel around my ass with my finger&, and it starts to feel even better&.

When I look back to Clear&, I see him rubbing both of our 
dicks together&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shy2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001030a01">
"Clear&.&.&."

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001040a04">
"Are you all right? It looks like you're in pain&."

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001050a01">
"I'm fine&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0322]
Thanks to what I've been doing&, my ass loosens and it 
feels less unpleasant&. I'm finally able to move around 
smoothly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shy4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0323]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001060a01">
"Ahhhh&.&.&.&.Ah!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,600,0,1000,null,false);

	CreateTextureEX("絵背景110", 110, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");
	Move("絵背景100", 500, @0, @50, Dxl1, false);
	Fade("絵背景110", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
Soon something will go even farther than just a finger&, 
and Clear raises his upper body&.

He grasps at me with his one hand&, and moves his other&, 
machine hand&, to my ass&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001070a01">
"Clear&, hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0332]
His metal fingers follow up to mine that are expanding my 
ass&, and go inside&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0333]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001080a01">
"Clear&.&.&. Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	Move("絵背景100", 500, @0, @-50, Dxl1, false);
	FadeDelete("絵背景110", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0334]
When I take out my fingers in a panic&, Clear pushes his in&.

With two fingers deep inside&, the feeling causes me to 
hold my breath&.

But Clear is still jacking me off&, so it doesn't hurt too 
much&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001090a01">
"Ah&, haah&.&.&.&.Un&, ah&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001100a04">
"I'm sorry&, I wanted to touch you here&, too&. Are you all
 right?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001110a01">
"Ngh&.&.&.!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001120a04">
"It's so hot&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001130a01">
"&.&.&.Idiot&. It's fine&, so&.&.&. take it out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
I forcibly take both Clear and my fingers out&.

It tingles inside&, fairly loose&.&.&.

I return to focusing on straddling Clear&, and slowly 
lower myself onto his cock&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4534h.nss"]

}
