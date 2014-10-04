//<continuation number="180">
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


scene dm3280.nss_MAIN
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
	$GameName = "dm3290.nss";

}


scene dm3280.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	St("C",740, @0,@0,"fuミンク_通常正面_serious");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000010a01">
"I&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000020a05">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se人体_動作_ベルト外す01");
	MusicStart("SE02",0,600,0,1000,null,false);
	SetVolumeEX("SE02", 1500, 0, null);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,10,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
From violently undoing my pants&, my underwear comes right 
off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000030a01">
"I don't want to use this power&.&.&. But&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000040a01">
"I want to know&.&.&. exactly what I am&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000050a05">
"Then throw everything away&.&.&. Anything that conceals your
 true self&."

{
	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000060a05">
"If not&, you'll never get what you want in your hands&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
His cold words sound in my ear like a spell&.

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ11");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 2000, 0, null);

	CreateTextureEX("絵背景200", 200, -1017, -600, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景200", 500, -1017, -571, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);
}
Mink's hand goes to my ass and stretches it apart&, and his stiff cock pushes into me&.

Without any preparation&.&.&. he slams into me with all his 
might&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ09");
	MusicStart("SE02",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000070a01">
"Ah&, &.&.&.Hi&, &.&.&.Agh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
Like the time when I was high as hell&, a weird sensation 
runs through my body&.

But&.&.&. it's different this time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The clear feeling of him prying into my dry inner walls 
feels like the pain of fresh cuts from a knife&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ22");
	MusicStart("SE02",0,700,0,800,null,false);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000080a01">
"Ugh&, &.&.&.Agh&, &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
As if begging for someone to save me&, I scratch the wall&. 
Moans and groans escape my throat&.

I push my face into the back of my hand and bare my teeth&, trying to distract myself from the pain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ09");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000090a05">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Mink's cock tears me apart&, and his rhythm grows faster&.

Painful&. Suffocating&.
It hurts so badly&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000100a05">
"Don't run away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
A low mumur buzzes in my ear and burns into my hazy 
consciousness&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000110a05">
"The one giving you this pain is me&. Don't hide in front
 of me&. Expose everything&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Mink pounds into me as if to engrave those words in my 
mind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ22");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,30,null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000120a01">
"Ahh&, &.&.&.Ugh&, &.&.&.Ahh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000130a05">
"Bring out that thing that's sleeping within that pain&.
 Remember this pain and pull out what's inside of it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ21");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 50, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000140a01">
"Kuh&, unh&.&.&.Fwah&, hi&.&.&.! Ahhhh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I scream out in pain as he pulls my hair&.
My entire body is in torment&.

It's the agony of being violated by the same man again&.

But&, in the corner of my fading consciousness&.&.&.

&.&.&.I get the impression that Mink was saying I 
have another conscious inside of me&.

Not sure why&, though&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000150a05">
"I'll engrave the sensation into every inch of your body&.
 Remember me with every part of your body&. So every time
 you see me&, you'll remember&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
My internal organs feel as if they're being tortured&, and 
his words ring repeatedly in my ears&.

Mink's voice is like claws piercing my brain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ09");
	MusicStart("SE01",0,800,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,80,null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000160a01">
"Ngh&, ah&.&.&. Kuh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
My mind goes into an intense haze&, and Mink pushes into me farther than ever before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/8000170a05">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5001, "BLACK");
	DrawTransition("絵黒幕", 2000, 0, 400, 100, Dxl1, "cg/data/slide_05_00_0.png", false);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景201", 201, -1017, -571, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	SetShade("絵背景201", HEAVY);
	Delete("絵背景200");

	FadeDelete("絵板写", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
He stops moving&, and soon his voice has merely turned into raspy breaths&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	DrawTransition("絵黒幕", 2000, 400, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
From there I lose almost all awareness&, and I can't exactly
remember what happened&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,500,0,1000,null,false);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/8000180a01">
"&.&.&.Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
I feel Mink take his dick out&, and the weight on my back  
disappears&.

I somehow stop myself from tumbling to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

	CreateSE("SE02","se人体_足音_歩く06");
	MusicStart("SE02",0,700,0,600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0067]
I feel like I'm floating&.&.&.

I can feel the vibrations go through me&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(3000);

	SetVolumeEX("SE02", 1000, 0, null);
	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,600,0,800,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068]
Suddenly&, I feel a soft touch&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(2000);

//※次ファイル["dm3290.nss"]

}
